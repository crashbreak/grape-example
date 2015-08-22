class API < Grape::API
  format :json

  resource :projects do
    get do
      'Hello World!'.undefined_method
    end
  end
end