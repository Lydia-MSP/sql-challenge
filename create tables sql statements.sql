CREATE TABLE "departments" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
	"dept_no" varchar  NOT NULL,
    "from_date" varchar   NOT NULL,
    "to_date" varchar   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no","dept_no", "from_date"
     )
);


CREATE TABLE "dept_manager" (
     "dept_no" varchar   NOT NULL,
	 "emp_no" int   NOT NULL,
    "from_date" varchar   NOT NULL,
    "to_date" varchar   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "emp_no"
     )
);


CREATE TABLE "employees" (
    "emp_no" int  NOT NULL,
    "birth_date" varchar   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "gender" char (1)   NOT NULL,
    "hire_date" varchar   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" int  NOT NULL,
    "salary" varchar   NOT NULL,
    "from_date" varchar   NOT NULL,
    "to_date" varchar   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles" (
    "emp_no" int   NOT NULL,
    "title" varchar   NOT NULL,
    "from_date" varchar   NOT NULL,
    "to_date" varchar   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "emp_no","from_date"
     )
);