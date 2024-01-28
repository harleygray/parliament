CREATE MIGRATION m14wobvmpgtxcohg73iafl5t5t2r3yyh7aj3nijqagxpgwov4r6rja
    ONTO m1kyysc5fr42rmqhiepqklsabz5bq72c4shsxn3rntqaezil66afgq
{
  ALTER TYPE parliament::Office {
      ALTER PROPERTY name {
          CREATE DELEGATED CONSTRAINT std::exclusive;
      };
  };
  ALTER TYPE parliament::Party {
      ALTER PROPERTY name {
          CREATE DELEGATED CONSTRAINT std::exclusive;
      };
  };
};
