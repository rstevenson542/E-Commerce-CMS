class PostsController < InheritedResources::Base

   def index
      @posts = Post.all
   end

   def show
   
   end

end
