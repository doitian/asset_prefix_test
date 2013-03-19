module ActionDispatch::Session
  class MyCookieStore < CookieStore
    private

    def load_session(env)
      super.tap do |x|
        binding.pry
      end
    end

    def set_session(*arguments)
      super.tap do |x|
        binding.pry
      end
    end

    def commit_session?(env, session, options)
      binding.pry
      if options[:skip]
        false
      else
        has_session = loaded_session?(session) || forced_session_update?(session, options)
        has_session && security_matches?(env, options)
      end
    end
  end
end
