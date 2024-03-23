*** Keywords ***
Login success to website
    [Arguments]    ${user_name}    ${password}
    login_page.Input username in username field    ${user_name}
    login_page.Input password in password field    ${password}
    login_page.Click login button

Login failed to website
    [Arguments]    ${user_name}    ${password}
    login_page.Input username in username field    ${user_name}
    login_page.Input password in password field    ${password}
    login_page.Click login button
    login_page.Check error login failed message

Login failed with locked user to website
    [Arguments]    ${user_name}    ${password}
    login_page.Input username in username field    ${user_name}
    login_page.Input password in password field    ${password}
    login_page.Click login button
    login_page.Check error locked out user message