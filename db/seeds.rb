# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdmin.new.call
puts 'CREATED ADMIN USER: ' << user.email
User.create( [ 
    {email: "test@yahoo.com",   password: "123123123", password_confirmation: "123123123", role_type: "business"},
    {email: "test1@yahoo.com",  password: "123123123", password_confirmation: "123123123", role_type: "manager"},
    {email: "test2@yahoo.com",  password: "123123123", password_confirmation: "123123123", role_type: "employee"},
    {email: "test3@yahoo.com",  password: "123123123", password_confirmation: "123123123", role_type: "employee"},
    {email: "test4@yahoo.com",  password: "123123123", password_confirmation: "123123123", role_type: "employee"},
    {email: "test5@yahoo.com",  password: "123123123", password_confirmation: "123123123", role_type: "employee"},
    {email: "test6@yahoo.com",  password: "123123123", password_confirmation: "123123123", role_type: "employee"},
    {email: "test7@yahoo.com",  password: "123123123", password_confirmation: "123123123", role_type: "employee"},
    {email: "test8@yahoo.com",  password: "123123123", password_confirmation: "123123123", role_type: "employee"},
    {email: "test9@yahoo.com",  password: "123123123", password_confirmation: "123123123", role_type: "employee"},
    {email: "test10@yahoo.com", password: "123123123", password_confirmation: "123123123", role_type: "employee"},
    {email: "test11@yahoo.com", password: "123123123", password_confirmation: "123123123", role_type: "employee"},
    {email: "test12@yahoo.com", password: "123123123", password_confirmation: "123123123", role_type: "employee"},
    {email: "test13@yahoo.com", password: "123123123", password_confirmation: "123123123", role_type: "employee"},
    {email: "test14@yahoo.com", password: "123123123", password_confirmation: "123123123", role_type: "employee"},
  ])    