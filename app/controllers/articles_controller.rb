class ArticlesController < ApplicationController

    def show
        #byebug
        @articles = Article.find(params[:id])
    end

    def index
        #byebug
        @articles = Article.all
    end

end