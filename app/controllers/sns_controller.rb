class SnsController < ActionController::Base
    protect_from_forgery with: :null_session
    protect_from_forgery 
    layout 'app'
    def index
    end

    def show
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.save
    end

    def post_params
        params.permit(:title, :text)
      end
end
