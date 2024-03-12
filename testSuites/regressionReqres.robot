*** Settings ***
Library     Collections
Library     RequestsLibrary
Resource    ../testCases/postCreateUser.robot
Resource    ../testCases/getSingleUser.robot

*** Variables ***
#create user
${endpoint}                 /api/users
${name}                     morpheus
${job}                      leader

#get single user
${base_url}                 https://reqres.in
${endpoint}                 /api/users/2

*** Test Cases ***
Create user success
    verifiy success create

verifiy failed create user
    verifiy failed create

Get single user success
    Get Single User