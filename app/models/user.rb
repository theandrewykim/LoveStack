class User < ActiveRecord::Base
  has_secure_password
  has_many :questions
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
