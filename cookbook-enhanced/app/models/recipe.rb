class Recipe < ActiveRecord::Base
  ActiveRecord::Base.establish_connection(adapter:  "sqlite3", database: "../../db/development")

  # attr_accessor :name, :description, :prep_time, :rating

  # def initialize(attributes = {})
  #   @name = attributes[:name]
  #   @description = attributes[:description]
  #   @rating = attributes[:rating]
  #   @prep_time = attributes[:prep_time]
  #   @done = attributes[:done] || false
  # end

  # #new 
  # #save
  # #create

  # .destroy

  # #all
  # #find(id)
end