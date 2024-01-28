CREATE MIGRATION m1oaor2fiml2dx3o4pqaqy6glihjkpqyrgm4zsswmgzkyn3isn6bnq
    ONTO m1yx67nwphkorcxt6bkxkd6lqkrqrly6s7xmkwrmlnrzi4fwzjjyza
{
  ALTER TYPE parliament::Member {
      DROP LINK electorate;
  };
  ALTER TYPE parliament::Member {
      CREATE MULTI LINK electorates: parliament::Electorate;
  };
};
