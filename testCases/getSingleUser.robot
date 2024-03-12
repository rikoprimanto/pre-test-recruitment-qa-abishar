*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}                 https://reqres.in
${endpoint}                 /api/users/2

*** Keywords ***
Get Single User
    Create Session  reqres    ${base_url}/api     verify=True
        &{headers}=     Create Dictionary     Content-Type=application/json    
        ${response}=    Get Request    reqres    /users2    headers=${headers}
        Log To Console    Get Single User ${response}
        Log To Console    Body Response ${response.content}
        ${body}=    Set Variable    ${response.json()}
        Should Be Equal  ${response.status_code}  ${200}
	${body}=  Set Variable  ${response.json()}