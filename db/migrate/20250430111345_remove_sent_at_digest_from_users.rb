class RemoveSentAtDigestFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :reset_sent_at, :datetime
  end
end
