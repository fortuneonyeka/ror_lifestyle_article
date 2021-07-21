module SessionsHelper
  # def login_user(user_id)
  #   session[:user_id] = user_id
  # end

  def image
    @mva ? @mva.image_url : ''
  end

  # def current_user
  #   return unless session[:user_id]

  #   @current_user ||= User.find(session[:user_id])
  # end

  def body
    return @mva.title if @mva
  end

  def title
    return @mva.body if @mva
  end

  # def logout_user
  #   session.delete(:user_id)
  #   @current_user = nil
  # end

  def vote_for_article
    @article = Article.find(params[:id])
    if @article
      @article.vote(current_user.id)
      if @article.save
        redirect_to request.referer
      else
        redirect_to login_path
      end
    else
      redirect_to signup_path
    end
  end

  # def require_login
  #   redirect_to login_path unless current_user
  # end

  def unvote_for_article
    @article = Article.find(params[:id])
    if @article
      @article.unvote(current_user.id)
      if @article.save
        redirect_to request.referer
      else
        redirect_to login_path
      end
    else
      redirect_to signup_path
    end
  end

  # def flashes
  #   return flash[:errors] if flash[:errors]
  # end

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