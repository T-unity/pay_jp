Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#top'
  post :create_pay_record, to: 'homes#create_pay_record'
end
