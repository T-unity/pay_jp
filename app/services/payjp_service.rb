class PayjpService
  require 'payjp'
  Payjp.api_key = Rails.application.credentials.dig(:pay_jp, :secret_key)

  def self.create
    card_params = {
      number: '4242424242424242',
      cvc: '123',
      exp_month: '1',
      exp_year: '2030'
    }

    token = Payjp::Token.create({ card: card_params }, x_payjp_direct_token_generate: true)
    Payjp::Charge.create(amount: 2000, card: token.id, currency: 'jpy')
  end
end
