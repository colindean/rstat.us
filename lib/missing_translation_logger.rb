#from fast_gettext, under MIT license
#https://github.com/grosser/fast_gettext/blob/master/examples/missing_translation_logger.rb
class MissingTranslationLogger
  def call(unfound)
    logger.warn "#{FastGettext.locale}: #{unfound}" unless FastGettext.locale == 'en'
  end

  private
  def logger
    return @logger if @logger
    require 'logger'
    @logger = Logger.new("log/unfound_translations", 2, 5*(1024**2))#max 2x 5mb logfile
  end
end
