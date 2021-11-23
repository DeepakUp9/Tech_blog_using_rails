module Blog
  class PostsController < BlogController
 
  
    # GET /posts or /posts.json
    def index
    
      @posts = Post.most_recent.published.paginate(page: params[:page], per_page: 3)
    end
  
    # GET /posts/1 or /posts/1.json
    def show
      @post = Post.friendly.find(params[:id])
    end
  
  end
    
   
end