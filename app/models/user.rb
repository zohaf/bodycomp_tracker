class User < ApplicationRecord
has_secure_password
validates :email, :uniqueness => true, :presence => true # validations
has_many :logbooks
end
