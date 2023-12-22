*** Settings ***
Library     SeleniumLibrary

*** Test Cases *** 
Login to Website
    Open Browser     http://127.0.0.1:8000    chrome
    Input Text      //input[@name='username']    guest
    Input Password  //input[@name='password']    guest
    Click Button    //button[@type='submit']
    Page Should Contain Element    xpath://span[@id='welcome']
    Close Browser

*** Test Cases Login 2 *** 
Login to Website
    Open Browser     http://127.0.0.1:8000    chrome
    Input Text      //input[@name='username']    guest
    Input Password  //input[@name='password']    guest
    Click Button    //button[@type='submit']
    Page Should Not Contain Element    xpath://span[@id='welcome']
    Close Browser

