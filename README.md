# Student Performance Analysis
## Project Background
Educational performance data provides a powerful lens into student achievement, teaching effectiveness, and the impact of the curriculum. By examining assessment results, grades, and progress metrics, schools and educators can gain a deeper understanding of learning trends, identify students at risk, and recognize top achievers. This challenge invites participants to dive deep into a comprehensive dataset that tracks student scores, assessment outcomes, and course results across subjects and time periods. Your task: uncover patterns, disparities, and actionable insights that can drive positive changes in the educational journey.

## DataSet <br>
 <a href="https://github.com/JayNguyenAachen/Student-Performance/blob/main/Dataset_Education_Student_Performance.rar">Dataset</a>

## Question To Explore 
•	Which months show the highest and lowest total student assessment scores in the academic year? <br>
•	What percentage of all student assessments were passed, and how has this rate changed over time? <br>
•	How does the average score differ across subjects in the most recent semester? <br>
•	Which students have achieved the top three highest overall weighted averages this year? <br>
•	Are there subjects or assessments where students are consistently earning below-average scores? <br>
•	What is the distribution of final grades across all students, and which grade occurs most frequently? <br>
•	Which teachers have the highest average student weighted scores, and how do they compare to the overall average? <br>
•	Is there any pattern for students who did not pass (e.g., by subject, assessment type, or period)? <br>
•	How often do students achieve perfect scores on assessments, and in which subjects does this most commonly occur? <br>
•	For a selected student, how have their scores and weighted averages changed throughout the year? <br>

## Skills and Tools
- SQL: <a href="https://github.com/JayNguyenAachen/Student-Performance/blob/main/Student.sql">Click Here</a>
- Power BI: <br>
(1) Cleaning <br>
(2) Data Modelling <br>
(3) DAX measure <br>
(4) Page Navigator <br>
(5) Formatting <br>
(6) Visuallizing

## Summary 
### Overview
![Image Alt](https://github.com/JayNguyenAachen/Student-Performance/blob/main/Screenshot%202025-11-01%20213525.png)
This overview data provides a comprehensive look into the school's operational status and academic performance for the most recent academic year (2024-2025), along with trends over the past four years. the performance data paints a picture of a steadily improving institution with a robust overall pass rate. The primary areas for strategic focus are two-fold: first, developing specific support programs for the 21% of students struggling and falling into the Grade F category; and second, directing additional resources and attention toward Computer Science and Mathematics, which are currently dragging down the collective subject average. Further deep-dive analysis, particularly into assessment scores over time and teacher performance metrics, would be essential to convert these high-level insights into actionable educational policies.

### Student Perspective
![Image Alt](https://github.com/JayNguyenAachen/Student-Performance/blob/main/Screenshot%202025-11-01%20213537.png)
This detailed student performance dashboard offers a focused look at an individual's academic profile. The data immediately highlights an overall high level of achievement, with the Average Score consistently above 82. A crucial insight from the longitudinal chart is the highly positive Average Score Trending, which shows a sharp and sustained academic improvement over the past three years (2022 to 2025).

In terms of subject mastery, the student exhibits exceptional consistency, with scores across all subjects—including Mathematics, Science, and Arts—clustering in a very narrow, high-scoring range (between 82.00 and 82.25). The data identifies Art & Design and Foreign Language as areas of peak performance, while Science and English Language Arts represent the relative lower end, though still at an excellent level. This consistency suggests the student is well-rounded with a robust, broad-based aptitude for learning.

### Teacher Perspective 
![Image Alt](https://github.com/JayNguyenAachen/Student-Performance/blob/main/Screenshot%202025-11-01%20213551.png)
Take an examaple from Dr. Sarah Mitchell <br>
Dr. Sarah Mitchell is a Dr. in the STEM Department with 12 years of experience teaching Mathematics. Her students' Average Score Trending is strongly positive, showing a consistent rise from $\approx 68.5$ in 2022 to over $70.00$ in 2025. Performance is highest in Group Problem Solving ($\approx 73$) and lowest in Practical Assessments ($\approx 65$). The final grade distribution is top-heavy with Grade B ($46.78\%$) and Grade A ($23.86\%$), but a significant $21.34\%$ of her students are receiving Grade F.

## Recommendation
#### 1. **Intervene to Reduce Failure Rate ($21.34\%$)** <br>
• Implement Early Warning System: Use assessment data to flag students showing scores below a threshold after the first two quizzes/homework assignments to provide immediate, mandatory tutoring.Investigate 'Grade F' <br>

• Concentration: Determine if the $21.34\%$ failure rate is disproportionately linked to specific subjects or the $58\%$ male student population.
#### 2. Strengthen Core STEM Performance 
• Target Computer Science & Math: Prioritize resources for these subjects, as they show the lowest average scores overall ($\approx 70.0$).

• Improve Practical Assessment Skills: Review and restructure teaching methods for Practical Assessments (currently the weakest assessment type, $\approx 65$), focusing on application and problem-solving skills rather than rote learning.
#### 3. Leverage Success and Consistency
• Replicate Growth Model: Analyze the factors (curriculum, instruction) that drove the significant score increase from 2022 to 2025 and apply those models to current low-performing subjects.

• Teacher Collaboration: Facilitate workshops for teachers of low-average subjects (Math, Computer Science) to learn best practices from instructors in high-scoring areas (e.g., English Language Arts, Art & Design).


 
