class Visit < ActiveRecord::Base
    belongs_to :guest
    belongs_to :museum

end