*** Settings ***
# SIT

# UAT

# PROD
Resource    ${CURDIR}/../page_objects/pages/component_keyword.resource
Resource    ${CURDIR}/../page_objects/pages/login_page.resource
Resource    ${CURDIR}/../page_objects/pages/product_list_page.resource
Resource    ${CURDIR}/../page_objects/pages/cart_page.resource
Resource    ${CURDIR}/../page_objects/pages/checkout_page.resource