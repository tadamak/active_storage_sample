# frozen_string_literal: true

FactoryBot.define do
  factory :asset do
    sequence(:title) { |n| "title_#{n}" }

    trait :with_original_file do
      after :build do |asset|
        asset.upload_files << FactoryBot.build(:upload_file, uploadable: asset)
      end
    end
  end
end
