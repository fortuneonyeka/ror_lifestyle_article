module SessionsHelper
  def image
    @mva ? @mva.image_url : ''
  end

  def body
    return @mva.title if @mva
  end

  def title
    return @mva.body if @mva
  end

  def vote_for_article
    @article = Article.find(params[:id])
    if @article
      @article.vote(current_user.id)
      if @article.save
        redirect_to request.referer
      else
        redirect_to new_user_session_path
      end
    else
      redirect_to new_user_registration_path
    end
  end

  def unvote_for_article
    @article = Article.find(params[:id])
    if @article
      @article.unvote(current_user.id)
      if @article.save
        redirect_to request.referer
      else
        redirect_to new_user_session_path
      end
    else
      redirect_to new_user_registration_path
    end
  end

  def terms
    return image_tag @article.image_url if @article.image
  end

  def display_article(_categories)
    if @categories
      render partial: 'no_articles'
    else
      render partial: 'have_article'
    end
  end
end
