class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :votes
  has_many :articles, foreign_key: :author_id
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def email_required?
    false
  end

  protected

  def password_required?
    false
  end
end
