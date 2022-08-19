*** Settings ***

Library        AppiumLibrary

# {
#   "automationName": "UiAutomator2",
#   "platformName": "Android",
#   "deviceName": "Emulator",
#   "app": "/home/andre-martins/Documentos/twp/app/twp.apk",
#   "udid": "emulator-5554"
# }

*** Test Cases ***

Deve Acessar a tela Dialogs
    Open Application            http://localhost:4723/wd/hub
    ...                         automationName=UiAutomator2
    ...                         platformName=Android
    ...                         deviceName=Emulator
    ...                         app=/home/andre-martins/Documentos/twp/app/twp.apk

    Wait Until Page Contains            COMEÇAR    10
    Click Text                          COMEÇAR       
    Wait Until Element Is Visible       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]    10 
    
    Click Element                       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"] 
    Close Application
