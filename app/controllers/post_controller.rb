class PostController < ApplicationController
  def index
  end

  def show

  end

  def edit

  end
  
  def new
  	@post = Post.new

  end

  # CREAR USUARIO
  def create

  	@post=Post.new(params[:post])

  	respond_to do |format| 
  		format.html
  		format.json { render json: @post.to_json }

  	end

  end

  # ACTUALIZAR POST
  def update

  	respond_to do |format|

  		if @post.update(post_params)
  			format.html { redirect_to @post, notice: 'post updated'}
  			format.json { render :show, status: :ok, location: @post}
  		else
			format.html { render :edit}
  			format.json { render json:  @post.errors,status: :unprocessable_entity }

  		end
  	end

  end

  # BORRAR USUARIO
  def destroy
  	@post.destroy
  	respond_to do |format|
   		format.html { redirect_to post_url, notice: 'post detroyed'}
  		format.json { head :no_content} 		

  	end

  end
end
