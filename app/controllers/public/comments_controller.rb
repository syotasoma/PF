class Public::CommentsController < ApplicationController
  def create
    comment = menu_id.comment.new(comment_params)
    comment.menu_id = menu.id
    comment.save
    redirect_to menu_path
  end
end
