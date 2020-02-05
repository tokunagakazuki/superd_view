class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  def create_google_map_marker
    @hash = Gmaps4rails.build_markers(@posts) do |post, marker|
    marker.lat post.latitude
    marker.lng post.longitude
    marker.infowindow post.title
    # marker.infowindow render_to_string(partial: 'shard/infowindow', locals: { post: post })
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
