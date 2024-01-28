CREATE MIGRATION m1hnwllmtrerfglixccsd776hmdkpf2efknkipeatevrpxx24qbsta
    ONTO m1kkd3kbppzlniygyvnsecuryge7kdbhg2x5hfdsnglrvhusoxs5fq
{
  CREATE TYPE parliament::Electorate {
      CREATE REQUIRED PROPERTY name: std::str {
          CREATE CONSTRAINT std::exclusive;
      };
  };
  CREATE TYPE parliament::Suburb {
      CREATE REQUIRED LINK electorate: parliament::Electorate;
      CREATE REQUIRED PROPERTY name: std::str;
      CREATE REQUIRED PROPERTY postcode: std::str;
      CREATE REQUIRED PROPERTY state: std::str;
  };
  ALTER TYPE parliament::Electorate {
      CREATE MULTI LINK suburbs: parliament::Suburb;
  };
};
