module Api
  module V1
    class LogController < ApplicationController
      def create
        puts "IP: #{request.remote_ip}"
        log = Log.new(params[:log])
        log.requested_ip = request.remote_ip

        if log.save
          render json: { success: true }
        else
          render json: { success: false }
        end
      end
    end
  end
end
