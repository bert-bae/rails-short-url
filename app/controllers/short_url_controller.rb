class ShortUrlsController < ApplicationController
  def index
    @short_urls = ShortUrl.all
  end
end
