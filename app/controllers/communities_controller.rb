class CommunitiesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

def index
  @communities = Community.all
end

def show
end

def new
  @community = Community.new
end

def edit
end

def create
  @community = Community.new(community_params)

  respond_to do |format|
    if @community.save
      format.html { redirect_to @community, notice: 'User was successfully created.' }
      format.json { render :show, status: :created, location: @community }
    else
      format.html { render :new }
      format.json { render json: @community.errors, status: :unprocessable_entity }
    end
  end
end

def update
  respond_to do |format|
    if @community.update(community_params)
      format.html { redirect_to @community, notice: 'User was successfully updated.' }
      format.json { render :show, status: :ok, location: @community }
    else
      format.html { render :edit }
      format.json { render json: @community.errors, status: :unprocessable_entity }
    end
  end
end

def destroy
  @community.destroy
  respond_to do |format|
    format.html { redirect_to communities_url, notice: 'User was successfully destroyed.' }
    format.json { head :no_content }
  end
end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_community
    @community = Community.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def community_params
    params.require(:community).permit(:name)
  end
end
