*** Settings ***
Library           Process
Suite Teardown    Terminate All Processes    kill=True
 
*** Test Cases ***
Example
    ${result} =    Run Process    ansible-playbook    ${CURDIR}/ansible/playbooks/configure.yaml

#    Should Not Contain    ${result.stdout}    FAIL
#    Terminate Process    ${handle}
#    ${result} =    Wait For Process    First
#    Should Be Equal As Integers    ${result.rc}    0
