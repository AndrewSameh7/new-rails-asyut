module ValidatableEmail
  extend ActiveSupport::Concern

  included do
    validates :email,
              presence: true,
              uniqueness: true,
              format: { with: URI::MailTo::EMAIL_REGEXP }
  end
end