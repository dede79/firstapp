if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_f2ShygU9khV0lYnmA1aBTJ3t',
    :secret_key => 'sk_test_KvRlARDrLuYnqr6NJt9jNlLL'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]