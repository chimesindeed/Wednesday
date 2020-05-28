# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#----------------------------------------------------------------------
  #   Seeding for - FOUR MODELS   USERS, WORDS, PHRASES, MATCHES
  #   3 different users
  #  1  admin user - for the purpose of maybe different scope methods, or oranizing all data, alphabetizing, ordering, etc.

    User.create(:name => "admin", :email => "admin@admin.com", :password => "123456")  #admin, admin@admin.com, 123456
    
    User.create(:name => "john", :email => "john@john.com", :password => "123456")  #john, john@john.com, 123456
    User.create(:name => "ruby", :email => "ruby@ruby.com", :password => "123456")  #ruby, ruby@ruby.com, 123456
#----------------------------------
    Word.create(:name => "Amazing",    :user_id => 2)
    Word.create(:name => "Grace",      :user_id => 2)
    Word.create(:name => "Hope",       :user_id => 2)
    Word.create(:name => "Exciting",   :user_id => 3)
    Word.create(:name => "Voice",      :user_id => 3)
    Word.create(:name => "Zest",       :user_id => 2)
    Word.create(:name => "Teach",      :user_id => 2)
    Word.create(:name => "Deeds",      :user_id => 3)
    Word.create(:name => "Story",      :user_id => 3)
    Word.create(:name => "Trampoline", :user_id => 3)
    
#----------------------------------
    Phrase.create(:name=> "D is for the Deeds",     :user_id => 2)
    Phrase.create(:name=> "D is for Daring",        :user_id => 2)
    Phrase.create(:name=> "Teaching us",            :user_id => 2)
    Phrase.create(:name=> "A is for Amazing Grace", :user_id => 2)
    Phrase.create(:name=> "The hope of things new", :user_id => 2)
    Phrase.create(:name=> "E is for Exciting",      :user_id => 3)
    Phrase.create(:name=> "S is for Story",         :user_id => 3)
    Phrase.create(:name=> "E is for Exalted",       :user_id => 3)
#---------------------------------
    Match.create(:word_id => 1, :phrase_id =>1, :user_id => 2)
    Match.create(:word_id => 3, :phrase_id =>2, :user_id => 2)
    Match.create(:word_id => 4, :phrase_id =>3, :user_id => 3)
    Match.create(:word_id => 5, :phrase_id =>4, :user_id => 3)
