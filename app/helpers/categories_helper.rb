module CategoriesHelper
  def show_categories(categories)
    content_tag :div, class: 'voted-articles' do
      article_title = content_tag(:h3, "There's no categories yet") if categories.nil?
      @categ.collect do |category|
        la = category.latest_articles.first
        if !category.articles.take.nil?
          article_title = content_tag(:div, content_tag(:h3, category.latest_articles.first.title, class: 'title'),
                                      class: 'info')
          art_picture = "height: 30vh;
           background: no-repeat center/cover url('#{la.image_url if category.latest_articles.take.image_url}') "
        else
          article_title = content_tag(:div, content_tag(:h3, 'No articles for this category', class: ' title'),
                                      class: 'info')
          art_picture = 'background: #4e443e'
        end
        category_name = link_to(content_tag(:span, category.name), category_path(@categ.ids), class: 'tl-cat')

        concat(content_tag(:article,
                           (category_name + article_title),
                           style: art_picture, class: 'featured-article article'))
      end
    end
  end
end
