class Hotel < ActiveRecord::Base
    has_many :books
    geocoded_by :name
after_validation :geocode, :if => :name_changed?
end
