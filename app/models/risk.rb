class Risk < ActiveRecord::Base

	has_and_belongs_to_many(
		:risks, :join_table=>"risk_relations",
		:foreign_key=> "Risk_form_id",
		:association_foreign_key=> "Risk_to_id")
end
