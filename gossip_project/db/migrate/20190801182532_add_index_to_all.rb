class AddIndexToAll < ActiveRecord::Migration[5.2]
  def change
#Insertion colonne city_id dans le tableau users : Une ville a plusieurs habitants
    add_reference :users, :city, foreign_key: true
#Insertion colonne gossip_id dans le tableau de jointure gossip_tags : Un gossip a plusieurs tags
    add_reference :gossip_tags, :gossip, foreign_key: true
#Insertion colonne gossip_tag dans le tableau de jointure gossip_tags : Un tag a plusieurs gossips
    add_reference :gossip_tags, :tag, foreign_key: true
#Insertion colonne user_id dans le tableau gossips : Un user a plusieurs gossips
    add_reference :gossips, :user, foreign_key: true
  end
end
