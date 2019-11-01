class AuthorsController < ApplicationController
  def new
  end

  def index
    @authors = Author.all
  end

  def show
    puts(params[:id])
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to @author
    else
      render 'new'
    end
  end


  private
    def author_params
      params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end

