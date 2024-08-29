Select *
From [Capstone Project]..HR_capstone_dataset
order by 9


---Tolat Projects By Dept
Select Department, (SUM(number_project)) as total_project_by_dept
From [Capstone Project]..HR_capstone_dataset
Group By department

---monthly hours by dept
Select Department, AVG(CAST(average_montly_hours as int)) AS avg_montly_hours
From [Capstone Project]..HR_capstone_dataset
Group by Department
order by avg_montly_hours desc

---total time spent at company by department
Select Department, SUM(CAST(time_spend_company as int)) as Total_time_spend_company
From [Capstone Project]..HR_capstone_dataset
Group by Department
ORDER BY Total_time_spend_company desc

---Satisfaction By DEPT
Select Department, AVG(satisfaction_level) as departmental_satisfaction
From [Capstone Project]..HR_capstone_dataset
Group by Department 
ORDER BY departmental_satisfaction desc

---montly hours vs time spent at company vs satisfaction level

Select average_montly_hours, time_spend_company, satisfaction_level
From [Capstone Project]..HR_capstone_dataset

---AVG satisfaction  by years spent in company

Select time_spend_company, AVG(satisfaction_level) as avg_satisfaction_level
From [Capstone Project]..HR_capstone_dataset
Group by time_spend_company
order by avg_satisfaction_level

---Salary level vs average satisfaction level

Select salary, AVG(satisfaction_level) as average_satisfaction_level
From [Capstone Project]..HR_capstone_dataset
Group by salary
order by average_satisfaction_level

----create views

Create view Average_Monthly_hours_by_Dept as
Select Department, AVG(CAST(average_montly_hours as int)) AS avg_montly_hours
From [Capstone Project]..HR_capstone_dataset
Group by Department

Create view Satisfaction_By_DEPT as
Select Department, AVG(satisfaction_level) as departmental_satisfaction
From [Capstone Project]..HR_capstone_dataset
Group by Department 

Create view Salary_Level_vs_Average_Satisfaction_level as
Select salary, AVG(satisfaction_level) as average_satisfaction_level
From [Capstone Project]..HR_capstone_dataset
Group by salary

Create view total_project_by_dept as
Select Department, (SUM(number_project)) as total_project_by_dept
From [Capstone Project]..HR_capstone_dataset
Group By department

Create view AVG_satisfaction_by_years_spent_in_company as
Select time_spend_company, AVG(satisfaction_level) as avg_satisfaction_level
From [Capstone Project]..HR_capstone_dataset
Group by time_spend_company