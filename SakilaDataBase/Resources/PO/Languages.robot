*** Settings ***
Library    SeleniumLibrary
Library  Dialogs
*** Variables ***
${MENU_NAVIGATION_ELEMENT} =   //*[@id="root"]/frameset/frameset/frame[1]
${LANGUAGE_NAVIGATION_ELEMENT} =   //*[@id="root"]/frameset/frameset/frame[2]
${FRAME_1_LANGUAGES_BUTTON} =    //*[@id="root"]/ul/li[3]/button
${ADD_LANGUAGES_BUTTON} =    //*[@id="root"]/dl[2]/button[2]
${SUBMIT_BUTTON} =    //*[@id="root"]/div/form/button
${ADD_LANGUAGES_BOX} =    //*[@id="name"]
*** Keywords ***
Click Languages Button
    select frame    ${MENU_NAVIGATION_ELEMENT}
    click button    ${FRAME_1_LANGUAGES_BUTTON}
    Pause Execution
    unselect frame
    sleep    3s

Click " Add a new language" Button
    select frame    ${LANGUAGE_NAVIGATION_ELEMENT}
    click button    ${ADD_LANGUAGES_BUTTON}
    sleep    3s
    unselect frame
Type A Language
    select frame    ${LANGUAGE_NAVIGATION_ELEMENT}
    input text    ${ADD_LANGUAGES_BOX}    Spanish
    sleep    3s
    unselect frame
Submit
    select frame    ${LANGUAGE_NAVIGATION_ELEMENT}
    click button    ${SUBMIT_BUTTON}
    sleep    3s
    unselect frame
#Verify Page Loaded
#    select frame    ${LANDING_NAVIGATION_ELEMENT}
 #   current frame should contain    Films
