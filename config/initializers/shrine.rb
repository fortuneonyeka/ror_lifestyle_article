# frozen_string_literal: true

require 'cloudinary'
require 'shrine/storage/cloudinary'

Cloudinary.config(
  cloud_name: 'dd6iakosn',
  api_key: '335357174486578',
  api_secret: 'flZBHvn9W87FmpiEiNOfFFhGfio'
)

Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: 'test_app/cache'), # for direct uploads
  store: Shrine::Storage::Cloudinary.new(prefix: 'test_app')
}

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data
# Shrine.plugin :restore_cahed_data
Shrine.plugin :validation_helpers
Shrine.plugin :validation
