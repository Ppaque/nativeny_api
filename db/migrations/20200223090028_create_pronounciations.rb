Hanami::Model.migration do
  change do
    create_table :pronounciations do
      primary_key :id
      foreign_key :word_id, :words, null: false

      column :value, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
