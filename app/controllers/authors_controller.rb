class AuthorsController < ApplicationController
  def new
  end

  def create
    @author = Author.new(article_params)

    @author.save
    redirect_to root_path, notice: "Succesfully created! #{params[:author]}"
  end

  private
    def article_params
      params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end
