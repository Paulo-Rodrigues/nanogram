class SearchService
  def initialize(query)
    @query = query
  end

  def call
    SearchQuery.new(query).to_relation
  end

  private
  attr_reader :query
end
