class User < ApplicationRecord
  include ValidatableEmail

  validates :name, :dob, :phone_number, :address, presence: true
end