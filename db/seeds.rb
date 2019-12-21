User.create!(name: "Example User",
             email: "example@railstutorial.org",
             password: "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

5.times do |n|
  name = Faker::Name.name
  email = "example-#{n + 1}@railstutorial.org"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

Point.create!(item: "勤怠S")

Tag.create!(tag_name: "記載ミス")


Booking.create!(title: "質問1",
                achievement: "実現したいこと",
                problem: "グラフが作成できない",
                tried_thing: "gemをインストールした",
                lesson_date: Time.zone.now,
                status: 1,
                point_id: 1,
                user_id: 1,
                tag_id: 1,
                teacher_id: 1)
                
