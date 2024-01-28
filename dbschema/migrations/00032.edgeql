CREATE MIGRATION m1zv3utqcwqfw7spcwycwauh5nvszfbc243dap2ec3xy5mjov2t26a
    ONTO m1ykpdmwvbmiainevwfjsxgv3lbjeznrj2kq76hzwtuk6za5nvi5za
{
  ALTER TYPE parliament::Division {
      DROP LINK division_category;
  };
  ALTER TYPE parliament::Division {
      DROP LINK division_subcategory;
  };
  ALTER TYPE parliament::Division {
      CREATE PROPERTY division_category: std::str;
  };
  ALTER TYPE parliament::Division {
      CREATE PROPERTY division_subcategory: std::str;
  };
  DROP TYPE parliament::DivisionCategory;
  DROP TYPE parliament::DivisionSubcategory;
};
