CREATE MIGRATION m1c54afhuwsjwkuls4vdnyu7qvf6q6hw27maant2zrspseaso7ewfq
    ONTO m1hnwllmtrerfglixccsd776hmdkpf2efknkipeatevrpxx24qbsta
{
  ALTER TYPE parliament::Suburb {
      CREATE CONSTRAINT std::exclusive ON ((.name, .postcode));
  };
};
