*** Keywords ***
Click checkout button
    library_keywords.Click button  ${CHECKOUT.BUTTON}

Click continue shopping button
    library_keywords.Click button  ${CONTINUE.SHOP.BUTTON}

Click remove product button
    [Arguments]     ${product_name}
    ${locator.remove.btn}=                              String.Replace string          ${CART.REMOVE.BUTTON}         {product_name}    ${product_name}
    library_keywords.Click button  ${locator.remove.btn}

Click name of product
    [Arguments]     ${product_name}
    ${locator_product_name}=                            String.Replace string          ${PRODUCT.NAME.TEXT}         {product_name}    ${product_name}
    library_keywords.Click button  ${locator_product_name}