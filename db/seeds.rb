Address.create!([
  {streetInfo: "1633 Leytonstone Dr", additional1: "", additional2: "", city: "Wheaton", state: "IL", zip: "60189"}
])
AddressPerson.create!([
  {person_id: 1, address_id: nil},
  {person_id: 2, address_id: nil},
  {person_id: 3, address_id: nil},
  {person_id: 4, address_id: nil},
  {person_id: 5, address_id: nil},
  {person_id: 6, address_id: nil},
  {person_id: 7, address_id: nil},
  {person_id: 8, address_id: nil}
])
Department.create!([
  {name: "Art"}
])
DepartmentPerson.create!([
  {department_id: nil, person_id: 1},
  {department_id: nil, person_id: 2},
  {department_id: nil, person_id: 3},
  {department_id: nil, person_id: 4},
  {department_id: nil, person_id: 5},
  {department_id: nil, person_id: 6},
  {department_id: nil, person_id: 7},
  {department_id: nil, person_id: 8}
])
EmailPerson.create!([
  {person_id: 1, email_id: nil},
  {person_id: 2, email_id: nil},
  {person_id: 3, email_id: nil},
  {person_id: 4, email_id: nil},
  {person_id: 5, email_id: nil},
  {person_id: 6, email_id: nil},
  {person_id: 7, email_id: nil},
  {person_id: 8, email_id: nil}
])
Extension.create!([
  {ext: 1393}
])
ExtensionPerson.create!([
  {extension_id: nil, person_id: 1},
  {extension_id: nil, person_id: 2},
  {extension_id: nil, person_id: 3},
  {extension_id: nil, person_id: 4},
  {extension_id: nil, person_id: 5},
  {extension_id: nil, person_id: 6},
  {extension_id: nil, person_id: 7},
  {extension_id: nil, person_id: 8}
])
Gender.create!([
  {gender: "Female"},
  {gender: "Male"}
])
GenderPerson.create!([
  {gender_id: nil, person_id: 1},
  {gender_id: nil, person_id: 2},
  {gender_id: nil, person_id: 3},
  {gender_id: nil, person_id: 4},
  {gender_id: 2, person_id: 5},
  {gender_id: 2, person_id: 6},
  {gender_id: nil, person_id: 7},
  {gender_id: nil, person_id: 8}
])
GradeLevel.create!([
  {number: 0, name: "KindergartenAM"},
  {number: 0, name: "KindergartenPM"},
  {number: 1, name: "1st Grade"}
])
GradeLevelTeacher.create!([
  {grade_level_id: 1, teacher_id: 1},
  {grade_level_id: 2, teacher_id: 1},
  {grade_level_id: 3, teacher_id: 3},
  {grade_level_id: 3, teacher_id: 2}
])
NameTitle.create!([
  {title: "Mrs."},
  {title: "Ms."},
  {title: "Mr."}
])
NameTitlePerson.create!([
  {name_title_id: 1, person_id: 1},
  {name_title_id: 1, person_id: 2},
  {name_title_id: 1, person_id: 3},
  {name_title_id: 1, person_id: 4},
  {name_title_id: nil, person_id: 5},
  {name_title_id: nil, person_id: 6},
  {name_title_id: nil, person_id: 7},
  {name_title_id: nil, person_id: 8}
])
Person.create!([
  {firstName: "Maureen", lastName: "Romano"},
  {firstName: "Aimee", lastName: "Bostrand"},
  {firstName: "Michelle", lastName: "Gower"},
  {firstName: "Kristin", lastName: "Malmstedt"},
  {firstName: "Logan", lastName: "Althoff"},
  {firstName: "Dylan", lastName: "Falkenberg"},
  {firstName: "Oliver", lastName: "Kaplinski"},
  {firstName: "Adam", lastName: "Lilly"}
])
PersonRoleType.create!([
  {person_id: 1, role_type_id: 3},
  {person_id: 1, role_type_id: 4},
  {person_id: 2, role_type_id: 3},
  {person_id: 2, role_type_id: 4},
  {person_id: 3, role_type_id: 3},
  {person_id: 3, role_type_id: 4},
  {person_id: 4, role_type_id: 3},
  {person_id: 4, role_type_id: 5},
  {person_id: 5, role_type_id: 1},
  {person_id: 6, role_type_id: 1},
  {person_id: 7, role_type_id: 1},
  {person_id: 8, role_type_id: 1}
])
PhoneNumberPerson.create!([
  {person_id: 1, phone_number_id: nil},
  {person_id: 2, phone_number_id: nil},
  {person_id: 3, phone_number_id: nil},
  {person_id: 4, phone_number_id: nil},
  {person_id: 5, phone_number_id: nil},
  {person_id: 6, phone_number_id: nil},
  {person_id: 7, phone_number_id: nil},
  {person_id: 8, phone_number_id: nil}
])
Position.create!([
  {name: "Principal"},
  {name: "Psychologist"},
  {name: "Social Work"}
])
PositionPerson.create!([
  {position_id: nil, person_id: 1},
  {position_id: nil, person_id: 2},
  {position_id: nil, person_id: 3},
  {position_id: 2, person_id: 4},
  {position_id: nil, person_id: 5},
  {position_id: nil, person_id: 6},
  {position_id: nil, person_id: 7},
  {position_id: nil, person_id: 8}
])
RoleType.create!([
  {roleName: "Student"},
  {roleName: "Parent"},
  {roleName: "Staff"},
  {roleName: "Teacher"},
  {roleName: "Specials"}
])
RoomPerson.create!([
  {room_id: nil, person_id: 1},
  {room_id: nil, person_id: 2},
  {room_id: nil, person_id: 3},
  {room_id: nil, person_id: 4},
  {room_id: nil, person_id: 5},
  {room_id: nil, person_id: 6},
  {room_id: nil, person_id: 7},
  {room_id: nil, person_id: 8}
])
