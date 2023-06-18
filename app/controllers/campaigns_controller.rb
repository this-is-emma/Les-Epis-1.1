class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
    @user = current_user
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user_id = current_user.id

    if @campaign.save
      flash[:notice] = 'Campaign created successfully.'
      redirect_to(campaign_path(@campaign))
    else
      render(
        :new,
        status: :unprocessable_entity
      )
    end
  end

  def edit
    @campaign = Campaign.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:id])

    if @campaign.update(campaign_params)
      flash[:notice] = 'campaign updated successfully'
      redirect_to(campaign_path(@campaign))
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy!
    flash[:notice] = 'Campaign deleted successfully'
    redirect_to(campaigns_path)
  end

  private

  def campaign_params
    params.require(:campaign).permit(:name, :description, :user_id)
  end
end
