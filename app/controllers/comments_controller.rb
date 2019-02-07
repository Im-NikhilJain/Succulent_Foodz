class CommentsController < ApplicationController



  def create

    nav_query

    @comment = Comment.new(comment_params)



    respond_to do |format|
      if @comment.save

        format.js{

        }

      else
        format.html { redirect_to :back } # bug need to be solved

        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end

  end


  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:Name , :Email , :Message , :recipe_id)
  end

end
