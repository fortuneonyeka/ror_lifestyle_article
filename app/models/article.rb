class Article < ApplicationRecord
  include ImageUploader::Attachment(:image)

  belongs_to :author, class_name: 'User'
  has_many :votes

  has_many :article_categories, class_name: 'ArticleCategory'
  has_many :categories, through: :article_categories, source: :category
  accepts_nested_attributes_for :categories
  has_many :users_voted, through: :votes, source: :user


  validates :title, presence: true
  validates :body, presence: true
  # validates_presence_of :categories, message: 'need to be selected.'
  validate :categories_presence
  def categories_presence
   if categories.empty?
    errors.add(:categories, "need to be selected")
   end
  end
  

  # def self.most_voted_article
  #   Article.order(vote_count: :desc).first
  # end

  # def user_voted?(userid)
  #   true if users_voted.where(id: userid).first
  # end

  # def vote(userid)
  #   vote = votes.build
  #   vote.user_id = userid
  #   self.vote_count = vote_count + 1
  #   vote.save
  # end

  # def unvote(userid)
  #   votes.where(user_id: userid).first.destroy
  #   self.vote_count = vote_count - 1
  # end

  # def truncate_text
  #   body.length >= 200 ? "#{body[0..200]} ..." : "#{body} ..."
  # end
end
