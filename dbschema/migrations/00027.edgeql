CREATE MIGRATION m1563rukfcwvjstxje6bi4zd3lmmfjwqidzbii6bv3bgv23jmbgbnq
    ONTO m1tt37qseldftbebm3o6u45nbz6ghiqqsfao34ezv7yy2vp5uvgpja
{
  ALTER TYPE parliament::Member {
      CREATE PROPERTY currently_serving: std::bool;
  };
};
