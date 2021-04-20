class User < ApplicationRecord

  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  before_create :add_unsubscribe_hash

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :project_users
  has_many :projects, through: :project_users


  private

  def add_unsubscribe_hash
    self.unsubscribe_hash = SecureRandom.hex
  end
  
end
