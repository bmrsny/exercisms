class ETL
  def self.transform(old)
    old.inject({}) do |new_scores, collection|
      set_new_hash(new_scores, collection)
      new_scores
    end
  end

  def self.set_new_hash(new_scores, collection)
    collection.last.each do |value|
      new_scores[value.downcase] = collection.first
    end
  end
end
