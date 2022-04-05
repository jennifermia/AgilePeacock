*** Variables ***
${dropdown_menu}  //*[@id="app"]/div[7]/div[1]/main/div/div/div[3]/div/div/div/div/div/nav/div/div[3]/div/button
${delete_button}  //*[@id="app"]/div[2]/div/div/div[2]/a
${confirm_delete}  //*[@id="app"]/div[6]/div/div/div[3]/button
${my_models}  //*[@id="app"]/div[6]/div[1]/main/div/div/nav/div/div[1]


*** Keywords ***
Delete Model
    Wait Until Page Contains  Models
    Wait Until Page Contains Element  ${dropdown_menu}
    Click Button   ${dropdown_menu}
    Wait Until Page Contains Element  ${delete_button}
    Click Element  ${delete_button}
    Wait Until Page Contains Element  ${confirm_delete}
    Click Button  ${confirm_delete}
    Wait Until Page Contains  You can create a new model by clicking the "NEW MODEL" button in the top right corner
Verify Number Of Existing Models
    Wait Until Element Is Visible  ${my_models}
    ${element_text}  Get Text  ${my_models}
    ${actual_amount}  convert into number  ${element_text}
    Should Be True  ${actual_amount} == 0