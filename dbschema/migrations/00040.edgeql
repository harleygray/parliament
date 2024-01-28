CREATE MIGRATION m16venbcz2jvoin7xmaok3jxi3bxzrjdn6via7mbw72xvhystylaba
    ONTO m1oaor2fiml2dx3o4pqaqy6glihjkpqyrgm4zsswmgzkyn3isn6bnq
{
  ALTER TYPE parliament::Member {
      CREATE MULTI LINK votes := (.<member[IS parliament::DivisionVote]);
  };
};
