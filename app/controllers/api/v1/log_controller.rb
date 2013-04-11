module Api
  module V1
    class LogController < ApplicationController
      def create
        log = Log.new(params[:log])

        puts "VALID: #{log.valid?}"
        puts "Messages: #{log.errors.messages}"

        if log.save
          render json: { success: true }
        else
          render json: { success: false }
        end
      end
    end
  end
end
