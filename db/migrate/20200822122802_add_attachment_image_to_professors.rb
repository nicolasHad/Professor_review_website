class AddAttachmentImageToProfessors < ActiveRecord::Migration[4.2]
  def self.up
    change_table :professors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :professors, :image
  end
end
