class API < Grape::API
  format :json

  resource :projects do
    get do
      'Hello World!'
    end
  end
end