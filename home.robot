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

Deve abrir a tela principal
    Open Application            http://localhost:4723/wd/hub
    ...                         automationName=UiAutomator2
    ...                         platformName=Android
    ...                         deviceName=Emulator
    ...                         app=/home/andre-martins/Documentos/twp/app/twp.apk

    Wait Until Page Contains    Training Wheels Protocol    60
    Wait Until Page Contains    Mobile Version   
    Close Application
