json.array!(@invoice_forms) do |invoice_form|
  json.extract! invoice_form, :id, :name
  json.url invoice_form_url(invoice_form, format: :json)
end
