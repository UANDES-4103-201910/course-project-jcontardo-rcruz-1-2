OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '803646438256-a6hcl0ogul6tbodoiqvhbr8b91lbikk6.apps.googleusercontent.com' , '4DP8JMsUFmdDzQH6ATTfztUl' , {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end

