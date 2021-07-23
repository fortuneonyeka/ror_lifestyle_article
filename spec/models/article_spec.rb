require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'creating articles' do
    it 'records cannot be blank ' do
      expect { Article.create! }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  context 'checking article author' do
    let(:user) { User.create(username: 'fortune') }
    let(:category) { Category.create(name: 'Yatch', priority: '1') }
    let(:article) { Article.create(title: 'Luxury Yatch', body: 'content', author_id: user.id) }
    it 'user author is fortune' do
      expect(article.author.username).to eql('fortune')
    end
  end

  context 'testing associations' do
    it 'should have one user' do
      ar = Article.reflect_on_association(:author)
      expect(ar.macro).to eq(:belongs_to)
    end
    it 'should have many categories' do
      ar = Article.reflect_on_association(:categories)
      expect(ar.macro).to eq(:has_many)
    end
    it 'should have many votes' do
      ar = Article.reflect_on_association(:votes)
      expect(ar.macro).to eq(:has_many)
    end
  end
end