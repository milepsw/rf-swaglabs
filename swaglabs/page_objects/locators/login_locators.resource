*** Variables ***
${LOGIN.USERNAME.TEXTBOX}        id=user-name
${LOGIN.PASSWORD.TEXTBOX}        id=password
${LOGIN.LOGIN.BUTTON}            id=login-button
${ERROR.LOGIN.MESSAGE}           //h3[contains(text(),"Username and password do not match any user in this service")]
${LOCKED.USER.MESSAGE}           //h3[contains(text(),"Sorry, this user has been locked out")]
${ERROR.CROSS.BUTTON}            //button[@class="error-button"]