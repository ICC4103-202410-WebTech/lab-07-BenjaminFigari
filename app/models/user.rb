class User < ApplicationRecord
    has_many :posts

    #4
    validates :name, presence: {message: "Introduce a name for your user"}
    validates :email, presence: {message: "Introduce an email for your user"}, uniqueness: {message: "This email has already been use, choose a different one."}, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Invalid email format"}
    validates :password, presence: {message: "Introduce a password"}, length: { minimum: 6, message: "The password for the user must be at least 6 characters, try another one or extend this one" }
    before_save :downcase_email
    
    private
    def downcase_email
        self.email = email.downcase
    end
end