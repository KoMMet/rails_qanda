class ApplicationController < ActionController::Base
  rescue_from StanderdError, with: :rescue500

  private def rescue500(e)
    render "errors/internal_server_error", status: 500
  end
end
