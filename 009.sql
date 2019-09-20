/*Please add ; after each select statement*/
CREATE PROCEDURE gradeDistribution()
BEGIN
    SELECT Name, ID FROM Grades WHERE FINAL > ( (Midterm1*.5)+(Midterm2*.5) ) AND FINAL > ( (Midterm1*.25)+(Midterm2*.25)+(FINAL*.5) ) ORDER BY SUBSTRING( Name, 1, 3 ) ASC, ID ASC;
END