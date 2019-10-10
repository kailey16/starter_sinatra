class Museum < ActiveRecord::Base
    has_many :visits
    has_many :guests, through: :visits
end