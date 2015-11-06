class CreateAttainmentsCompetences < ActiveRecord::Migration
  def change
    create_table :attainments_competences, id: false do |t|
      t.references :competence, index: true, foreign_key: true
      t.references :attainment, index: true, foreign_key: true
    end
  end
end
