*** Keywords ***
Click menu
    SeleniumLibrary.Wait until element is visible                                      ${MENU.BUTTON} 
    SeleniumLibrary.Click element                                                      ${MENU.BUTTON}

Click close menu
    SeleniumLibrary.Wait until element is visible                                      ${CLOSE.MENU.BUTTON} 
    SeleniumLibrary.Click element                                                      ${CLOSE.MENU.BUTTON}

Click all items
    SeleniumLibrary.Wait until element is visible                                      ${ALL.ITEM.MENU}
    SeleniumLibrary.Click element                                                      ${ALL.ITEM.MENU}

Click log out
    SeleniumLibrary.Wait until element is visible                                      ${LOGOUT.MENU}
    SeleniumLibrary.Click element                                                      ${LOGOUT.MENU}

Click reset app state
    SeleniumLibrary.Wait until element is visible                                      ${RESET.STATE.MENU}
    SeleniumLibrary.Click element                                                      ${RESET.STATE.MENU}

Click cart icon
    SeleniumLibrary.Wait until element is visible                                      ${CART.BUTTON}
    SeleniumLibrary.Click element                                                      ${CART.BUTTON}

Check cart quantity at cart icon
    [Arguments]     ${expected_quantity}
    ${quantity_of_product}=                             SeleniumLibrary.Get text       ${CART.QUANTITY.BADGE}
    BuiltIn.Convert to number                                                          ${quantity_of_product}
    BuiltIn.Should be equal as numbers                                                 ${quantity_of_product}           ${expected_quantity}