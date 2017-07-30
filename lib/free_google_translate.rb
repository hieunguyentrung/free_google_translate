require "free_google_translate/version"
require "free_google_translate/language"

require "net/http"
require "json"

class GoogleTranslate
  GOOGLE_TRANSLATE_URI = "https://translate.googleapis.com/translate_a/single".freeze

  class << self
    def translate params
      res = make_request build_translate_query params
      @translated = JSON.parse(res.body).flatten[0]
    end

    private
    def get_source_language params
      if params[:from]
        if full_language_name params[:from]
          params[:from]
        else
          raise StandardError, "Source language is invalid"
        end
      else
        "auto"
      end
    end

    def get_target_language params
      if full_language_name params[:to]
        params[:to]
      else
        raise StandardError, "Target language is invalid"
      end
    end

    def get_text params
      if params[:text]
        params[:text]
      else
        raise StandardError, "Text can not empty"
      end
    end

    def build_translate_query params
      {
        client: "gtx",
        sl: get_source_language(params),
        tl: get_target_language(params),
        dt: "t",
        q: get_text(params),
        le: "UTF-8",
        oe: "UTF-8"
      }
    end

    def make_request query
      uri = URI GOOGLE_TRANSLATE_URI
      uri.query = URI.encode_www_form query
      res = Net::HTTP.get_response uri
    end

    def full_language_name short_language_name
      FreeGoogleTranslate::LANGS[short_language_name]
    end
  end
end
