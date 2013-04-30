class LogController < ApplicationController
  def index
    @logs = Log.all.uniq{ |l| l.host }
  end

  def search_by_token
    @logs = Log.find_all_by_token(params[:stoken])
  end

  def search_by_host
    @logs = Log.find_all_by_host(params[:shost])
  end
end
