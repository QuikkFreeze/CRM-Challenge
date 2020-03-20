# frozen_string_literal: true

class Customer < ApplicationRecord
  validates :name, :phone, presence: true
  validates :name, uniqueness: true
end
