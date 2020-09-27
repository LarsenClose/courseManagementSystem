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

---
class Section < ApplicationRecord
  belongs_to :course
  belongs_to :professor
  belongs_to :semester
end
---
class Course < ApplicationRecord
  belongs_to :department
end
