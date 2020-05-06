*** Settings ***
Library           Process
Suite Teardown    Terminate All Processes    kill=True
 
*** Test Cases ***
Example
    ${result} =    Run Process    ansible-playbook    ${CURDIR}/ansible/playbooks/configure.yaml    alias=myproc    stdout=${TEMPDIR}/stdout.txt    stderr=${TEMPDIR}/stderr.txt
    ${stdout}    ${stderr} =    Get Process Result    myproc    stdout=yes    stderr=yes
    Log Many    stdout: ${result.stdout}    stderr: ${result.stderr}
    Should Be Empty	${stderr}
    Should Not Contain    ${result.stdout}    FAIL

