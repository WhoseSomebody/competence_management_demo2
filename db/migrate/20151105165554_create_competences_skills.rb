class CreateCompetencesSkills < ActiveRecord::Migration
  def change
    create_table :competences_skills, id: false do |t|
      t.references :skill, index: true, foreign_key: true
      t.references :competence, index: true, foreign_key: true
    end
  end
end
