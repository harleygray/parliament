CREATE MIGRATION m1ooxcq6rzdgbcrnpk4inie7ki5vt7tb6f3ejgfq32o7tnjnmixfta
    ONTO m15lewkfbolkecoiutos224io472tk3taiyxgawfuvbpw3de5y545a
{
  CREATE SCALAR TYPE default::HumanAge EXTENDING std::int16 {
      CREATE CONSTRAINT std::max_value(120);
  };
  ALTER TYPE default::NPC {
      CREATE PROPERTY age: default::HumanAge;
  };
};
