User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             shozoku:"中野",
             password:              "foobar",
             password_confirmation: "foobar",
             basic_work_time: Time.zone.parse("07:30"),
             specified_work_time: Time.zone.parse("08:00"),
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

30.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              shozoku:"中目黒",
              basic_work_time:  Time.zone.parse("07:30"),
              specified_work_time: Time.zone.parse("08:00"),
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now
              )
 
 BasicInfo.create!(basic_work_time: DateTime.new(DateTime.now.year, DateTime.now.month, DateTime.now.day,DateTime.now.hour,DateTime.now.min,0),
                   specified_work_time: DateTime.new(DateTime.now.year, DateTime.now.month, DateTime.now.day,DateTime.now.hour,DateTime.now.min,0))
             
              
end
