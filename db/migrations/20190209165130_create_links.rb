Hanami::Model.migration do
  change do
    create_table :links do
      primary_key :id

      foreign_key :user_id, :users
      index :user_id

      column :handle, String, null: false
      index :handle, unique: true

      column :destination, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
