CREATE MIGRATION m1tt37qseldftbebm3o6u45nbz6ghiqqsfao34ezv7yy2vp5uvgpja
    ONTO m1mjsnfh4x57tsqldtn6ammaozcg36lgefejgpdm2vgd7datanjfsq
{
  ALTER TYPE parliament::Division {
      ALTER LINK votes {
          RESET OPTIONALITY;
      };
      ALTER PROPERTY division_id {
          CREATE CONSTRAINT std::exclusive;
      };
  };
  ALTER TYPE parliament::DivisionVote {
      CREATE REQUIRED LINK division: parliament::Division {
          SET REQUIRED USING (<parliament::Division>{});
      };
      CREATE CONSTRAINT std::exclusive ON ((.member, .division));
  };
  ALTER TYPE parliament::DivisionVote {
      DROP PROPERTY division_id;
  };
};
