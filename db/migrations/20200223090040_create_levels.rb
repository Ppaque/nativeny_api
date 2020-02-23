Hanami::Model.migration do
  change do
    create_table :levels do
      primary_key :id

      column :value, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
