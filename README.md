# 🗄️ SQL Learning Journal

![Status](https://img.shields.io/badge/status-actively%20learning-brightgreen)
![Language](https://img.shields.io/badge/language-T--SQL-blue)
![Progress](https://img.shields.io/badge/type-learning%20journal-yellow)

> 🚧 **This is a learning journal, not a finished project.** Each folder was added on the day I actually learned that topic. Once my foundational learning is complete, I'll move on to building real, standalone projects — this repo exists to document the process honestly, step by step.

## 📌 About

I'm learning SQL alongside Python, with the goal of eventually moving into data/AI-focused work. This repository holds my query exercises, organized by topic in the order I learned them, written against a small runnable school database. Every query in this repo has been tested and returns real results. Every commit corresponds to a specific topic learned on that day — check the [commit history](../../commits/main) to see the full timeline.

## 📚 Contents

| # | Topic | What's Inside |
|---|---|---|
| 00 | [Schema & Sample Data](00-schema-and-sample-data) | Table creation + sample rows used by every query below |
| 01 | [DDL: CREATE / ALTER TABLE](01-ddl-create-alter-table) | Creating tables, adding/dropping columns |
| 02 | [SELECT Basics](02-select-basics) | Selecting all or specific columns |
| 03 | [WHERE Filtering](03-where-filtering) | Filtering rows with AND / OR |
| 04 | [Calculated Columns](04-calculated-columns) | Arithmetic inside a SELECT statement |
| 05 | [INSERT INTO](05-insert-statements) | Adding new rows |
| 06 | [DELETE vs TRUNCATE](06-delete-truncate) | Removing rows, two different ways |
| 07 | [UPDATE](07-update-statements) | Modifying existing rows |
| 08 | [Aggregate Functions](08-aggregate-functions) | COUNT, SUM, AVG, MAX |
| 09 | [GROUP BY & HAVING](09-group-by-having) | Grouping rows and filtering groups |

## ▶️ How to Run

1. Run [`00-schema-and-sample-data/schema.sql`](00-schema-and-sample-data/schema.sql) to create the tables.
2. Run [`00-schema-and-sample-data/sample-data.sql`](00-schema-and-sample-data/sample-data.sql) to populate them.
3. Run any query from folders `01` through `09` — they return real, verified results against this data.

⚠️ **Note:** `06-delete-truncate` contains destructive operations (DELETE / TRUNCATE). If you want to keep experimenting with other folders afterward, re-run the schema and sample data files to reset the database.

Queries are written in **T-SQL** (Microsoft SQL Server dialect).

## 🧩 Schema

A small school database with three related tables:

```sql
courses  (course_id, course_name, capacity)
students (student_id, first_name, last_name, city, club, gender)
grades   (grade_id, student_id, course_id, exam1, exam2, exam3, average, status)
```

## 💡 Key Takeaways

- **WHERE vs HAVING:** `WHERE` filters individual rows *before* grouping; `HAVING` filters groups *after* an aggregate function has been applied.
- **DELETE vs TRUNCATE:** `DELETE` removes specific rows based on a condition and can be rolled back; `TRUNCATE` removes all rows at once and is faster but less flexible.
- **Aggregate functions** (`COUNT`, `SUM`, `AVG`, `MAX`) are almost always used with `GROUP BY` when you want a breakdown per category instead of one overall result.

## 🎯 What's Next

- JOINs (connecting the `students`, `courses` and `grades` tables together)
- Subqueries
- More real-world, multi-table exercises

---

📎 Also see: [Python Learning Journal](https://github.com/busesrkya/python-learning-journal) — the same journal-style approach applied to Python.
