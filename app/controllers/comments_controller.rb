class CommentsController < ApplicationController
 
  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
   nil
  end
  

 def create
     @commentable = find_commentable
     @comment = @commentable.comments.build(params[:comment])
     @comment.user = current_user
     if @comment.save
     flash[:notice] = "Successfully created comment."
     end
     if @commentable.class == Post
     redirect_to post_path(@commentable)
     end
     
  end
  
   def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end


end

