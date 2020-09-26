# Web Application

## Larsen Close

### Assignment 02



> Build out most of the functionality of a course management system.


#### Objects

* A department has a name ("CS")
* A professor has a name and an office.
* A course belongs to a department and has a number (3710) and the number of credit hours(4)
* A semester is one of "Spring", "Suummer", or "Fall"
* A student had a name and a numeric identifier
* A section belongs to a course, a professor, a semester, and has a year.
* A join table that connects sections and students.

1. rails generate model SectionsStudents section:references student:references --force-plural
2. rails generate model Placement student:references section:references
3. rails generate migration CreateJoinTableSectionStudent section student

##### Pages display actual data, not foreign keys. These examples show the difference.

```
diff --git a/app/views/courses/index.html.erb b/app/views/courses/index.html.erb
index f158f84..099e3d5 100644
--- a/app/views/courses/index.html.erb
+++ b/app/views/courses/index.html.erb
@@ -15,7 +15,7 @@
   <tbody>
     <% @courses.each do |course| %>
       <tr>
-        <td><%= course.department\_id %></td>
+        <td><%= course.department.name %></td>
	 <td><%= course.number %></td>
	 <td><%= course.hours %></td>
	 <td><%= link_to 'Show', course %></td>td
```


Appropriate data is looped through in each `show.html.erb`

Dropdowns or checkboxes are created in approprate `.erb` files

##### A `db/seeds.rb` for possible prompt

```
Semester.create(semester: 'Spring')
Semester.create(semester: 'Summer')
Semester.create(semester: 'Fall')
Department.create(name: 'CS')
Department.create(name: 'Math')
Department.create(name: 'Physics')
Course.create(department\_id: 1, number: 3710, hours: 4)
```


### Notes

#### Relationships

* Associations between tables
* One to one
* One to many
* Many to Many

##### One to one

```
class Employee < ActiveRecord::Base
  has_one :office
end
class Office < ActiveRecord::Base
  belongs_to :employee # foreign key - employee_id
end
```

##### One to Many

```
class Manager < ActiveRecord::Base
  has_many :employees
end
class Employee < ActiveRecord::Base
  belongs_to :manager # foreign key - manager_id
end
```

##### Many to Many

```
class Assignment < ActiveRecord::Base
  belongs_to :programmer         # foreign key - programmer_id
  belongs_to :project            # foreign key - project_id
end

class Programmer < ActiveRecord::Base
  has_many :assignments
  has_many :projects, through: :assignments
end

class Project < ActiveRecord::Base
  has_many :assignments
  has_many :programmers, through: :assignments
end
```

##### Has and Belongs to Many

```
class Programmer < ActiveRecord::Base
  has_and_belongs_to_many :projects
end

class Project < ActiveRecord::Base
  has_and_belongs_to_many :programmers
end
```

Table created with the names in alphabbetical order.

> rails generate model ProgrammersProjects programmer:references project:references

---
gist
---

* Create two models and a join table
* Update two models with HABTM
* Use select options similarly as before
* Iterate in show view using foreign key
* Add foreign key to permit in controller

```
rails new bookslibraries
cd bookslibraries
rails generate scaffold Book name:string
rails generate scaffold Library name:string
rails generate model BooksLibraries 	book:references library:references
rails db:migrate
```

Then update controllers.rb and models.rb for both





