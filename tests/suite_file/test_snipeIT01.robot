*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Resource   ${EXECDIR}/resources/snipeit_keywords.resource

*** Variables ***
# ${EXECDIR}     E:/JenkinsGitDemo/PythonDemo/rfPOM01

*** Test Cases ***
TC001
   Open browser And Navigate to login    admin  password
   Create new user
   Enter new user data 
   Logout from application
   

*** Keywords ***
Create new user
    Click Element    //ul[contains(@class,'nav navbar-nav')]/li[7]
    Click Element    //ul[@class='dropdown-menu']/li[6]/a[1]
Enter new user data
   ${first_name}   FakerLibrary.First Name
   ${last_name}    FakerLibrary.Last Name
   ${username}     FakerLibrary.User Name
   ${userEmail}    FakerLibrary.Free Email
   Enter New User Information    ${first_name}  ${last_name}  ${username}  Test@1234  ${userEmail}  

Click Save button
    click Element    xpath=//form[@id='userForm']/div/div[2]/button/i
    Sleep    5s



