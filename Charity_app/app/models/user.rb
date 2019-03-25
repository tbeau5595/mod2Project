class User < ApplicationRecord
    has_many :donations
    has_many :charities, through: :donations
    has_many :rewards, through: :user_rewards
end
