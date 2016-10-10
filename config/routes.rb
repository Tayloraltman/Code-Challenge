Rails.application.routes.draw do

get"/tweets", to: "tweets#index"
post "/tweets", to: "tweets#create"
end
