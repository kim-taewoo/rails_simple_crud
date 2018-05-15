class BlogsController < ApplicationController
    def new
        @token = form_authenticity_token
    end
    
    def create

        blog = Blog.new
        blog.title = params[:input_title]
        blog.link = params[:input_link]
        blog.content = params[:input_content]
        blog.save
        redirect_to "/blogs/#{blog.id}"
    end
        
    def index
        @blogs = Blog.all
    end
    
    def show
        @blog =Blog.find params[:id]
    end
    
    def edit
        @token = form_authenticity_token
        @blog = Blog.find params[:id]
    end
    
    def update
        blog = Blog.find params[:id]
        blog.title=params[:input_title]
        blog.link=params[:input_link]
        blog.content=params[:input_content]
        blog.save
        redirect_to "/blogs"
    end
    
    def destroy
        blog = Blog.find params[:id]
        blog.destroy
        redirect_to '/blogs'
    end
end

