# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

RoleType.create(roleName: 'Student' )
RoleType.create(roleName: 'Parent' )
RoleType.create(roleName: 'Staff' )
RoleType.create(roleName: 'Principal' )
RoleType.create(roleName: 'PTCBoard' )

Address.create(streetInfo: '1800 Briarcliffe Blvd', city: 'Wheaton', state: 'IL', zip: '60189')
