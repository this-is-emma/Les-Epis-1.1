class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user_id = current_user

    if @campaign.save
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
      redirect_to(campaign_path(@campaign), flash: { success: 'Campaign updated successfully' })
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy!

    redirect_to(campaigns_path)
  end

  private

  def campaign_params
    params.require(:campaign).permit(:name, :description, :user_id)
  end
end
