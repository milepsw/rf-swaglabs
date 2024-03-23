*** Keywords ***
Select product and check price of product
    [Arguments]    ${product_name}    ${expected.price}
    ${locator.product_name}=                            String.Replace string          ${PRODUCT.NAME.TEXT}             {product_name}    ${product_name}
    SeleniumLibrary.Wait until element is visible                                      ${locator.product_name}          30s
    ${locator.product_price}=                           String.Replace string          ${PRODUCT.PRICE.TEXT}            {product_name}    ${product_name}
    SeleniumLibrary.Wait until element is visible                                      ${locator.product_price}         30s
    ${actual.price}                                     SeleniumLibrary.Get text       ${locator.product_price}
    ${actual.price}                                     BuiltIn.Set Variable           ${actual.price}[1:]
    BuiltIn.Convert to number                                                          ${actual.price}
    BuiltIn.Should be equal as numbers                                                 ${actual.price}                  ${expected.price}
    
Click add to cart button
    [Arguments]   ${product_name} 
    ${locator.addtocart.btn}=                           String.Replace string          ${PRODUCT.ADD_TO_CART.BUTTON}    {product_name}    ${product_name}
    library_keywords.Click button  ${locator.addtocart.btn}

Click remove button
    [Arguments]   ${product_name}
    ${locator.remove.btn}=                              String.Replace string          ${PRODUCT.REMOVE.BUTTON}         {product_name}    ${product_name}
    library_keywords.Click button  ${locator.remove.btn}

Click image of product
    [Arguments]   ${product_name} 
    ${locator.img.btn}=                                 String.Replace string          ${PRODUCT.IMG}                   {product_name}    ${product_name}
    library_keywords.Click button  ${locator.img.btn}

Click name of product
    [Arguments]   ${product_name} 
    ${locator.name_of_product.btn}=                     String.Replace string          ${PRODUCT.NAME.TEXT}             {product_name}    ${product_name}
    library_keywords.Click button  ${locator.name_of_product.btn}

Click to select sort by
    [Arguments]   ${name_of_sort_by}
    library_keywords.Click button  ${SORT.BY.BUTTON}
    SeleniumLibrary.Select from list by label                                          ${SORT.BY.BUTTON}                ${name_of_sort_by}