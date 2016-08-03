class ShareModalsController < ApplicationController
  before_action :set_share_modal, only: [:show, :edit, :update, :destroy]

  # GET /share_modals
  # GET /share_modals.json
  def index
    @share_modals = ShareModal.all
  end

  # GET /share_modals/1
  # GET /share_modals/1.json
  def show
  end

  # GET /share_modals/new
  def new
    @share_modal = ShareModal.new
  end

  # GET /share_modals/1/edit
  def edit
  end

  # POST /share_modals
  # POST /share_modals.json
  def create
    @share_modal = ShareModal.new(share_modal_params)

    respond_to do |format|
      if @share_modal.save
        format.html { redirect_to @share_modal, notice: 'Share modal was successfully created.' }
        format.json { render :show, status: :created, location: @share_modal }
      else
        format.html { render :new }
        format.json { render json: @share_modal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /share_modals/1
  # PATCH/PUT /share_modals/1.json
  def update
    respond_to do |format|
      if @share_modal.update(share_modal_params)
        format.html { redirect_to @share_modal, notice: 'Share modal was successfully updated.' }
        format.json { render :show, status: :ok, location: @share_modal }
      else
        format.html { render :edit }
        format.json { render json: @share_modal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /share_modals/1
  # DELETE /share_modals/1.json
  def destroy
    @share_modal.destroy
    respond_to do |format|
      format.html { redirect_to share_modals_url, notice: 'Share modal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_share_modal
      @share_modal = ShareModal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def share_modal_params
      params.require(:share_modal).permit(:title, :content, :slug)
    end
end
