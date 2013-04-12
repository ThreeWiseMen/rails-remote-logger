class LogController < ApplicationController
  def index
    @logs = Log.all
  end

  def search_by_token
    @logs = Log.where(token: params[:token])
  end
end
