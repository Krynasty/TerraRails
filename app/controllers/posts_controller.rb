class PostsController < ApplicationController
  
  #displays a creation page for the post.
  def new
    @post = Post.new
  end

#actually creates the post and show weather it failed to upload or not. 
#also takes into account of the private function for returning only what is needed 
  def create
   @post = Post.new(permit_post)
    if @post.save
      flash[:success] = "Success!"
      redirect_to post_path(@post)
    else
      flash[:error] = @post.errors.full.messages
      redirect_to new_post_path
    end
  end

#view the posts once submitted, seen in a single view
  def show
    @post = Post.find(params[:id])
  end

#Allow access to all images and posts that have been uploaded.
  def postlist
    @post = Post.all
  end

#private function to deny SQL injections and only return these particular tags/look ups
  private
  def permit_post
    params.require(:post).permit(:image, :description)
  end

 
  def guide
  end

  def faq
  end

  def contact
  end

end
