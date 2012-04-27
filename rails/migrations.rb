#add indexes when you crate migrations, also note that you can omit the type if you just want a string so in this case
# you will get an indexed string called name
rails g resource foo name:index 

#provide string limit below will add 'table.string :name, :limit => 25' to the migration
rails g resource foo name:string{25}

#add belongs to associations in a migration. below will add 'table.references :bar ' to the migration and field name :bar_id to the table
rails g resource foo bar:references

#show your database migration status will display information about your current migration level
rake db:migrate:status 
