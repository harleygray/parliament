CREATE MIGRATION m1hslof6lkc7uqjndjzkibuzt7araph64d5so6p35irnrlkqjnktpa
    ONTO m1bdoz3tudw6cs65qsrgjer6vlzgqqb3fu6236es4em3rlkfk2pxaq
{
  CREATE ABSTRACT TYPE parliament::Category {
      CREATE REQUIRED PROPERTY category_name: std::str {
          CREATE DELEGATED CONSTRAINT std::exclusive;
      };
  };
  CREATE TYPE parliament::DivisionCategory EXTENDING parliament::Category;
  CREATE TYPE parliament::DivisionSubcategory EXTENDING parliament::Category {
      CREATE REQUIRED LINK category: parliament::DivisionCategory;
  };
  CREATE TYPE parliament::DivisionSubsubcategory EXTENDING parliament::Category {
      CREATE REQUIRED LINK subcategory: parliament::DivisionSubcategory;
  };
  ALTER TYPE parliament::Division {
      CREATE LINK division_category: parliament::DivisionCategory;
      CREATE LINK division_subcategory: parliament::DivisionSubcategory;
      CREATE LINK division_subsubcategory: parliament::DivisionSubsubcategory;
  };
  ALTER TYPE parliament::DivisionCategory {
      CREATE MULTI LINK subcategories: parliament::DivisionSubcategory;
  };
  ALTER TYPE parliament::DivisionSubcategory {
      CREATE MULTI LINK subsubcategories: parliament::DivisionSubsubcategory;
  };
};
