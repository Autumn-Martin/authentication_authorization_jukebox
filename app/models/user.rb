class User < ApplicationRecord
  validates_presence_of :password
  validates :username, presence: true, uniqueness: true

  has_secure_password

# below are all the same, but must put in correct order
  # enum role: %w(default admin)
  enum role: ["default","admin"]  # m.c.
  # enum role: {"default"=0, "admin"=1}
  # enum role: {default: 0, admin: 1} #more explicit
end
