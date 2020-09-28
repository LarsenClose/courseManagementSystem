Department.destroy_all
Semester.destroy_all
Professor.destroy_all
Student.destroy_all
Sections.destroy_all
Courses.destroy_all
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