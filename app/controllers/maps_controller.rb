class MapsController < ApplicationController
  def index
    @posts = Post.all
    create_google_map_marker
  end

  def map
    results = Geocoder.search(params[:address])
    @latlng = results.first.coordinates
    # これでmap.js.erbで、経度緯度情報が入った@latlngを使える。
    respond_to do |format|
      format.js
    end
  end
end
