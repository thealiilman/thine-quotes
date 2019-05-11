class QuoteSerializer < BaseSerializer
  attribute :content
  
  attribute :originator do |object|
    OriginatorSerializer.new(object.originator)
  end
end
