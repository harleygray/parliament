CREATE MIGRATION m1bdoz3tudw6cs65qsrgjer6vlzgqqb3fu6236es4em3rlkfk2pxaq
    ONTO m14wobvmpgtxcohg73iafl5t5t2r3yyh7aj3nijqagxpgwov4r6rja
{
  ALTER SCALAR TYPE parliament::House EXTENDING enum<representatives, senate>;
};
