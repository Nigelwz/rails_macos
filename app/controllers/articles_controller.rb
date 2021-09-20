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
        render plain: params[:articles]
    end

end