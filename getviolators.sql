CREATE PROCEDURE `getviolators` ()

BEGIN
CREATE TABLE violators AS
    SELECT studentID, fristname, lastname
    FROM students
    WHERE isin = 0;
    return violators;
END

