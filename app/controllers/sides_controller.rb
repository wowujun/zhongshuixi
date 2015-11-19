class SidesController < ApplicationController
  layout 'stage'
  def index
    @message = Message.new
    @cfgs = Cfg.all
    @sideclas = Sidecla.all
    @keyword = params[:keywords];
    if @keyword == "news"
      @cla = Sidecla.find_by_keywords("news")
      @sidecontents = @cla.sidecontents
      @searchs = @sidecontents
    else
      @cla = Sidecla.find_by_keywords("products")
      @sidecontents = @cla.sidecontents
    end

  end

  def show
    @cfgs = Cfg.all
    @sidecontent = Sidecontent.find(params[:id])
    @sideclas = Sidecla.all

    @admins =Admin.all

  end
end
