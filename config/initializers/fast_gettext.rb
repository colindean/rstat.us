# config/initializers/fast_gettext.rb
require Rails.root + 'lib/missing_translation_logger'
repos = []
repos << FastGettext::TranslationRepository.build('rstatus', :path => 'locale', :type => :po)
repos << FastGettext::TranslationRepository.build('logger', :type => :logger, :callback => MissingTranslationLogger.new) if Rails.env.development?
FastGettext.add_text_domain 'combined', :type => :chain, :chain => repos
FastGettext.default_available_locales = ['en','eo'] #all you want to allow
FastGettext.default_text_domain = 'combined'
