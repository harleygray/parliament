CREATE MIGRATION m1mztid342ckpcolxvpplotszpe23rchru46prs6klrwebjpvcpytq
    ONTO m1563rukfcwvjstxje6bi4zd3lmmfjwqidzbii6bv3bgv23jmbgbnq
{
  ALTER TYPE parliament::Division {
      ALTER LINK votes {
          USING (.<division[IS parliament::DivisionVote]);
      };
  };
};
