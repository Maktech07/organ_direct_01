Address.create!([
  {streetInfo: "1800 Briarcliffe Blvd", additional1: nil, additional2: nil, city: "Wheaton", state: "IL", zip: "60189"},
  {streetInfo: "1633 Leytonstone Dr", additional1: "", additional2: "", city: "Wheaton", state: "IL", zip: "60189"},
  {streetInfo: "134 Briarcliffe Rd", additional1: "", additional2: "", city: "Wheaton", state: "IL", zip: "60189"},
  {streetInfo: "930 Clock Lane", additional1: "", additional2: "", city: "Glen Ellyn", state: "IL", zip: "60186"}
])
AddressPerson.create!([
  {person_id: 1, address_id: 2},
  {person_id: 2, address_id: 2},
  {person_id: 3, address_id: 2},
  {person_id: 4, address_id: 1},
  {person_id: 5, address_id: 1},
  {person_id: 6, address_id: 4},
  {person_id: 7, address_id: 4},
  {person_id: 8, address_id: nil},
  {person_id: 9, address_id: 1},
  {person_id: 10, address_id: 1},
  {person_id: 11, address_id: 1},
  {person_id: 12, address_id: 1}
])
Email.create!([
  {email: "mattknowles7@hotmail.com"},
  {email: "sknowles27@hotmail.com"},
  {email: "principal@briarglenn.edu"},
  {email: "weldon@yahoo.com"},
  {email: "mromano@ccsd89.org"},
  {email: "abostrand@ccsd89.org"},
  {email: "mgower@ccsd89.org"},
  {email: "glydon@ccsd89.org"},
  {email: "sbarth@ccsd89.org"}
])
EmailPerson.create!([
  {person_id: nil, email_id: 1},
  {person_id: nil, email_id: 3},
  {person_id: 2, email_id: 2},
  {person_id: nil, email_id: nil},
  {person_id: nil, email_id: nil},
  {person_id: nil, email_id: nil},
  {person_id: nil, email_id: nil},
  {person_id: 4, email_id: nil},
  {person_id: nil, email_id: nil},
  {person_id: nil, email_id: nil},
  {person_id: nil, email_id: nil},
  {person_id: nil, email_id: nil},
  {person_id: nil, email_id: nil},
  {person_id: nil, email_id: nil},
  {person_id: 8, email_id: 4},
  {person_id: nil, email_id: 6},
  {person_id: 5, email_id: 5},
  {person_id: nil, email_id: nil},
  {person_id: 9, email_id: 6},
  {person_id: 10, email_id: 7},
  {person_id: 11, email_id: 8},
  {person_id: 12, email_id: 9}
])
Extension.create!([
  {ext: 3300},
  {ext: 3305},
  {ext: 3317},
  {ext: 3309},
  {ext: 3314},
  {ext: 3324},
  {ext: 3325},
  {ext: 3311},
  {ext: 3312},
  {ext: 3313},
  {ext: 3307},
  {ext: 3326},
  {ext: 3328},
  {ext: 3320},
  {ext: 3323},
  {ext: 3318}
])
GradeLevel.create!([
  {number: 0, name: "KindergartenAM"},
  {number: 1, name: "First Grade"},
  {number: 2, name: "Second Grade"},
  {number: 3, name: "Third Grade"},
  {number: 4, name: "Fourth Grade"},
  {number: 5, name: "Fifth Grade"},
  {number: 0, name: "KindergartenPM"},
  {number: nil, name: "GIP Primary"},
  {number: nil, name: "GIP Structured"},
  {number: nil, name: "Structured Intermediate"}
])
GradeLevelTeacher.create!([
  {grade_level_id: nil, person_id: 5},
  {grade_level_id: 1, person_id: 5},
  {grade_level_id: 2, person_id: 8}
])
NameTitle.create!([
  {title: "Mr."},
  {title: "Ms."},
  {title: "Mrs."}
])
NameTitlePerson.create!([
  {name_title_id: 1, person_id: 4},
  {name_title_id: 3, person_id: nil},
  {name_title_id: 1, person_id: nil},
  {name_title_id: 3, person_id: nil},
  {name_title_id: 3, person_id: nil},
  {name_title_id: 3, person_id: nil},
  {name_title_id: 3, person_id: nil},
  {name_title_id: nil, person_id: 8},
  {name_title_id: nil, person_id: nil},
  {name_title_id: nil, person_id: 5},
  {name_title_id: 3, person_id: nil},
  {name_title_id: 3, person_id: 9},
  {name_title_id: 3, person_id: 10},
  {name_title_id: 3, person_id: 11},
  {name_title_id: 3, person_id: 12}
])
Person.create!([
  {firstName: "Matt", lastName: "Knows"},
  {firstName: "Stephanie", lastName: "Knows"},
  {firstName: "Lily", lastName: "Knows"},
  {firstName: "Mitch", lastName: "Dubinski"},
  {firstName: "Maureen", lastName: "Romano"},
  {firstName: "Martha", lastName: "Aconomos"},
  {firstName: "Cat", lastName: "Aconomos"},
  {firstName: "Horris", lastName: "Winston"},
  {firstName: "Aimee", lastName: "Bostrand"},
  {firstName: "Michelle", lastName: "Gower"},
  {firstName: "Gina", lastName: "Lydon"},
  {firstName: "Shawn", lastName: "Barth"}
])
PersonRoleType.create!([
  {person_id: 1, role_type_id: 2},
  {person_id: 2, role_type_id: 2},
  {person_id: 2, role_type_id: 5},
  {person_id: 3, role_type_id: 1},
  {person_id: 4, role_type_id: 3},
  {person_id: 4, role_type_id: 4},
  {person_id: 5, role_type_id: 3},
  {person_id: 6, role_type_id: 2},
  {person_id: 7, role_type_id: 1},
  {person_id: 5, role_type_id: 6},
  {person_id: 8, role_type_id: 3},
  {person_id: 8, role_type_id: 6},
  {person_id: 9, role_type_id: 3},
  {person_id: 9, role_type_id: 6},
  {person_id: 10, role_type_id: 3},
  {person_id: 10, role_type_id: 6},
  {person_id: 11, role_type_id: 3},
  {person_id: 11, role_type_id: 6},
  {person_id: 12, role_type_id: 3},
  {person_id: 12, role_type_id: 6}
])
PhoneNumber.create!([
  {number: "630-555-1234"},
  {number: "773-839-1900"},
  {number: "630-345-9600"},
  {number: "847-910-7200"}
])
PhoneNumberPerson.create!([
  {person_id: 1, phone_number_id: 4},
  {person_id: 2, phone_number_id: 2},
  {person_id: 3, phone_number_id: nil},
  {person_id: 4, phone_number_id: nil},
  {person_id: 5, phone_number_id: nil},
  {person_id: 6, phone_number_id: 3},
  {person_id: 7, phone_number_id: nil},
  {person_id: 8, phone_number_id: nil},
  {person_id: 9, phone_number_id: nil},
  {person_id: 10, phone_number_id: nil},
  {person_id: 11, phone_number_id: nil},
  {person_id: 12, phone_number_id: nil}
])
RoleType.create!([
  {roleName: "Student"},
  {roleName: "Parent"},
  {roleName: "Staff"},
  {roleName: "Principal"},
  {roleName: "PTCBoard"},
  {roleName: "Teacher"},
  {roleName: "Specials"}
])
