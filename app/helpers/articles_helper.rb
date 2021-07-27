module ArticlesHelper
  def show_articles(articles)
    content_tag :div, class: 'articles-container' do
      count = 0
      articles.collect do |article|
        votes_number = content_tag(:span, article.votes_count)
        art_vote = show_vote(article)
        author_name = content_tag(:strong, "by #{article.author.name}", class: 'article-author')
        article_author = content_tag(:div, author_name + art_vote + votes_number)
        article_title = content_tag(:div,
                                    link_to(content_tag(:h3, article.title),
                                            article_path(article),
                                            class: 'article-title chivo-regular'), class: 'd-flex a-items-center')
        article_text = content_tag(:p, article.text.truncate_words(20), class: 'article-summary')
        bg_st = "background: no-repeat center/cover url('#{rails_blob_url(article.image) if article.image.attached?}');"
        article_picture = content_tag(:div, nil, style: bg_st, class: 'article-image')
        article_category = content_tag(:h3, article.categories.take.name, class: 'articles-cat-title')
        article_info = content_tag(:div,
                                   article_category + article_title + article_author + article_text,
                                   class: 'article-preview')

        if ((count / 2) % 2).zero?
          concat(content_tag(:article,
                             article_picture + article_info, class: 'd-flex'))
        else
          concat(content_tag(:article,
                             article_picture + article_info, class: 'd-flex row-reverse'))
        end
        count += 1
      end
    end
  end
end
