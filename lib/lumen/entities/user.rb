# frozen_string_literal: true

require 'digest/md5'

module Lumen
  class User < ROM::Struct
    def avatar_url
      hash = Digest::MD5.hexdigest(email)

      "https://gravatar.com/avatar/#{hash}?d=robohash"
    end
  end
end
