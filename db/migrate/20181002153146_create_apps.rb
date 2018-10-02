class CreateApps < ActiveRecord::Migration[5.2]
  def change
    create_table :apps do |t|
      # Name of our app, used for visual readability.
      t.string :name, unique: true

      # Internal identifier of our app, for communication from the open api endpoint
      t.string :token, unique: true

      # Switch to determine if this app is currently accepting data.
      # Allows us to remotly turn off this app from taking data requests.
      t.boolean :monitor, default: true 
      t.timestamps
    end
  end
end
