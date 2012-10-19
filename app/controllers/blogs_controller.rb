class BlogsController < ApplicationController
  layout 'blog_views'
  def index
    @blog = Blog.limit(5).order('created_at desc')
  end

  def show
    @blog = Blog.limit(5).order('created_at desc')
    @blog_review = Blog.find_by_title(params[:id])
  end
end
