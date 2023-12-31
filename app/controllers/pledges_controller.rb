class PledgesController < ApplicationController
  def index
    @pledges = Pledge.all
  end

  def show
    @pledge = Pledge.find(params[:id])
    @user = current_user
  end

  def new
    @campaigns = Campaign.all
    @pledge = Pledge.new
  end

  def create
    @campaigns = Campaign.all

    @pledge = Pledge.new(pledge_params)
    @pledge.user_id = current_user.id

    if @pledge.save
      redirect_to(pledge_path(@pledge))
    else
      render(
        :new,
        status: :unprocessable_entity
      )
    end
  end

  def edit
    @pledge = Pledge.find(params[:id])
  end

  # def update

  #   @pledge = Pledge.find(params[:id])

  #   if @pledge.update(pledge_params)
  #     if params[:pledge].key?(:categories)
  #       @categories = Category.find(params[:pledge][:categories])
  #       @pledge.categories.destroy_all
  #       @pledge.categories << @categories
  #     end

  #     redirect_to(pledge_path(@pledge), flash: { success: "Pledge updated successfully"})
  #   else
  #     render(:edit, status: :unprocessable_entity)
  #   end
  # end

  def destroy
    @pledge = Pledge.find(params[:id])
    @pledge.destroy!

    redirect_to(pledges_path)
  end

  private

  def pledge_params
    params.require(:pledge).permit(:amount, :campaign_id)
  end
end
