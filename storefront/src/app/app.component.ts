import { Component, OnInit } from '@angular/core';
import { NavigationEnd, Router, RouterEvent } from '@angular/router';
import { Observable } from 'rxjs';
import { filter, map } from 'rxjs/operators';
import { StateService } from './core/providers/state/state.service';

import { NgcCookieConsentService, NgcInitializeEvent, NgcStatusChangeEvent, NgcNoCookieLawEvent } from 'ngx-cookieconsent';
import { Subscription } from 'rxjs';

@Component({
    selector: 'sf-root',
    templateUrl: './app.component.html',
    styleUrls: ['./app.component.scss'],
})
export class AppComponent implements OnInit {
    cartDrawerVisible$: Observable<boolean>;
    mobileNavVisible$: Observable<boolean>;
    isHomePage$: Observable<boolean>;

    //keep refs to subscriptions to be able to unsubscribe later
    private popupOpenSubscription: Subscription;
    private popupCloseSubscription: Subscription;
    private initializeSubscription: Subscription;
    private statusChangeSubscription: Subscription;
    private revokeChoiceSubscription: Subscription;
    private noCookieLawSubscription: Subscription;

    constructor(private ccService: NgcCookieConsentService,
                private router: Router,
                private stateService: StateService) {
    }

    ngOnInit(): void {
        this.cartDrawerVisible$ = this.stateService.select(state => state.cartDrawerOpen);
        this.mobileNavVisible$ = this.stateService.select(state => state.mobileNavMenuIsOpen);
        this.isHomePage$ = this.router.events.pipe(
            filter<any>(event => event instanceof RouterEvent),
            map((event: RouterEvent) => event.url === '/'),
        );

        // subscribe to cookieconsent observables to react to main events
        this.popupOpenSubscription = this.ccService.popupOpen$.subscribe(
        () => {
            // you can use this.ccService.getConfig() to do stuff...
            console.log('popupOpen');
        });

        this.popupCloseSubscription = this.ccService.popupClose$.subscribe(
        () => {
            // you can use this.ccService.getConfig() to do stuff...
            console.log('popuClose');
        });

        this.initializeSubscription = this.ccService.initialize$.subscribe(
        (event: NgcInitializeEvent) => {
            // you can use this.ccService.getConfig() to do stuff...
            console.log(`initialize: ${JSON.stringify(event)}`);
        });

        this.statusChangeSubscription = this.ccService.statusChange$.subscribe(
        (event: NgcStatusChangeEvent) => {
            // you can use this.ccService.getConfig() to do stuff...
            console.log(`statusChange: ${JSON.stringify(event)}`);
        });

        this.revokeChoiceSubscription = this.ccService.revokeChoice$.subscribe(
        () => {
            // you can use this.ccService.getConfig() to do stuff...
            console.log(`revokeChoice`);
        });

        this.noCookieLawSubscription = this.ccService.noCookieLaw$.subscribe(
        (event: NgcNoCookieLawEvent) => {
            // you can use this.ccService.getConfig() to do stuff...
            console.log(`noCookieLaw: ${JSON.stringify(event)}`);
        });
    }

    openCartDrawer() {
        this.stateService.setState('cartDrawerOpen', true);
    }

    closeCartDrawer() {
        this.stateService.setState('cartDrawerOpen', false);
    }

    ngOnDestroy() {
        // unsubscribe to cookieconsent observables to prevent memory leaks
        this.popupOpenSubscription.unsubscribe();
        this.popupCloseSubscription.unsubscribe();
        this.initializeSubscription.unsubscribe();
        this.statusChangeSubscription.unsubscribe();
        this.revokeChoiceSubscription.unsubscribe();
        this.noCookieLawSubscription.unsubscribe();
    }
}
