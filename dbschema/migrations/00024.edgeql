CREATE MIGRATION m1blqfwazae5qjmj2f2zcdlntqp4v6gtapbxvirvcwrb46zowehysq
    ONTO m1hslof6lkc7uqjndjzkibuzt7araph64d5so6p35irnrlkqjnktpa
{
  ALTER TYPE parliament::Party {
      ALTER PROPERTY name {
          ALTER CONSTRAINT std::exclusive {
              RESET DELEGATED;
          };
      };
  };
};
