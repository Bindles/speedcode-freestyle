class Profile < ApplicationRecord
  belongs_to :user
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 2, maximum: 24 } # length: { in: 2..24 }
  validates :age, numericality: { only_integer: true, greater_than: 13 }, allow_blank: true, on: :update

  # validates_presence_of :username
  # validates :username, presence: { message: "is required for registration" }
  # validates :location, presence: { message: "is required for registration" }
  # add_index :users, :username, unique: true
  # Validation for username
  # validates :username, presence: { message: "Username must be present, unique, and between 2 to 24 characters long" },
  #                      uniqueness: { case_sensitive: false, message: "Username must be unique" },
  #                      length: { in: 2..24, message: "Username must be between 2 and 24 characters long" }

  # # Validation for age
  # validates :age, numericality: { only_integer: true, greater_than: 18, message: "Age must be a number greater than 18" },
  #                 allow_blank: true,
  #                 on: :update
end
