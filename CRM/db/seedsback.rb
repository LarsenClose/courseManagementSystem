Department.destroy_all
Semester.destroy_all
Professor.destroy_all
Student.destroy_all
Section.destroy_all
Course.destroy_all

Semester.create(semester: 'Spring')
Semester.create(semester: 'Summer')
Semester.create(semester: 'Fall')
Semester.create(semester: 'Winter')

Department.create(name: 'CS')
Department.create(name: 'Math')
Department.create(name: 'Physics')
Department.create(name: 'Philosophy')
Department.create(name: 'Astronomy')
Department.create(name: 'History')
Department.create(name: 'Post-postmodernism (Integral Studies)')



Professor.create(name: 'Dr. Keaten', office:'419')
Professor.create(name: 'Dr. Powell', office:'486')
Professor.create(name: 'Elizabeth Aster', office:'439')
Professor.create(name: 'Fredrick Douglass', office:'318')
Professor.create(name: 'Dr. Eliasa', office:'364')
Professor.create(name: 'Dr. Smith', office:'211')
Professor.create(name: 'Dr. Eldser', office:'219')
Professor.create(name: 'Dr. Straffer', office:'210')

Course.create(department_id: 1, number: 3710, hours: 4)
Course.create(department_id: 3, number: 2400, hours: 3)
Course.create(department_id: 2, number: 4500, hours: 4)

Course.create(department_id: 1, number: 2840, hours: 4)
Course.create(department_id: 0, number: 3600, hours: 3)
Course.create(department_id: 4, number: 4500, hours: 4)




Section.create(course_id: 0, section_number: 3710-1, professor_id: 1, year: 2019, semester_id: 3)
Section.create(course_id: 0, section_number: 3710-2, professor_id: 1, year: 2019, semester_id: 3)

Section.create(course_id: 2, section_number: 3451, professor_id: 2, year: 2019, semester_id: 3)
Section.create(course_id: 2, section_number: 2432, professor_id: 4, year: 2019, semester_id: 3)


Section.create(course_id: 3, section_number: 2331, professor_id: 2, year: 2019, semester_id: 1)
Section.create(course_id: 3, section_number: 2232, professor_id: 4, year: 2019, semester_id: 1)



Section.create(course_id: 1, section_number: 2342, professor_id: 1, year: 2020, semester_id: 0)
Section.create(course_id: 1, section_number: 5461, professor_id: 3, year: 2020, semester_id: 0)

Section.create(course_id: 2, section_number: 3451, professor_id: 2, year: 2020, semester_id: 0)
Section.create(course_id: 2, section_number: 2432, professor_id: 4, year: 2020, semester_id: 0)


Section.create(course_id: 3, section_number: 2331, professor_id: 2, year: 2020, semester_id: 0)
Section.create(course_id: 3, section_number: 2232, professor_id: 4, year: 2020, semester_id: 0)







Section.create(course_id: 1, section_number: 2342, professor_id: 1, year: 2020, semester_id: 1)
Section.create(course_id: 1, section_number: 5461, professor_id: 3, year: 2020, semester_id: 1)

Section.create(course_id: 2, section_number: 3451, professor_id: 2, year: 2020, semester_id: 1)
Section.create(course_id: 2, section_number: 2432, professor_id: 4, year: 2020, semester_id: 1)


Section.create(course_id: 3, section_number: 2331, professor_id: 2, year: 2020, semester_id: 1)
Section.create(course_id: 3, section_number: 2232, professor_id: 4, year: 2020, semester_id: 1)






Section.create(course_id: 1, section_number: 2342, professor_id: 1, year: 2020, semester_id: 2)
Section.create(course_id: 1, section_number: 5461, professor_id: 3, year: 2020, semester_id: 2)

Section.create(course_id: 2, section_number: 3451, professor_id: 2, year: 2020, semester_id: 2)
Section.create(course_id: 2, section_number: 2432, professor_id: 4, year: 2020, semester_id: 2)


Section.create(course_id: 3, section_number: 2331, professor_id: 2, year: 2020, semester_id: 2)
Section.create(course_id: 3, section_number: 2232, professor_id: 4, year: 2020, semester_id: 2)


Student.create(name: 'Robin Hood', number: 956809)
Student.create(name: 'Erik Eaten', number: 956223)
Student.create(name: 'Sarah Goodwill', number: 908416)
Student.create(name: 'Jennifer Maxwell', number: 903265)
Student.create(name: 'Roger Smith', number: 923658)
Student.create(name: 'Erica Klien', number: 93658)