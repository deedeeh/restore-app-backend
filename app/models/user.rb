class User < ApplicationRecord
    has_many :tasks
    has_one :questionnaire

    has_secure_password

    validates :name, presence: true, length: {in: 2..10}
    validates :username, presence: true, uniqueness: true, length: {in: 2..12}
    validates :password, presence: true, length: {in: 6..15}, on: :create

end




