**Settings**

Library             RobotMongoDBLibrary.Delete
Library             RobotMongoDBLibrary.Find

**Variables**

&{MONGODB_URI}  connection=mongodb+srv://bugereats:bugereats123@cluster0.owro9.mongodb.net/PartnerBD?retryWrites=true&w=majority database=PartnerBD collection=customer


**Keywords**

Remove Partner By Name 
    [Arguments]         ${partner_name}

    ${filter}               Create Dictionary
    ...                     name=${partner_name}

    DeleteOne               ${MONGODB_URI}  ${filter}


Find Partner By Name
    [Arguments]             ${partner_name}
    ${filter}               Create Dictionary
    ...                     name=${partner_name}

    ${results}     Find    ${MONGODB_URI}    ${filter}
    [return]    ${results}