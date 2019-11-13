class SearchQuery
  def initialize(query)
    @query = query
  end

  def to_relation
    if query.present?
      Account. where("username @@ :q", q: query)
    else
      Account.all.sample.limit(5)
    end
  end

  private
  attr_reader :query
end
