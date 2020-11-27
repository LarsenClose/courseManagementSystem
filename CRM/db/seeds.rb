
Professor.create!([
  {name: "Dr. Keaten", office: "419"},
  {name: "Dr. Powell", office: "486"},
  {name: "Elizabeth Aster", office: "439"},
  {name: "Fredrick Douglass", office: "318"},
  {name: "Dr. Eliasa", office: "364"},
  {name: "Dr. Smith", office: "211"},
  {name: "Dr. Eldser", office: "219"},
  {name: "Dr. Straffer", office: "210"},
  {name: "Roger Penrose", office: "213"}
])
Department.create!([
  {name: "CS"},
  {name: "Math"},
  {name: "Physics"},
  {name: "Philosophy"},
  {name: "Astronomy"},
  {name: "History"},
  {name: "Post-postmodernism, Integral Studies"},
  {name: "Biology"}
])

Course.create!([
  {department_id: 1, number: 2400, hours: 3},
  {department_id: 2, number: 3600, hours: 3},
  {department_id: 3, number: 1800, hours: 3},
  {department_id: 4, number: 1030, hours: 3},
  {department_id: 5, number: 3750, hours: 4},
  {department_id: 6, number: 4500, hours: 4}
])

Student.create!([
  {name: "Robin Hood", number: 956809},
  {name: "Erik Eaten", number: 956223},
  {name: "Sarah Goodwill", number: 908416},
  {name: "Jennifer Maxwell", number: 903265},
  {name: "Roger Smith", number: 923658},
  {name: "Erica Klien", number: 93658},
  {name: "Summer Alexan", number: 900348}
])
Semester.create!([
  {semester: "Spring"},
  {semester: "Summer"},
  {semester: "Fall"},
  {semester: "Winter"}
])
Section.create!([
  {course_id: 1, professor_id: 2, year: 2019, semester_id: 3, section_number: 3451},
  {course_id: 2, professor_id: 4, year: 2019, semester_id: 3, section_number: 2432},
  {course_id: 3, professor_id: 2, year: 2019, semester_id: 1, section_number: 2331},
  {course_id: 4, professor_id: 4, year: 2019, semester_id: 1, section_number: 2232},
  {course_id: 5, professor_id: 3, year: 2020, semester_id: 1, section_number: 5461},
  {course_id: 1, professor_id: 2, year: 2020, semester_id: 2, section_number: 3451},
  {course_id: 2, professor_id: 4, year: 2020, semester_id: 2, section_number: 2432},
  {course_id: 3, professor_id: 2, year: 2020, semester_id: 2, section_number: 2331},
  {course_id: 3, professor_id: 4, year: 2020, semester_id: 2, section_number: 2232}
])

SectionsStudents.create!([
  {section_id: 6, student_id: 7},
  {section_id: 7, student_id: 7},
  {section_id: 8, student_id: 7},
  {section_id: 9, student_id: 7},
  {section_id: 3, student_id: 6},
  {section_id: 4, student_id: 6},
  {section_id: 7, student_id: 6},
  {section_id: 8, student_id: 6},
  {section_id: 1, student_id: 5},
  {section_id: 5, student_id: 5},
  {section_id: 6, student_id: 5},
  {section_id: 7, student_id: 5},
  {section_id: 9, student_id: 5},
  {section_id: 1, student_id: 4},
  {section_id: 2, student_id: 4},
  {section_id: 6, student_id: 4},
  {section_id: 7, student_id: 4},
  {section_id: 8, student_id: 4},
  {section_id: 9, student_id: 4},
  {section_id: 4, student_id: 3},
  {section_id: 5, student_id: 3},
  {section_id: 6, student_id: 3},
  {section_id: 7, student_id: 3},
  {section_id: 8, student_id: 3},
  {section_id: 9, student_id: 3},
  {section_id: 4, student_id: 2},
  {section_id: 5, student_id: 2},
  {section_id: 6, student_id: 2},
  {section_id: 7, student_id: 2},
  {section_id: 8, student_id: 2},
  {section_id: 9, student_id: 2},
  {section_id: 4, student_id: 1},
  {section_id: 5, student_id: 1},
  {section_id: 6, student_id: 1},
  {section_id: 7, student_id: 1},
  {section_id: 8, student_id: 1},
  {section_id: 9, student_id: 1}
])