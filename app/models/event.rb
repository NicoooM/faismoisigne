class Event < ActiveRecord::Base
    belongs_to :orgaization, :class_name => 'events', :foreign_key => 'event_id'
    CLASS_LIST = ["Bar", "Café", "Parc", "Restaurant","Sport","Théâtre"]
end
