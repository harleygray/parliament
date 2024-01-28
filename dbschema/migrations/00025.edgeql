CREATE MIGRATION m1mjsnfh4x57tsqldtn6ammaozcg36lgefejgpdm2vgd7datanjfsq
    ONTO m1blqfwazae5qjmj2f2zcdlntqp4v6gtapbxvirvcwrb46zowehysq
{
  ALTER TYPE parliament::Member {
      ALTER PROPERTY person_id {
          CREATE CONSTRAINT std::exclusive;
      };
  };
};
