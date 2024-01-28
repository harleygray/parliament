CREATE MIGRATION m1dly3edsdb4yxk7du5cioyjtenecbcfxu5m7qanydoltttnrzl6yq
    ONTO m1yb6v4kbs27i3tuqbfqjyvgsacy32jhe3lswtmgnu6fnucet3b7ha
{
  ALTER TYPE parliament::Member {
      ALTER PROPERTY full_name {
          RESET EXPRESSION;
          RESET CARDINALITY;
          SET REQUIRED;
          SET TYPE std::str;
      };
      DROP PROPERTY first_name;
      DROP PROPERTY last_name;
  };
};
