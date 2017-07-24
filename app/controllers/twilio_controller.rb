
require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_action :set_header

  skip_before_action :verify_authenticity_token

  def voice
    response = Twilio::TwiML::VoiceResponse.new do |r|
      r.say 'Hey there. Congrats on integrating Twilio into your Rails 4 app.', :voice => 'alice'
      # r.Play 'http://linode.rabasa.com/cantina.mp3'
    end

    render xml: response.to_s
    # render_twiml response
  end
end
