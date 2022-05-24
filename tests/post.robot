*Settings*
Documentation       POST/partners
Resource    ${EXECDIR}/resources/base.robot


**Test Cases**

Should create a new partner


    ${partner}      Factory New Partner

    Remove Partner By Name      Pizzas Papito


    ${response}     POST Partner  ${partner}

    RequestsLibrary.Status Should Be 201

    Should Be Equal     ${response.json()}[partner_id]   ${results}[0][_id]

