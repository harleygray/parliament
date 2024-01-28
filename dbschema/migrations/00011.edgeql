CREATE MIGRATION m1hkt7eodut7hw5z4gg5uyi3vdn5wx6hbhe3widj5gtpmzyjo6fw6a
    ONTO m1sfdbzy7qfta2hxi3nmtai3upzmdiq37kelpdsy6cqblppd77k6lq
{
  CREATE SCALAR TYPE default::SleepState EXTENDING enum<Asleep, Awake>;
  ALTER TYPE default::Time {
      CREATE PROPERTY vampires_are := ((default::SleepState.Asleep IF ((<std::int16>.hour > 7) AND (<std::int16>.hour < 19)) ELSE default::SleepState.Awake));
  };
};
