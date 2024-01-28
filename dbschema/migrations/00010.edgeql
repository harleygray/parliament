CREATE MIGRATION m1sfdbzy7qfta2hxi3nmtai3upzmdiq37kelpdsy6cqblppd77k6lq
    ONTO m1djiw5ixyy5r3rfgkow3urfopg2jdayzrtzenkpl5l5zseuoo57pq
{
  ALTER TYPE default::Person {
      CREATE PROPERTY is_single := (NOT (EXISTS (.lover)));
  };
  CREATE TYPE default::Time {
      CREATE REQUIRED PROPERTY clock: std::str;
      CREATE PROPERTY clock_time := (<cal::local_time>.clock);
      CREATE PROPERTY hour := ((.clock)[0:2]);
  };
};
