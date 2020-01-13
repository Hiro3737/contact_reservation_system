User.create!(name: "Example User",
             email: "example@railstutorial.org",
             password: "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name: "Example Teacher1",
             email: "teacher1@railstutorial.org",
             password: "foobar",
             password_confirmation: "foobar",
             admin: false,
             user_type:2,
             activated: true,
             activated_at: Time.zone.now)


User.create!(name: "Example Teacher2",
             email: "teacher2@railstutorial.org",
             password: "foobar",
             password_confirmation: "foobar",
             admin: false,
             user_type:2,
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
Point.create!(item: "勤怠A")
Point.create!(item: "勤怠B")
Point.create!(item: "勤怠C")

Tag.create!(tag_name: "記載ミス")
Tag.create!(tag_name: "読み間違い")
Tag.create!(tag_name: "理解不足")

5.times do |n|
 Booking.create!(title: "質問#{n + 1}",
                achievement: "実現したいこと#{n + 1}",
                problem: "グラフが作成できない#{n + 1}",
                tried_thing: "gemをインストールした#{n + 1}",
                lesson_date: Time.zone.now,
                status: 1,
                point_id: 1,
                user_id: 1,
                tag_id: 1,
                teacher_id: 1)
end
                
