#override connection to work with multiple databases in a single app
class NewBase < ActiveRecord::Base
  #Setting a model to abstact means you can inherit from it without using STI
  #You can also have a model that is not directly backed by a table
  self.abstract_class = true  
  
  establish_connection( YAML.load_file("/path/to/config/database.yml")["#{Rails.env}"] )
end


#Pluck an array of values from a single field 
ModelName.pluck(:column)

