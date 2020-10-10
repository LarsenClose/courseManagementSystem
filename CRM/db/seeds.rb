Department.destroy_all
Semester.destroy_all
Professor.destroy_all
Student.destroy_all
Section.destroy_all
Course.destroy_all
Semester.create(semester: 'Spring')
Semester.create(semester: 'Summer')
Semester.create(semester: 'Fall')
Department.create(name: 'CS')
Department.create(name: 'Math')
Department.create(name: 'Physics')
Department.create(name: 'Philosophy')
Department.create(name: 'Astronomy')
Professor.create(name: 'Dr. Keaten', office:'419')
Professor.create(name: 'Dr. Powell', office:'486')
Professor.create(name: 'Elizabeth Aster', office:'439')
Professor.create(name: 'Fredrick Douglass', office:'318')
Professor.create(name: 'Dr. Eliasa', office:'364')

Course.create(department_id: 1, number: 3710, hours: 4)
Course.create(department_id: 3, number: 2400, hours: 3)
Course.create(department_id: 2, number: 4500, hours: 4)

Course.create(department_id: 1, number: 3710, hours: 4)
Course.create(department_id: 3, number: 2400, hours: 3)
Course.create(department_id: 2, number: 4500, hours: 4)




Section.create(course_id: 1, section_number: 02, professor_id: 1, year: 2019, semester_id: 1)
Section.create(course_id: 1, section_number: 01, professor_id: 3, year: 2019, semester_id: 1)

Section.create(course_id: 2, section_number: 01, professor_id: 2, year: 2019, semester_id: 1)
Section.create(course_id: 2, section_number: 02, professor_id: 4, year: 2019, semester_id: 1)


Section.create(course_id: 3, section_number: 01, professor_id: 2, year: 2019, semester_id: 1)
Section.create(course_id: 3, section_number: 02, professor_id: 4, year: 2019, semester_id: 1)




Student.create(name: 'Robin Hood', number: 956809)
Student.create(name: 'Erik Eaten', number: 956223)
Student.create(name: 'Sarah Goodwill', number: 908416)
Student.create(name: 'Jennifer Maxwell', number: 903265)
Student.create(name: 'Roger Smith', number: 923658)
Student.create(name: 'Erica Klien', number: 93658)