CREATE MIGRATION m1ipzywyheg67523wo26ew4ifv74kc7wrhhzwoikgny6lf5fklyqqa
    ONTO m1c54afhuwsjwkuls4vdnyu7qvf6q6hw27maant2zrspseaso7ewfq
{
  ALTER TYPE parliament::Electorate {
      ALTER LINK suburbs {
          USING (.<electorate[IS parliament::Suburb]);
      };
  };
  ALTER TYPE parliament::Member {
      DROP PROPERTY electorate;
  };
  ALTER TYPE parliament::Member {
      CREATE REQUIRED LINK electorate: parliament::Electorate {
          SET REQUIRED USING (<parliament::Electorate>{});
      };
  };
};
