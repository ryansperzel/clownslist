class HostsController < ApplicationController

  def index
    @hosts = Host.all
  end

  def show
    @host = Host.find(params[:id])
  end

  def new
    @host = Host.new
  end

  def create
    @host = Host.new(host_params)
    if @host.save
      redirect_to host_path(@host)
    else
      render :new
    end
  end

  def edit
    @host = Host.find(params[:id])
  end

  def update
    @host = Host.find(param[:id])
    if @host.update(host_params)
      redirect_to host_path(@host)
    else
      render :edit
    end
  end

  def destroy
    @host = Host.find(params[:id])
    @host.destroy
    redirect_to hosts_path
  end

  private

  def host_params
    params.require(:host).permit(:username)
  end

end
