# frozen_string_literal: true

FactoryBot.define do
  factory :upload_file do
    file_id { SecureRandom.uuid }

    after :build do |upload_file|
      upload_file.original_file.attach(io: File.open(File.join(Rails.root, "spec/fixtures/assets/files/logo.png")),
                                       filename: "logo.png",
                                       content_type: "image/png") unless upload_file.original_file.attached?
``    end
  end
end
