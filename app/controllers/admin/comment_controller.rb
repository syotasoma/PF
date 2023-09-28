class Admin::CommentController < ApplicationController

def destroy
 comment = Comment.find(params[:id])
 comment.destroy
 redirect_to admin_menu_path(params[:menu_id])
end

end
