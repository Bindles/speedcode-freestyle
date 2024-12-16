class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_many :posts
  has_one :profile, dependent: :destroy
  has_many :messages


  after_create :build_default_profile

  def build_default_profile
    create_profile
  end
end


# before_save :normalize_email, if: :email_changed?

# private

# def normalize_email
#   self.email = email.downcase.strip
# end
