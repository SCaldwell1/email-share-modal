json.extract! share_modal, :id, :title, :content, :slug, :created_at, :updated_at
json.url share_modal_url(share_modal, format: :json)