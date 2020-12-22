module ApplicationHelper
  def contentful
    raise StandardError, 'environmentvariable CONTENTFUL_ACCESS_TOKEN is not set' unless ENV['CONTENTFUL_ACCESS_TOKEN']
    raise StandardError, 'environmentvariable CONTENTFUL_SPACE_ID is not set' unless ENV['CONTENTFUL_SPACE_ID']
    @client ||= Contentful::Client.new(
        access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
        space: ENV['CONTENTFUL_SPACE_ID'],
        dynamic_entries: :auto,
        raise_errors: true
    )
  end
end
