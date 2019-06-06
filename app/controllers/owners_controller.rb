class OwnersController < ApplicationController
  before_action :set_owner, only:[:show]
  def index
    @owners = Owner.all
  end

  def show
  end

  private

  def set_owner
    @owner = Owner.find_by(id: params[:id])
  end
end