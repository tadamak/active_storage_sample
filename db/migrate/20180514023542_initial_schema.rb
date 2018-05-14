# frozen_string_literal: true

class InitialSchema < ActiveRecord::Migration[5.2]
  def change
    create_table :active_storage_blobs do |t|
      t.string   :key,        null: false
      t.string   :filename,   null: false
      t.string   :content_type
      t.text     :metadata
      t.bigint   :byte_size,  null: false
      t.string   :checksum,   null: false
      t.datetime :created_at, null: false

      t.index [ :key ], unique: true
    end

    create_table :active_storage_attachments do |t|
      t.string     :name,     null: false
      t.references :record,   null: false, polymorphic: true, index: false
      t.references :blob,     null: false

      t.datetime :created_at, null: false

      t.index [ :record_type, :record_id, :name, :blob_id ], name: "index_active_storage_attachments_uniqueness", unique: true
    end

    create_table :assets do |t|
      t.string :title, limit: 100
      t.timestamps
    end

    create_table :upload_files do |t|
      t.string :file_id, limit: 36
      t.bigint :uploadable_id
      t.string :uploadable_type, limit: 50
      t.timestamps
    end
  end
end
