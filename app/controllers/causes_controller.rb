class CausesController < ApplicationController
  before_filter :signed_in_user
  before_filter :correct_user,   only: :destroy

  def create
    @cause = current_user.causes.build(params[:cause])
    if @cause.save
      flash[:success] = "Cause created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end
  
  def destroy
    @cause.destroy
    redirect_to root_url
  end
  
  def update
  end

  def destroy
  end
  
  private

    def correct_user
      @cause = current_user.causes.find_by_id(params[:id])
      redirect_to root_url if @cause.nil?
    end
end