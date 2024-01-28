CREATE MIGRATION m1rncygmve4f3mmtkllkqb6kjatm4crjjnssnvdpjdonfzsdnyq4hq
    ONTO m1bxgasrxosa44mhgt2r7vgqsbbdgw3uwthmgl7dk5tiz33ayyaqyq
{
  CREATE ABSTRACT TYPE default::Person {
      CREATE MULTI LINK places_visited: default::City;
      CREATE REQUIRED PROPERTY name: std::str;
  };
  ALTER TYPE default::NPC {
      EXTENDING default::Person LAST;
      ALTER LINK places_visited {
          RESET CARDINALITY;
          DROP OWNED;
          RESET TYPE;
      };
      ALTER PROPERTY name {
          RESET OPTIONALITY;
          DROP OWNED;
          RESET TYPE;
      };
  };
  CREATE SCALAR TYPE default::Class EXTENDING enum<Rogue, Mystic, Merchant>;
  CREATE TYPE default::PC EXTENDING default::Person {
      CREATE REQUIRED PROPERTY class: default::Class;
  };
};
