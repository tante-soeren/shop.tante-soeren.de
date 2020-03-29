import {
    examplePaymentHandler,
    DefaultSearchPlugin,
    VendureConfig,
} from '@vendure/core';
import { defaultEmailHandlers, EmailPlugin} from '@vendure/email-plugin';
import { AssetServerPlugin } from '@vendure/asset-server-plugin';
import { AdminUiPlugin } from '@vendure/admin-ui-plugin';
import path from 'path';

import { BraintreePlugin } from './plugins/braintree/braintree-plugin';

let commonEmailProperties = {
    handlers: defaultEmailHandlers,
    templatePath: path.join(__dirname, '../static/email/templates'),
    globalTemplateVars: {
        // The following variables will change depending on your storefront implementation
        fromAddress: process.env.SMTP_FROM || '"example" <noreply@example.com>',
        verifyEmailAddressUrl: `${process.env.SMTP_ENDPOINT || 'http://localhost:8080'}/verify`,
        passwordResetUrl: `${process.env.SMTP_ENDPOINT || 'http://localhost:8080'}/password-reset`,
        changeEmailAddressUrl: `${process.env.SMTP_ENDPOINT || 'http://localhost:8080'}/verify-email-address-change`
    },
}

console.log(process.env)
let emailPlugin
if (process.env.SMTP_DEV_MODE) {
    emailPlugin = EmailPlugin.init({
        ...commonEmailProperties,
        devMode: true,
        mailboxPort: 3003,
        outputPath: path.join(__dirname, '../static/email/test-emails')
    })
} else {
    emailPlugin = EmailPlugin.init({
        ...commonEmailProperties,
        transport: {
            type: 'smtp' as const,
            host: `${process.env.SMTP_HOST}`,
            port: parseInt(process.env.SMTP_PORT || '587'),
            auth: {
                user: `${process.env.SMTP_USERNAME}`,
                pass: `${process.env.SMTP_PASSWORD}`,
            },
        }
    })
}

export const config: VendureConfig = {
    authOptions: {
        sessionSecret: '1onp958g5h',
    },
    port: 3000,
    adminApiPath: 'admin-api',
    shopApiPath: 'shop-api',
    dbConnectionOptions: {
        type: 'mysql',
        synchronize: true, // turn this off for production
        logging: false,
        database: process.env.MYSQL_DATABASE || 'vendure',
        host: process.env.MYSQL_HOST || '127.0.0.1',
        port: 3306,
        username: process.env.MYSQL_USERNAME || 'vendure',
        password: process.env.MYSQL_PASSWORD || 'secretsuper',
        migrations: [path.join(__dirname, '../migrations/*.ts')],
    },
    paymentOptions: {
        paymentMethodHandlers: [examplePaymentHandler],
    },
    customFields: {},
    plugins: [
        AssetServerPlugin.init({
            route: 'assets',
            assetUploadDir: path.join(__dirname, '../static/assets'),
            port: 3001,
        }),
        DefaultSearchPlugin,
        emailPlugin,
        AdminUiPlugin.init({
            hostname: process.env.HOSTNAME,
            port: 3002,
        }),
        BraintreePlugin
    ],
};
