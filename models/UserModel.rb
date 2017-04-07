class User < ActiveRecord::Base
has_secure_password
 has_many :events
 
  # has_and_belongs_to_many :description, join_table 'events_description', title: 'title'
end
