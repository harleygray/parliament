CREATE MIGRATION m1ykpdmwvbmiainevwfjsxgv3lbjeznrj2kq76hzwtuk6za5nvi5za
    ONTO m1drdjchiv2y6p3zkcw2ryfx7k4qosekeyauuhjyhotsvp5wvwanwa
{
  ALTER TYPE parliament::Division {
      DROP LINK division_subsubcategory;
  };
  ALTER TYPE parliament::Division {
      CREATE PROPERTY tldr: std::str;
  };
  ALTER TYPE parliament::DivisionSubcategory {
      DROP LINK category;
      DROP LINK subsubcategories;
  };
  DROP TYPE parliament::DivisionSubsubcategory;
};
