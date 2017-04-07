class Event < ActiveRecord::Base
  self.table_name = "events"

belongs_to :users
end