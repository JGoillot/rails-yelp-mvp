class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, :inclusion => { :in => %w{ chinese italian japanese french belgian }}
  # validates :phone_number, :phone_number => {:ten_digits => true, :seven_digits => true, :allow_blank => true, :message => "Phone number must be either seven or digits in length, or blank."}
end
