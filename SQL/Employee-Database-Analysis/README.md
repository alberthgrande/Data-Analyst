# Project: Employee Database Analysis

## Step 1: Create the Database Structure

### Employees Table

Think about what information an employee should have:

| Column        | Description                    |
| ------------- | ------------------------------ |
| employee_id   | Unique employee identifier     |
| first_name    | Employee first name            |
| last_name     | Employee last name             |
| salary        | Employee salary                |
| hire_date     | Date employee was hired        |
| department_id | Links employee to a department |

### Departments Table

| Column          | Description                  |
| --------------- | ---------------------------- |
| department_id   | Unique department identifier |
| department_name | Department name              |

### Relationship

One department can have many employees.

```
Departments
    |
    | department_id
    |
Employees
```

---

# Step 2: Insert Sample Data

Try creating:

### Departments

* IT
* HR
* Finance
* Marketing
* Sales

### Employees

Create around 15–20 employees with:

* Different salaries
* Different hire dates
* Different departments

Example:

| Employee | Department | Salary |
| -------- | ---------- | ------ |
| John     | IT         | 50000  |
| Mary     | HR         | 45000  |
| Alex     | IT         | 70000  |
| Sarah    | Finance    | 60000  |

---

# Question 1: Employees per Department

### Goal

Count how many employees belong to each department.

### Think About

1. Connect Employees and Departments.
2. Group records by department.
3. Count employees inside each group.

### Skills Practiced

* JOIN
* GROUP BY
* COUNT()

### Expected Output

| Department | Employee Count |
| ---------- | -------------- |
| IT         | 5              |
| HR         | 3              |
| Finance    | 4              |

---

# Question 2: Highest-Paid Employees

### Goal

Find the employee(s) earning the most money.

### Think About

1. Determine the highest salary.
2. Find employees whose salary matches that value.

### Skills Practiced

* MAX()
* Filtering
* Subqueries (optional)

### Expected Output

| Employee | Salary |
| -------- | ------ |
| Alex     | 70000  |

---

# Question 3: Average Salary by Department

### Goal

Calculate the average salary for each department.

### Think About

1. Group employees by department.
2. Compute average salary inside each group.

### Skills Practiced

* AVG()
* GROUP BY
* JOIN

### Expected Output

| Department | Average Salary |
| ---------- | -------------- |
| IT         | 60000          |
| HR         | 45000          |
| Finance    | 55000          |

---

# Question 4: Employees Hired This Year

### Goal

Show employees whose hire date is within the current year.

### Think About

1. Look at the hire_date column.
2. Extract the year portion.
3. Compare it with the current year.

### Skills Practiced

* Date Functions
* WHERE filtering

### Expected Output

| Employee | Hire Date  |
| -------- | ---------- |
| Sarah    | 2026-01-10 |
| Mark     | 2026-03-15 |

---

# Additional Challenge Questions

After completing the four questions, try these:

### Beginner

* Total salary expense per department
* Employee count per hire year
* Lowest-paid employee

### Intermediate

* Top 3 highest-paid employees
* Department with the highest average salary
* Employees earning above the company average

### Advanced

* Rank employees by salary within each department
* Find employees hired in the last 90 days
* Calculate salary difference from department average

---

## Skills You'll Learn from This Project

* Aggregate Functions (`COUNT`, `AVG`, `MAX`, `MIN`, `SUM`)
* `GROUP BY`
* Table relationships and joins
* Date filtering
* Sorting results
* Basic analytical queries
