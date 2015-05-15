# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
SmallbuttonCom::Application.config.secret_key_base = ENV.fetch("SECRET_TOKEN_SMALLBUTTON",'857acd57f085528fdc13348107501994df3f20883cd65173ad6d6e3941d9188a6384f07ada64e1bf8ae4423248874e2b0947d635ca5e9f60474ac6a22f3ba491')
