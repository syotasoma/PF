class Public::CommentsController < ApplicationController
  def create
    menu = Menu.find(params[:menu_id])
    comment = current_customer.comments.new(menu_comment_params)
    comment.menu_id = menu.id
    comment.save
    redirect_to menu_path(menu.id)
  end
  def destroy
    Comment.find(params[:id]).destroy
    redirect_to menu_path(params[:menu_id])
  end
  private
  def menu_comment_params
    params.require(:comment).permit(:comment)
  end 
end
