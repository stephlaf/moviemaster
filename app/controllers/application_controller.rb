class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  if Rails.env == "production"
    rescue_from ActiveRecord::RecordNotFound, with: :on_record_not_found
    rescue_from AbstractController::ActionNotFound, with: :on_record_not_found
    rescue_from ActionController::RoutingError, with: :on_routing_error
    rescue_from Exception, with: :on_internal_server_error
  end

  def render_404
    if params[:format].present? && params[:format] != 'html'
      head status: 404
    else
      render 'errors/404', status: 404, layout: "errors"
    end
  end

  def on_internal_server_error
    if params[:format].present? && params[:format] != 'html'
      head status: 500
    else
      render 'errors/500', status: 500, layout: "errors"
    end
  end

  def on_record_not_found
    render_404
  end

  def on_routing_error
    render_404
  end
end
