CREATE MIGRATION m1xj3ac4w54apdlfutdqf3serl7wujlvy7ngiwrdaxkoirrz5jxoca
    ONTO m1ipzywyheg67523wo26ew4ifv74kc7wrhhzwoikgny6lf5fklyqqa
{
  CREATE TYPE parliament::State {
      CREATE REQUIRED PROPERTY name: std::str {
          CREATE CONSTRAINT std::exclusive;
      };
  };
  ALTER TYPE parliament::Electorate {
      CREATE LINK state: parliament::State;
  };
  ALTER TYPE parliament::Suburb {
      DROP PROPERTY state;
  };
  ALTER TYPE parliament::Suburb {
      CREATE LINK state: parliament::State;
  };
  ALTER TYPE parliament::State {
      CREATE MULTI LINK suburbs := (.<state[IS parliament::Suburb]);
  };
};
