Hanami::Model.migration do
  change do
    create_table :words do
      primary_key :id
      foreign_key :language_id, :languages, null: false
      foreign_key :level_id, :levels, null: false

      column :name, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
