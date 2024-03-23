*** Settings ***
# SIT

# UAT

# PROD
Resource    ${CURDIR}/../page_objects/locators/component_locators.resource
Resource    ${CURDIR}/../page_objects/locators/login_locators.resource
Resource    ${CURDIR}/../page_objects/locators/product_list_page_locators.resource
Resource    ${CURDIR}/../page_objects/locators/product_detail_page_locators.resource
Resource    ${CURDIR}/../page_objects/locators/cart_page_locators.resource
Resource    ${CURDIR}/../page_objects/locators/checkout_page_locators.resource