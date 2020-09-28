# Web Application

## Larsen Close

### Assignment 02

> Build out most of the functionality of a course management system.

<img src="./erd.svg">

The routes are just the plural of the model names, I have it seeded with:

``` rails
Semester.create(semester: 'Spring')
Semester.create(semester: 'Summer')
Semester.create(semester: 'Fall')
Department.create(name: 'CS')
Department.create(name: 'Math')
Department.create(name: 'Physics')
Professor.create(name: 'Batman', office:'theRoof')
Course.create(department_id: 1, number: 3710, hours: 4)
Section.create(course_id: 1, professor_id: 1, year: 2019, semester_id: 1)
Student.create(name: 'Robin Hood', number: 9568)
```

Build wise I used:

``` bash
rails generate scaffold Department name:string;
rails generate scaffold Professor name:string office:string;
rails generate scaffold Course number:integer hours:integer;
rails generate scaffold Student name:string number:integer;
rails generate scaffold Section year:integer;
rails generate model SectionsStudents section:references student:references --force-plural;
rails generate scaffold Semester semester:string;
rails generate migration CreateJoinTableSectionStudent section student
```
Not using rubymine so I:

1. installed graphviz
2. installed graphviz-rubymine
3. Added ```gem 'rails-erd'``` to :development in the gemfile
4. Reran ```bundle install```
5. Created and customized a configuration file ```.erdconfig```
6. Ran ```bundle exec erd```

#### TODO's

I'm still not sure what I need to be doing MCV wise to show the relationships between students and sections. I tried a few differen't loop methods but I think I may be missing where or how to make the variables optionals (nullable) or some other issue.
