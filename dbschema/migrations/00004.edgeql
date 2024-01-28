CREATE MIGRATION m1yfemcunb2rmlzdionglb3u63rapepyqu3hjedtamub7pnd6imesq
    ONTO m1oeots2xhadrl3h72rclcgwpdtklu7x4rff2exidtdgwkpr2yenrq
{
  ALTER TYPE default::NPC {
      DROP PROPERTY places_visited;
  };
  ALTER TYPE default::NPC {
      CREATE MULTI LINK places_visited: default::City;
  };
};
