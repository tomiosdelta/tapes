class Song < ActiveRecord::Base
  belongs_to :tape
  has_many :instruments
end
