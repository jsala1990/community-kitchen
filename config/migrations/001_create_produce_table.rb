migration 'create the produce table' do
  database.create_table :produce do
    primary_key :id
    string      :name
  end
end