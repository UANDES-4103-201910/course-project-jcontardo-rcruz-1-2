class CommentController < ApplicationController
  def index
  end

  def show

  end

  def edit

  end
  
  def new
  	@comment = Comment.new

  end

  # CREAR comment
  def create

  	@comment=Comment.new(params[:comment])

  	respond_to do |format| 
  		format.html
  		format.json { render json: @comment.to_json }

  	end

  end

  # ACTUALIZAR comentario
  def update

  	respond_to do |format|

  		if @comment.update(comment_params)
  			format.html { redirect_to @comment, notice: 'comment updated'}
  			format.json { render :show, status: :ok, location: @comment}
  		else
			format.html { render :edit}
  			format.json { render json:  @comment.errors,status: :unprocessable_entity }

  		end
  	end

  end

  # BORRAR comentario
  def destroy
  	@comment.destroy
  	respond_to do |format|
   		format.html { redirect_to comment_url, notice: 'comment detroyed'}
  		format.json { head :no_content} 		

  	end

  end
end
