class MiniController < ApplicationController
  def redirect
    @shortUrl = ShortUrl.find_by(code: params[:code])

    redirect_to @shortUrl.url
  end
end
