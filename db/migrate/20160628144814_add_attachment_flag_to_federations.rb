class AddAttachmentFlagToFederations < ActiveRecord::Migration
  def self.up
    change_table :federations do |t|
      t.attachment :flag
    end
  end

  def self.down
    remove_attachment :federations, :flag
  end
end
