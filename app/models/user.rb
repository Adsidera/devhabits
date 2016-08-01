class User < ApplicationRecord
  has_many :skills, :goals

end
