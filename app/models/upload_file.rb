# frozen_string_literal: true

class UploadFile < ApplicationRecord
  has_one_attached :original_file

  belongs_to :uploadable, polymorphic: true, inverse_of: false
end
