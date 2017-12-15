# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

#-----------こんな感じでデータベースに入れてます参考までにmm-------
# if File.exist?('db/file.csv') == true
#   CSV.foreach('db/file.csv', :headers => true,encoding: "UTF-8") do |row|
#     Group.create(:name => row[0], :cathegory => row[1], :thumbURL => row[2], :detailURL => row[3], :twitterURL => row[4], :fbURL => row[5], :hpURL => row[6] )
#   end
# end

# if File.exist?('db/koobee-interview.csv') == true
#   CSV.foreach('db/koobee-interview.csv', :headers => true,encoding: "UTF-8") do |row|
#     Article.create(:name => row[0], :aboutText => row[1], :copyText => row[2], :thumbURL => row[3], :link => row[4] )
#   end
# end
