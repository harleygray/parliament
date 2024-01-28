CREATE MIGRATION m1bxgasrxosa44mhgt2r7vgqsbbdgw3uwthmgl7dk5tiz33ayyaqyq
    ONTO m1yfemcunb2rmlzdionglb3u63rapepyqu3hjedtamub7pnd6imesq
{
  ALTER TYPE default::City {
      CREATE PROPERTY important_places: array<std::str>;
  };
};
