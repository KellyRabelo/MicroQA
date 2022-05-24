*Settings*
Documentation    POST /partners
Resource         ${EXECDIR}/resources/base.robot


**Test Cases**

Should create a new partner


    ${partner}    Factory New Partner

    Remove Partner By Name    ${partner}[name]


    ${response}    POST Partner    ${partner}

    Status Should Be    201

    ${results}         Find Partner By Name              Pizzas Papito
    Should Be Equal    ${response.json()}[partner_id]    ${results}[_id]

Should  return  duplicate company name 
    ${partner}    Factory New Partner

   
    ${response}    POST Partner    ${partner}

    Status Should Be    409

    Should Be Equal     ${response.json()}[message]     Duplicate company name