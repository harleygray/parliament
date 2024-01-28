CREATE MIGRATION m1yx67nwphkorcxt6bkxkd6lqkrqrly6s7xmkwrmlnrzi4fwzjjyza
    ONTO m1xj3ac4w54apdlfutdqf3serl7wujlvy7ngiwrdaxkoirrz5jxoca
{
  ALTER TYPE parliament::State {
      CREATE PROPERTY abbreviation: std::str;
  };
};
