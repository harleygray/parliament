CREATE MIGRATION m1kyysc5fr42rmqhiepqklsabz5bq72c4shsxn3rntqaezil66afgq
    ONTO m1dly3edsdb4yxk7du5cioyjtenecbcfxu5m7qanydoltttnrzl6yq
{
  ALTER TYPE parliament::Member {
      DROP PROPERTY parliament_id;
  };
};
