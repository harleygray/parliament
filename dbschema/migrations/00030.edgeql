CREATE MIGRATION m1drdjchiv2y6p3zkcw2ryfx7k4qosekeyauuhjyhotsvp5wvwanwa
    ONTO m15a5m56s5o3g46gqqn6hwymcmpd73kpmhxtedpwkuz5ee3ummsluq
{
  ALTER TYPE parliament::DivisionSubsubcategory {
      CREATE LINK category: parliament::DivisionCategory {
          SET REQUIRED USING (<parliament::DivisionCategory>{});
      };
      DROP EXTENDING parliament::Category;
      EXTENDING parliament::DivisionSubcategory LAST;
  };
  ALTER TYPE parliament::DivisionSubsubcategory {
      ALTER LINK category {
          RESET OPTIONALITY;
          DROP OWNED;
          RESET TYPE;
      };
  };
};
