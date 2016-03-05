class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
