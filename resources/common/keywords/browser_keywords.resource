*** Keywords ***
Open browser
    [Arguments]    ${baseUrl}    ${browser}    ${ui_mode}
    ${system}=          Builtin.Evaluate    platform.system()    platform
    ${download_dir}=    Builtin.Set variable    ${EXECDIR}${/}resources${/}download
    # Condition
    IF  '${system}'=='Windows'

        IF  '${browser}' == 'googlechrome' or '${browser}' == 'chrome' or '${browser}' == 'gc'
            ${browser}=        Builtin.Set variable    Chrome
            ${driver_path}=    Builtin.Set variable          ${EXECDIR}${/}resources${/}driver${/}${system}${/}gc${/}chromedriver.exe
            ${browser_exe}=    Builtin.Set variable     ${EXECDIR}${/}resources${/}driver${/}${system}${/}gc${/}chrome.exe
            ${options}=        Builtin.Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
            ${options.binary_location}=    Builtin.Set variable    ${browser_exe}
            ${service}=        Builtin.Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service(executable_path=r"${driver_path}")
            ${prefs}=          Builtin.Create dictionary    download.default_directory=${download_dir}
            Builtin.Call method    ${options}    add_experimental_option    prefs    ${prefs}
            Builtin.Call method    ${options}    add_argument    --disable-extensions
            IF  '${ui_mode}' == 'no'
                Builtin.Call method    ${options}    add_argument    --headless
                Builtin.Call method    ${options}    add_argument    --disable-gpu
            END
        ELSE IF  '${browser}' == 'firefox' or '${browser}' == 'ff'
            ${driver_path}=    Builtin.Set variable
            Builtin.Fail    msg=Can not run on Firefox for now!
        ELSE IF  '${browser}' == 'safari'
            ${driver_path}=    Builtin.Set variable
            Builtin.Fail    msg=Can not run on Safari for now!
        ELSE
            Builtin.Fail    Not support browser : ${browser} | This project only support on browser : Chrome, Firefox(Soon!), Safari(Soon!)
        END

    ELSE IF  '${system}'=='Linux'
        Builtin.Fail    msg=Can not run on Linux for now!
    ELSE IF  '${system}'=='Darwin'
        Builtin.Fail    msg=Can not run on MacOS for now!
    ELSE
        Builtin.Fail    Not support system : ${system} | This project only support on OS: Windows, Linux(Soon!), MacOS(Soon!)
    END
    # Browser
    Seleniumlibrary.Create webdriver
    ...    ${browser}    
    ...    options=${options}
    ...    service=${service}
    Seleniumlibrary.Set window size
    ...    1280    # width
    ...    720     # height
    Seleniumlibrary.Go to
    ...    ${baseUrl}