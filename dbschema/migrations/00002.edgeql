CREATE MIGRATION m1fkuxjqazameotbvwrxpssybgccju5exegt32xgnltwzidzmpq3cq
    ONTO m1yzhxilbtfqdsuhfj45ckvftdhduz7vizvxuktojobtkejjwpu7gq
{
  ALTER TYPE default::NPC {
      CREATE REQUIRED PROPERTY name: std::str {
          SET REQUIRED USING (<std::str>{});
      };
      CREATE PROPERTY places_visited: array<std::str>;
  };
};
