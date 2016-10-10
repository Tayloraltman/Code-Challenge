Rails.application.routes.draw do

get"/tweets", to: "tweets#index"
post "/tweets", to: "tweets#create"
get "/tweets/:id", to: "tweets#show"
delete "/tweets/:id", to:"tweets#destroy"
end
