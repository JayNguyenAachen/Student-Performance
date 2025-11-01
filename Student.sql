--Overview 

-- 1.Total Student and teacher
SELECT 
COUNT(StudentID) as [ Number of Student ]
from Dim_student

SELECT 
COUNT(TeacherID) as [ Number of Teacher ]
From Dim_teacher

-- 2.Pass and Fail ratio
With passed_rate as ( 
    SELECT -- Passed
   1.0 *  (
        SELECT COUNT(PassedCourse)
        FROM Fact_Performance
        where PassedCourse = 'PASSED'
        ) / 
    (
        SELECT COUNT(PassedCourse)
        FROM Fact_Performance
    )    * 100 as [ Passed Ratio ] 
)
SELECT -- Failed
100 - [ Passed Ratio ] as [Failed Ratio]
from passed_rate

-- 3. student dimension

SELECT 
c.StudentID,
c.FullName,
b.SubjectName,
AVG(a.WeightedAverage) as [AverageWeighted],
a.PassedCourse,
d.AcademicYear,
d.Term,
CASE
    when AVG(a.WeightedAverage) >= 90 then 'perfect'
    when AVG(a.WeightedAverage) <= 70 then 'not qualify'
    else 'good' 
    end as 'Assessment'

FROM Fact_Performance a
INNER JOIN Dim_subject b
ON a.SubjectID = b.SubjectID
INNER JOIN Dim_student c
ON a.StudentID = c.StudentID
INNER JOIN Dim_calender d
ON a.DateKey = d.DateKey
GROUP BY c.FullName, b.SubjectName, a.PassedCourse, d.AcademicYear, d.Term,c.StudentID
ORDER by b.SubjectName


-- teacher dimension
Select
a.TeacherID,
SUBSTRING([Full Name], CHARINDEX(' ',[Full Name]) + 1, LEN([Full Name])) as [ Full Name ],
a.Gender as [Gender],
a.SubjectSpecialty as [Subject],
a.Department as [Department],
a.YearsExperience as [YearsExperience],
c.AssessmentName,
AVG(b.WeightedAverage) as [ AverageScore ],
d.Term, 
d.AcademicYear

from Dim_teacher a 
INNER JOIN Fact_Performance b
ON a.TeacherID = b.TeacherID
INNER JOIN Dim_assessment c
ON b.AssessmentID = c.AssessmentID
INNER JOIN Dim_calender d
ON b.DateKey = d.DateKey
GROUP BY a.TeacherID, 
    SUBSTRING([Full Name],
    CHARINDEX(' ',[Full Name]) + 1, 
    LEN([Full Name])), 
    a.Gender, 
    a.SubjectSpecialty, 
    a.Department, 
    a.YearsExperience, 
    c.AssessmentName,
    d.Term, 
    d.AcademicYear


SELECT * from Dim_teacher