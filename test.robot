*** Settings ***
Library           RequestsLibrary

*** Test Cases ***
is_prime
     ${response}=    Get    http://127.0.0.1:5000/is_prime/17
    Should Be Equal As Integers    ${response.status_code}    200
    Should Be Equal As Strings    ${response.content}    True
    ${response}=    Get    http://127.0.0.1:5000/is_prime/36
    Should Be Equal As Integers    ${response.status_code}    200
    Should Be Equal As Strings    ${response.content}    False
    ${response}=    Get    http://127.0.0.1:5000/is_prime/13219
    Should Be Equal As Integers    ${response.status_code}    200
    Should Be Equal As Strings    ${response.content}    True