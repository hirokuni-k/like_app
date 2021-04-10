EMAIL = "test@example.com"
PASSWORD = "password"
User.destroy_all
Post.destroy_all

user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

user2.posts.create!(content: "沖縄そば")
user1.posts.create!(content: "海ぶどう")
user3.posts.create!(content: "ゴーヤーチャンプルー")
user3.posts.create!(content: "サーターアンダギー")
user1.posts.create!(content: "タコライス")

User.create!(email: EMAIL, password: PASSWORD)

user2.posts.create!(content: "おはよう")
user3.posts.create!(content: "こんにちは")
user3.posts.create!(content: "こんばんは")

puts "初期データの投入に成功しました！"
