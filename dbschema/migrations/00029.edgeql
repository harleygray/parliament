CREATE MIGRATION m15a5m56s5o3g46gqqn6hwymcmpd73kpmhxtedpwkuz5ee3ummsluq
    ONTO m1mztid342ckpcolxvpplotszpe23rchru46prs6klrwebjpvcpytq
{
  DROP GLOBAL default::time;
  ALTER TYPE default::Place {
      DROP PROPERTY important_places;
      DROP PROPERTY modern_name;
      DROP PROPERTY name;
  };
  DROP TYPE default::Castle;
  DROP TYPE default::City;
  DROP TYPE default::Country;
  ALTER TYPE default::Person {
      DROP PROPERTY is_single;
      DROP LINK lover;
      DROP LINK places_visited;
      DROP PROPERTY name;
      DROP PROPERTY strength;
  };
  DROP TYPE default::Vampire;
  DROP TYPE default::MinorVampire;
  DROP TYPE default::NPC;
  DROP TYPE default::OtherPlace;
  DROP TYPE default::PC;
  DROP TYPE default::Person;
  DROP TYPE default::Place;
  DROP TYPE default::Time;
  DROP SCALAR TYPE default::Class;
  DROP SCALAR TYPE default::HumanAge;
  DROP SCALAR TYPE default::SleepState;
};
