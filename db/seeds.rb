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
  {person_id: 7, address_id: 4}
])
Person.create!([
  {firstName: "Matt", lastName: "Knows"},
  {firstName: "Stephanie", lastName: "Knows"},
  {firstName: "Lily", lastName: "Knows"},
  {firstName: "Mitch", lastName: "Dubinski"},
  {firstName: "Andrea", lastName: "Romano"},
  {firstName: "Martha", lastName: "Aconomos"},
  {firstName: "Cat", lastName: "Aconomos"}
])
PersonRoleType.create!([
  {person_id: 1, role_type_id: 2},
  {person_id: 2, role_type_id: 2},
  {person_id: 2, role_type_id: 5},
  {person_id: 3, role_type_id: 1},
  {person_id: 4, role_type_id: 3},
  {person_id: 4, role_type_id: 4},
  {person_id: 5, role_type_id: 3},
  {person_id: 5, role_type_id: 4},
  {person_id: 6, role_type_id: 2},
  {person_id: 7, role_type_id: 1}
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
  {person_id: 7, phone_number_id: nil}
])
RoleType.create!([
  {roleName: "Student"},
  {roleName: "Parent"},
  {roleName: "Staff"},
  {roleName: "Principal"},
  {roleName: "PTCBoard"}
])
