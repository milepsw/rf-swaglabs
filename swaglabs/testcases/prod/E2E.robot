*** Settings ***
Resource       ${EXECDIR}/resources/global_imports/global_imports.resource
Suite Setup    browser_keywords.Open browser  ${baseUrl}  ${browser}  ${ui_mode}

*** Test Cases ***
TC_41 Verify that user can make an order success with price of product is displayed correctly
    login_features.Login success to website                                         ${user_login["valid_user"]}         ${user_login["password"]}
    product_list_page.Click add to cart button                                      ${product_list["product_name1"]}
    component_keyword.Click cart icon
    cart_page.Click checkout button
    checkout_features.Input detail in checkout page                                 ${shipping_detail["firstname"]}     ${shipping_detail["lastname"]}    ${shipping_detail["postcode"]}
    checkout_page.Click continue button in checkout page
    checkout_features.Check name of product is added product correctly              ${product_list["product_name1"]}
    checkout_features.Calculate price of product is correctly                       ${product_vat["vat_percentage"]}    ${product_total["product1"]}
    checkout_features.Click finish button and verify make an order success
    checkout_page.Click back home button