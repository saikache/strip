Stripe.api_key = "sk_test_VcRI9Sv7ZYbkNDA843DjZhy7"
STRIPE_PUBLIC_KEY = "pk_test_piJx4q3uzLpjfaJVjV3ZN66K"

Rails.configuration.stripe = {
  :publishable_key => 'pk_test_piJx4q3uzLpjfaJVjV3ZN66K',
  :secret_key      => 'sk_test_VcRI9Sv7ZYbkNDA843DjZhy7'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
# live
# Stripe.api_key = "sk_live_XdtOHq7UIk1QmXvRZEVwPGE3"
# STRIPE_PUBLIC_KEY = "pk_live_Rs2NqUQmN9ZptXPNWKrrTjW4"


# Rails.configuration.stripe = {
#     :publishable_key => 'pk_test_piJx4q3uzLpjfaJVjV3ZN66K', #'pk_test_kzUoT6mS95S4G8MdOqn6MooV',
#     :secret_key      => 'sk_test_VcRI9Sv7ZYbkNDA843DjZhy7' #'sk_test_adg0RbQpgsY16UtUFc4L3N3g'
# }
