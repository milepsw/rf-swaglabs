*** Keywords ***
Input username in username field
    [Arguments]    ${user_name}
    library_keywords.Input text  ${LOGIN.USERNAME.TEXTBOX}  ${user_name}

Input password in password field
    [Arguments]    ${password}
    library_keywords.Input text  ${LOGIN.PASSWORD.TEXTBOX}  ${password}

Click login button
    library_keywords.Click button  ${LOGIN.LOGIN.BUTTON}

Check error login failed message
    SeleniumLibrary.Wait until element is visible   ${ERROR.LOGIN.MESSAGE}
    library_keywords.Click button  ${ERROR.CROSS.BUTTON}

Check error locked out user message
    SeleniumLibrary.Wait until element is visible   ${LOCKED.USER.MESSAGE}
    library_keywords.Click button  ${ERROR.CROSS.BUTTON}