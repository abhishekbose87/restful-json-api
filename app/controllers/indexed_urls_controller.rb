class IndexedUrlsController < ApplicationController
  def create
    url = params[:data][:attributes][:url]
    record = IndexedUrl.find_by(url: url)
    if record.present?
      params[:action] = "update"
      params[:data][:id] = record.id
    end
    super
  end
end
