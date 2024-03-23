*** Keywords ***
Input detail in checkout page
    [Arguments]    ${first_name}    ${last_name}    ${post_code}
    checkout_page.Input firstname in checkout page        ${first_name}
    checkout_page.Input lastname in checkout page         ${last_name}
    checkout_page.Input postcode in checkout page         ${post_code}

Check name of product is added product correctly
    [Arguments]   ${product_name}
    checkout_page.Check name of product    ${product_name}

Calculate price of product is correctly
    [Arguments]    ${vat.percentage}    ${actual.price}
    checkout_page.Check vat and price is calculate correctly    ${vat.percentage}    ${actual.price}

Click finish button and verify make an order success
    checkout_page.Click finish button
    checkout_page.Check order is complete