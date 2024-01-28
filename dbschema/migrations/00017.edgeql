CREATE MIGRATION m1fz74mkjyfio26y6exfzm3mhxrlz475u6nk4ip5b2kr5zhlmwk7ka
    ONTO m1eggeomlvt5cx2syyylmasnhupgw6evgrc3rs5jcx7jzvphok6diq
{
  CREATE MODULE parliament IF NOT EXISTS;
  CREATE SCALAR TYPE parliament::House EXTENDING enum<Representatives, Senate>;
  CREATE TYPE parliament::Division {
      CREATE REQUIRED PROPERTY aye_votes: std::int16;
      CREATE REQUIRED PROPERTY clock_time: std::str;
      CREATE REQUIRED PROPERTY date: std::str;
      CREATE REQUIRED PROPERTY division_id: std::int16;
      CREATE REQUIRED PROPERTY house: parliament::House;
      CREATE REQUIRED PROPERTY name: std::str;
      CREATE REQUIRED PROPERTY no_votes: std::int16;
      CREATE REQUIRED PROPERTY possible_turnout: std::int16;
      CREATE REQUIRED PROPERTY summary: std::str;
  };
  CREATE SCALAR TYPE parliament::Vote EXTENDING enum<aye, no>;
  CREATE TYPE parliament::DivisionVote {
      CREATE REQUIRED PROPERTY division_id: std::int16;
      CREATE REQUIRED PROPERTY vote: parliament::Vote;
  };
  ALTER TYPE parliament::Division {
      CREATE REQUIRED MULTI LINK votes: parliament::DivisionVote;
  };
  CREATE TYPE parliament::Office {
      CREATE REQUIRED PROPERTY name: std::str;
  };
  CREATE TYPE parliament::Party {
      CREATE LINK allegiance: parliament::Party;
      CREATE REQUIRED PROPERTY name: std::str;
      CREATE PROPERTY plotly_col: std::str;
  };
  CREATE TYPE parliament::Member {
      CREATE MULTI LINK offices: parliament::Office;
      CREATE REQUIRED LINK party: parliament::Party;
      CREATE REQUIRED PROPERTY electorate: std::str;
      CREATE REQUIRED PROPERTY first_name: std::str;
      CREATE REQUIRED PROPERTY last_name: std::str;
      CREATE PROPERTY full_name := (((.first_name ++ ' ') ++ .last_name));
      CREATE REQUIRED PROPERTY house: parliament::House;
      CREATE REQUIRED PROPERTY parliament_id: std::int16;
      CREATE REQUIRED PROPERTY person_id: std::int16;
  };
  ALTER TYPE parliament::DivisionVote {
      CREATE REQUIRED LINK member: parliament::Member;
  };
};
