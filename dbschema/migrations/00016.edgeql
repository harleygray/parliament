CREATE MIGRATION m1eggeomlvt5cx2syyylmasnhupgw6evgrc3rs5jcx7jzvphok6diq
    ONTO m12xkcjb5zdzuodiyplhrrwxvq6yi2m636g2qgxvevsxd2snu2dy4q
{
  ALTER TYPE default::Castle {
      CREATE PROPERTY doors: array<std::int16>;
  };
  ALTER TYPE default::Place {
      ALTER PROPERTY name {
          CREATE DELEGATED CONSTRAINT std::exclusive;
      };
  };
  ALTER TYPE default::Person {
      ALTER PROPERTY name {
          CREATE DELEGATED CONSTRAINT std::exclusive;
      };
      CREATE PROPERTY strength: std::int16;
  };
};
