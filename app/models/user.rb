class User < ApplicationRecord

  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :projects
  has_many :projects, through: :project_users

end
