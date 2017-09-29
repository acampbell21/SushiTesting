class SushisController < ApplicationController
  before_action :set_sushi, only: [:show, :edit, :update, :destroy]

  #GET /Sushis
  def index
    @sushis = current_user.sushis
  end

  #GET /Sushis/1
  def show
  end

  #GET /Sushis/new
  def new
    @sushi = current_user.sushis.new
  end

  #GET /Sushis/1/edit
  def edit
  end

  # POST /sushis
  def create
    @sushi = current_user.sushis.new(sushi_params)

    if @sushi.save
      redirect_to @sushi, notice: 'Sushi order was successfully placed.'
    else
      render :new
    end
  end

  # PATCH/PUT /bank_accounts/1
  def update
    if @sushi.update(sushi_params)
      redirect_to @sushi, notice: 'Sushi was successfully updated.'
    else
      render :edit
    end
  end

  # Delete /sushis/1
  def destroy
    @sushi.destroy
    redirect_to sushis_url, notice: 'Sushi was successfully destroyed.'
  end

  private # Use callbacks to share common setup or contraints between actions.
    def set_sushi
      @sushi = current_user.sushis.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sushi_params
      params.require(:sushi).permit(:name, :price, :ingredients)
    end
end
