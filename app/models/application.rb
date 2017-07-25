require 'twilio-ruby'

class Application < ApplicationRecord

  account_sid = 'ACa46dbea6b1f65ec9084ece20980c6015'
  auth_token = '326bdf6007f2ef5ed475e8a9a342aa2c'

  belongs_to :user
  belongs_to :job

  validates :job, uniqueness: { scope: :user_id }
  validates :status, presence: true

  def save
    super

    Twilio.configure do |config|
      config.account_sid = 'ACa46dbea6b1f65ec9084ece20980c6015'
      config.auth_token = '326bdf6007f2ef5ed475e8a9a342aa2c'
    end

    # and then you can create a new client without parameters
    @client = Twilio::REST::Client.new

    @client.api.account.calls.create(
      from: '+16042273817',
      to: '+16047679548',
      url: 'http://9add8978.ngrok.io'
    )
  end
end
