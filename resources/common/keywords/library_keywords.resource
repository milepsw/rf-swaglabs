*** Keywords ***
Click button
    [Arguments]    ${locator}    ${timeout}=10s
    Seleniumlibrary.Wait until element is visible    ${locator}    ${timeout}
    Seleniumlibrary.Wait until element is enabled    ${locator}    ${timeout}
    Seleniumlibrary.Click element    ${locator}

Input text
    [Arguments]    ${locator}    ${text}    ${timeout}=10s
    Seleniumlibrary.Wait until element is visible    ${locator}    ${timeout}
    Seleniumlibrary.Wait until element is enabled    ${locator}    ${timeout}
    Seleniumlibrary.Input Text                       ${locator}    ${EMPTY}
    Seleniumlibrary.Input text                       ${locator}    ${text}

Text should contains
    [Arguments]    ${locator}    ${text}    ${timeout}=10s
    Seleniumlibrary.Wait until element is visible    ${locator}    ${timeout}
    Seleniumlibrary.Wait until element is enabled    ${locator}    ${timeout}
    Seleniumlibrary.Wait until element contains      ${locator}    ${text}

Press key on keyboard
    [Arguments]    ${key}
    Seleniumlibrary.Press keys    None    ${key}