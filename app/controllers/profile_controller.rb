class ProfileController < ApplicationController
  def index
  end

  def show

  end

  def edit

  end
  
  def new
  	@profile = Profile.new

  end

  # CREAR PERFIL
  def create

  	@profile=Profile.new(params[:profile])

  	respond_to do |format| 
  		format.html
  		format.json { render json: @profile.to_json }

  	end

  end

  # ACTUALIZAR PERFIL
  def update

  	respond_to do |format|

  		if @profile.update(profile_params)
  			format.html { redirect_to @profile, notice: 'profile updated'}
  			format.json { render :show, status: :ok, location: @profile}
  		else
			format.html { render :edit}
  			format.json { render json:  @profile.errors,status: :unprocessable_entity }

  		end
  	end

  end

  # BORRAR PERFIL
  def destroy
  	@profile.destroy
  	respond_to do |format|
   		format.html { redirect_to profile_url, notice: 'profile detroyed'}
  		format.json { head :no_content} 		

  	end

  end
end
