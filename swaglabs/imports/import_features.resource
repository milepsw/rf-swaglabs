*** Settings ***
# SIT

# UAT

# PROD
Resource    ${CURDIR}/../page_objects/features/login_features.resource
Resource    ${CURDIR}/../page_objects/features/checkout_features.resource
Resource    ${CURDIR}/../page_objects/features/product_list_features.resource