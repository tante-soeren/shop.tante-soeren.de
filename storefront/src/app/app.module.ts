import { NgModule } from '@angular/core';
import { BrowserModule, BrowserTransferStateModule, makeStateKey, TransferState } from '@angular/platform-browser';
import { RouterModule } from '@angular/router';
import { ServiceWorkerModule } from '@angular/service-worker';

import { environment } from '../environments/environment';

import { AppComponent } from './app.component';
import { routes } from './app.routes';
import { HomePageComponent } from './core/components/home-page/home-page.component';
import { CoreModule } from './core/core.module';
import { SharedModule } from './shared/shared.module';

import { NgcCookieConsentModule } from 'ngx-cookieconsent';

import { registerLocaleData } from '@angular/common';
import localeEn from '@angular/common/locales/en';
import localeEnExtra from '@angular/common/locales/extra/en';
import localeDe from '@angular/common/locales/de';
import localeDeExtra from '@angular/common/locales/extra/de';

registerLocaleData(localeEn, 'en-GB', localeEnExtra);
registerLocaleData(localeDe, 'de-DE', localeDeExtra);

const cookieConfig = {
  cookie: {
    domain: 'localhost' // or 'your.domain.com' // it is mandatory to set a domain, for cookies to work properly (see https://goo.gl/S2Hy2A)
  },
  palette: {
    popup: {
      background: '#000000',
      text: '#ffffff',
      link: '#f8f9fa',
    },
    button: {
      background: '#f1d600',
      text: '#000000',
      border: 'transparent',
    }
  },
  theme: 'edgeless' as const,
  type: 'info' as const,
  position: 'bottom' as const,
  content: {
    message: 'This website uses cookies to ensure you get the best experience on our website.',
    dismiss: 'Got it!',
    deny: 'Refuse cookies',
    link: 'Learn more',
    href: '/policy',
    policy: 'Cookie Policy'
  }
};

const STATE_KEY = makeStateKey<any>('apollo.state');

@NgModule({
    declarations: [
        AppComponent,
        HomePageComponent,
    ],
    imports: [
        BrowserModule.withServerTransition({appId: 'serverApp'}),
        BrowserTransferStateModule,
        RouterModule.forRoot(routes, {scrollPositionRestoration: 'enabled', initialNavigation: 'enabled'}),
        CoreModule,
        SharedModule,
        ServiceWorkerModule.register('/ngsw-worker.js', {enabled: environment.production, registrationStrategy: 'registerWithDelay:5000'}),
        NgcCookieConsentModule.forRoot(cookieConfig),
    ],
    bootstrap: [AppComponent],
})
export class AppModule {

    constructor(
        private coreModule: CoreModule,
        private readonly transferState: TransferState,
    ) {
        const isBrowser = this.transferState.hasKey<any>(STATE_KEY);

        if (isBrowser) {
            this.onBrowser();
        } else {
            this.onServer();
        }
    }

    onServer() {
        this.transferState.onSerialize(STATE_KEY, () => {
            const state = this.coreModule.extractState();
            return state;
        });
    }

    onBrowser() {
        const state = this.transferState.get<any>(STATE_KEY, null);
        this.coreModule.restoreState(state);
    }
}
