CREATE MIGRATION m1oeots2xhadrl3h72rclcgwpdtklu7x4rff2exidtdgwkpr2yenrq
    ONTO m1fkuxjqazameotbvwrxpssybgccju5exegt32xgnltwzidzmpq3cq
{
  CREATE TYPE default::City {
      CREATE PROPERTY modern_name: std::str;
      CREATE REQUIRED PROPERTY name: std::str;
  };
};
