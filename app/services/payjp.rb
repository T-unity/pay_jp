# https://github.com/payjp/payjp-ruby
# https://github.com/payjp/payjp-ruby/issues/18
# createの際に送るcardのトークンは毎回ユニークでなければいけない。

require 'payjp'
Payjp.api_key = 'payjp APIのテスト秘密鍵を記載する。credentialsとかからdigしてくればOK。ベタ打ちは絶対だめ'

card_params = {
  number: '4242424242424242',
  cvc: '123',
  exp_month: '1',
  exp_year: '2030'
}
token = Payjp::Token.create({ card: card_params }, x_payjp_direct_token_generate: true)

Payjp::Charge.create(amount: 2000, card: token.id, currency: 'jpy')
