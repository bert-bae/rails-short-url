class ShortUrlsController < ApplicationController
  def index
    @shortUrls = ShortUrl.all()
  end

  def show
    @shortUrl = ShortUrl.find(params[:id])
  end

  def new
    @shortUrl = ShortUrl.new
  end

  def create
    possible_characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcedfghijklmnopqrstuvwxyz'
    code_length = 5
    
    new_code = ''
    n = 0
    while n < 5
      n += 1
      new_code += possible_characters[rand(possible_characters.length)]
    end

    @shortUrl = ShortUrl.new({
      url: short_url_params[:url],
      code: new_code
    })
    logger.info(@shortUrl)
    if @shortUrl.save
      redirect_to '/short_urls'
    else
      render :new
    end
  end

  private def short_url_params
    params.require(:short_url).permit(:url)
  end
end
