CREATE MIGRATION m12xkcjb5zdzuodiyplhrrwxvq6yi2m636g2qgxvevsxd2snu2dy4q
    ONTO m1dokoqx64jy4fg2tl5tq5cam3pgztci66ee74yaxbi7re3jvbtk7q
{
  ALTER TYPE default::MinorVampire {
      DROP LINK master;
  };
  ALTER TYPE default::Vampire {
      CREATE MULTI LINK slaves: default::MinorVampire;
  };
};
