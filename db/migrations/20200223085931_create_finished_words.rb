Hanami::Model.migration do
  change do
    create_table :finished_words do
      primary_key :id
      foreign_key :user_id, :users, null: false
      foreign_key :word_id, :words, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
