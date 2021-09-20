class ArticlesController < ApplicationController

    def show
        #byebug
        @articles = Article.find(params[:id])
    end

    def index
        #byebug
        @articles = Article.all
    end

    def new
        ##render plain = params[:articles]
    end

    def create
        #byebug
        @article = Article.new(params.require(:article).permit(:title, :description))
        @article.save
        #render plain: @article.inspect
        redirect_to @article
        #redirect_to article_path(@article.id)
    end

end