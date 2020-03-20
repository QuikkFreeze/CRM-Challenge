# frozen_string_literal: true

class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order(:name)
  end

  def missing_email
    @customers = Customer.where(email: [nil, ''])
  end
end
