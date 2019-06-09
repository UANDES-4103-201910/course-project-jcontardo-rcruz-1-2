class DownvotesController < ApplicationController
  before_action :set_downvote, only: [:show, :edit, :update, :destroy]

  # GET /downvotes
  # GET /downvotes.json
  def index
    @downvotes = Downvote.all
  end

  # GET /downvotes/1
  # GET /downvotes/1.json
  def show
  end

  # GET /downvotes/new
  def new
    @downvote = Downvote.new
  end

  # GET /downvotes/1/edit
  def edit
  end

  # POST /downvotes
  # POST /downvotes.json
  def create
    @downvote = Downvote.new(downvote_params)

    respond_to do |format|
      if @downvote.save
        format.html { redirect_to @downvote, notice: 'Downvote was successfully created.' }
        format.json { render :show, status: :created, location: @downvote }
      else
        format.html { render :new }
        format.json { render json: @downvote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /downvotes/1
  # PATCH/PUT /downvotes/1.json
  def update
    respond_to do |format|
      if @downvote.update(downvote_params)
        format.html { redirect_to @downvote, notice: 'Downvote was successfully updated.' }
        format.json { render :show, status: :ok, location: @downvote }
      else
        format.html { render :edit }
        format.json { render json: @downvote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /downvotes/1
  # DELETE /downvotes/1.json
  def destroy
    @downvote.destroy
    respond_to do |format|
      format.html { redirect_to downvotes_url, notice: 'Downvote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_downvote
    @downvote = Downvote.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def downvote_params
    params.require(:downvote).permit(:user_id, :post_id)
  end
end
