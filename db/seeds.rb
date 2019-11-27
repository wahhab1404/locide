# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create! :email => 'doe@gmail.com', :password => '123456', :password_confirmation => '123456', :first_name => 'John', :last_name => 'Doe', :city => 'Riyadh', :country => 'Saudi Arabia', :phone => '123456789', :role => 'guide', :about_me => 'i am a guide in Riyadh'
##############
##############
user = User.create! :email => 'smith@gmail.com', :password => '123456', :password_confirmation => '123456', :first_name => 'John', :last_name => 'Smith', :city => 'Jeddah', :country => 'Saudi Arabia', :phone => '113355779', :role => 'guide',:about_me => 'Hi .. wellcome to my trip'
##############
##############
user = User.create! :email => 'wang@gmail.com', :password => '123456', :password_confirmation => '123456', :first_name => 'Frank', :last_name => 'Wong', :city => 'Riyadh', :country => 'Saudi Arabia', :phone => '112233445', :role => 'guide', :about_me => 'join me'
##############
##############
user = User.create! :email => 'zel@gmail.com', :password => '123456', :password_confirmation => '123456', :first_name => 'Alicia', :last_name => 'Zelaya', :city => 'Riyadh', :country => 'Saudi Arabia', :phone => '223344556', :role => 'user'
##############
##############
user = User.create! :email => 'wall@gmail.com', :password => '123456', :password_confirmation => '123456', :first_name => 'Jenn', :last_name => 'Wall', :city => 'Riyadh', :country => 'Saudi Arabia', :phone => '334455667', :role => 'user'
##############
##############
user = User.create! :email => 'nar@gmail.com', :password => '123456', :password_confirmation => '123456', :first_name => 'Ramesh', :last_name => 'Narayan', :city => 'Riyadh', :country => 'Saudi Arabia', :phone => '445566778', :role => 'user'
##############
##############
user = User.create! :email => 'muhannad@gmail.com', :password => '123456', :password_confirmation => '123456', :first_name => 'muhannad', :last_name => 'A', :city => 'Riyadh', :country => 'Saudi Arabia', :phone => '998866554', :role => 'user'
##############
##############
trip = Trip.create! :user_id => 1, :name => 'Masmak', :description => 'The Masmak ( Qaṣr al-Maṣmak) is a clay and mud-brick fort, with four watchtowers and thick walls, founded on stone blocks, lying in the center of Riyadh, in the old quarters. This building played a major part in the kingdoms history, as it was here that the recapture of Riyadh, led by Ibn Saud, occurred on 14 January 1902.', :places => 'Riyadh', :points_of_interest => '', :time => '2019-12-22 00:00:00', :duration => '4hr', :img => ''
##############
##############
trip = Trip.create! :user_id => 1, :name => 'Aldriah', :description => 'AlDiryah is the first Saudi state capital established in 1745 (1158H) which has the most glorious buildings and attractions. Join us for two days where we explore the Kingdom’s second UNESCO World Heritage Site.', :places => 'Riyadh', :points_of_interest => '', :time => '2019-12-07 00:00:00', :duration => '6hr', :img => ''
##############
##############
trip = Trip.create! :user_id => 2, :name => 'Alsouda', :description => 'is a tourist village in the Abha region of Saudi Arabia, located about 28 kilometres (17 mi) from the city of Abha. It is 3,015 metres (9,892 ft) above sea level,[citation needed] and its mountains are covered with dense juniper trees', :places => 'Asir', :points_of_interest => '', :time => '2020-03-23 00:00:00', :duration => '5hr', :img => 'https://images.app.goo.gl/VVjfojDxuJ6bJ7XX9'  
##############
##############
trip = Trip.create! :user_id => 2, :name => 'Al-Maqar', :description => 'Al-Maqar palace in the Asir region is an architectural marvel. It looks like a fictional palace come to life from the pages of a fantasy book. It erupts tall and beautiful in an otherwise subtle city.
The palace is illuminated with lights that make it appear to glow. As Asir is a cold region, in the winter fog looms around the castle', :places => 'Asir', :points_of_interest => '', :time => '2020-05-10 00:00:00', :duration => '5hr', :img => 'https://images.app.goo.gl/nULyh8fcMoASrTxPA'
##############
##############
trip = Trip.create! :user_id => 3, :name => 'Alsouda', :description => 'is a tourist village in the Abha region of Saudi Arabia, located about 28 kilometres (17 mi) from the city of Abha. It is 3,015 metres (9,892 ft) above sea level,[citation needed] and its mountains are covered with dense juniper trees', :places => 'Jeddah', :points_of_interest => '', :time => '2019-12-23 00:00:00', :duration => '5hr', :img => 'https://images.app.goo.gl/x8UkzszER7QrPP148 '
##############
##############
trip = Trip.create! :user_id => 3, :name => 'Alsouda', :description => 'is a tourist village in the Abha region of Saudi Arabia, located about 28 kilometres (17 mi) from the city of Abha. It is 3,015 metres (9,892 ft) above sea level,[citation needed] and its mountains are covered with dense juniper trees', :places => 'Asir', :points_of_interest => '', :time => '2020-04-10 00:00:00', :duration => '5hr', :img => 'https://images.app.goo.gl/x8UkzszER7QrPP148 '
##############
##############
trip = Trip.create! :user_id => 3, :name => 'Aldriah', :description => 'AlDiryah is the first Saudi state capital established in 1745 (1158H) which has the most glorious buildings and attractions. Join us for two days where we explore the Kingdom’s second UNESCO World Heritage Site.', :places => 'Riyadh', :points_of_interest => '', :time => '2020-08-07 00:00:00', :duration => '6hr', :img => 'https://images.app.goo.gl/VVjfojDxuJ6bJ7XX9'
##############
##############
trip = Trip.create! :user_id => 4, :name => 'Al-Thumamah', :description => 'AlDiryah is the first Saudi state capital established in 1745 (1158H) which has the most glorious buildings and attractions. Join us for two days where we explore the Kingdom’s second UNESCO World Heritage Site.', :places => 'Riyadh', :points_of_interest => '', :time => '2019-12-07 00:00:00', :duration => '6hr', :img => 'https://ammartours.com/wp-content/uploads/Untitled-6-Copy-Copy-2.png'
##############
##############
trip = Trip.create! :user_id => 4, :name => 'Nova Safari', :description => 'Nofa safari park used to be accessible only through corporate visits, VIP bookings and events. I’ve visited Nofa on several occasions during these events and private visits, always hoping they’d open this amazing place for the public one day.  Starting from November 2017 this dream came true and the Nofa resort has finally opened their safaris for the public!', :places => 'Riyadh', :points_of_interest => '', :time => '2020-07-13 00:00:00', :duration => '6hr', :img => 'https://images.app.goo.gl/wnokhEBGMvKR2sMs5   '
##############
##############
trip = Trip.create! :user_id => 5, :name => "AL Fara'a Park", :description => 'One of the most beautiful tourist parks in Abha
It is the largest family park in the Asir region, covering an area of ​​200,000 square meters. Its summer activities include Egyptian circus acrobatics, folklore folklore, carnival, the children's tent, electronic games, water games, a club and a children's cinema, competitions and various entertainment programs. The park will be located amid the forests and terraces and near Prince Sultan Al Bari Park, and will continue from morning till midnight.', :places => 'Abha', :points_of_interest => '', :time => '2020-07-13 00:00:00', :duration => '6hr', :img => 'https://images.app.goo.gl/wnokhEBGMvKR2sMs5   '
##############
##############