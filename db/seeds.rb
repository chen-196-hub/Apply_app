# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do |t|
  Company.create!(
    name: "Company#{t+1}",
    content: "content#{t+1}"*(t+1),
    memo:"memo#{t+1}"*(t+1),
    apply_site:"http://example.company#{t+1}/site",
    recruit_status: rand(7),
    sequence:t+1
  )
end

