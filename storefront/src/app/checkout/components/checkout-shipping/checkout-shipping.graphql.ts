import gql from 'graphql-tag';

import { CART_FRAGMENT, ORDER_ADDRESS_FRAGMENT } from '../../../common/graphql/fragments.graphql';

export const GET_SHIPPING_ADDRESS = gql`
    query GetShippingAddress {
        activeOrder {
            id
            shippingAddress {
                ...OrderAddress
            }
        }
    }
    ${ORDER_ADDRESS_FRAGMENT}
`;

export const SET_SHIPPING_ADDRESS = gql`
    mutation SetShippingAddress($input: CreateAddressInput!) {
        setOrderShippingAddress(input: $input) {
            ...Cart
            shippingAddress {
                ...OrderAddress
            }
        }
    }
    ${CART_FRAGMENT}
    ${ORDER_ADDRESS_FRAGMENT}
`;

export const GET_ELIGIBLE_SHIPPING_METHODS = gql`
    query GetEligibleShippingMethods {
        eligibleShippingMethods {
            id
            description
            price
            metadata
        }
    }
`;

export const SET_SHIPPING_METHOD = gql`
    mutation SetShippingMethod($id: ID!) {
        setOrderShippingMethod(shippingMethodId: $id) {
            ...Cart
        }
    }
    ${CART_FRAGMENT}
`;

export const SET_CUSTOMER_FOR_ORDER = gql`
    mutation SetCustomerForOrder($input: CreateCustomerInput!) {
        setCustomerForOrder(input: $input) {
            id
            customer {
                id
                emailAddress
                firstName
                lastName
            }
        }
    }
`;

export const TRANSITION_TO_ARRANGING_PAYMENT = gql`
    mutation TransitionToArrangingPayment {
        transitionOrderToState(state: "ArrangingPayment") {
            ...Cart
        }
    }
    ${CART_FRAGMENT}
`;
