class CreateCompetencesKnowledges < ActiveRecord::Migration
  def change
    create_table :competences_knowledges, id: false do |t|
      t.references :competence, index: true, foreign_key: true
      t.references :knowledge, index: true, foreign_key: true
    end
  end
end
