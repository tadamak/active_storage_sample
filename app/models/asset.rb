# frozen_string_literal: true

class Asset < ApplicationRecord
  has_many :upload_files, class_name: "UploadFile", as: :uploadable
  accepts_nested_attributes_for :upload_files, allow_destroy: true
end
