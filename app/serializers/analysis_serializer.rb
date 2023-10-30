class AnalysisSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :airine_id
end
