*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/mainResource.robot
Resource  ../Resources/deleteModelResources.robot
Library  ../Scripts/remove_text.py
Suite Setup  Start WebTest
Suite Teardown  End WebTest

*** Test Cases ***
User Can Delete Model
    [Documentation]  Test that verifies model is deleted.
    [Tags]  delete_model
    Login
    Delete Model
    Verify Number Of Existing Models