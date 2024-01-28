CREATE MIGRATION m1yb6v4kbs27i3tuqbfqjyvgsacy32jhe3lswtmgnu6fnucet3b7ha
    ONTO m1fz74mkjyfio26y6exfzm3mhxrlz475u6nk4ip5b2kr5zhlmwk7ka
{
  ALTER TYPE parliament::Member {
      CREATE LINK allegiance: parliament::Party;
  };
  ALTER TYPE parliament::Party {
      DROP LINK allegiance;
      DROP PROPERTY plotly_col;
  };
};
