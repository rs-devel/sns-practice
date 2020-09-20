class SnsController < ActionController::Base
    layout 'app'
    def index
    end

    def show
    end

    def new
        @item = Post.new
    end

    def create

    end

    private
    def my_thread_params
      params.require(:my_thread).permit(:title)
    end
  
    def set_my_thread
     #特定データの取得
      @my_threads = MyThread.find(params[:id])
    end
end
