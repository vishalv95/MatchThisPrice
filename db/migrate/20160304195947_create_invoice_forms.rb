class CreateInvoiceForms < ActiveRecord::Migration
  def change
    create_table :invoice_forms do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
