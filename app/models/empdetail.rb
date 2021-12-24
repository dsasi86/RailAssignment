class Empdetail < ApplicationRecord
    validates :Name, :Age, :Gender, :Designation, :contact_number, :address, presence: true
    validates :contact_number, uniqueness: true, length: { is: 10}
    validates :Age, numericality: true
    validates :Gender, :inclusion => %w(Male Female)
    #validates :Gender, inclusion: {in: %w(Male, Female), message: "Must be male or female"}
    #validates :email, presence: true, uniqueness: true, format: { with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
