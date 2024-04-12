# Create a main sample user.
User.create!(name:  "Booshan Jayachandran",
             email: "booshanj@railstutorial.org",
             password: "booshan",
             password_confirmation: "booshan",
             admin:true)
# Generate a bunch of additional users.
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name,email: email, password: password, password_confirmation: password)
end