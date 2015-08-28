# This class will represent a mock api response with all its details
class Mock
  attr_reader :attrs

  MOCKS_DIRECTORY = 'api_mocks'

  def initialize(attrs = {})
    @attrs = attrs
  end

  def status
    attrs[:status] || 200
  end

  def body
    JSON.load(File.readlines(filename).join(''))
  end

  def headers
    {
      'Content-Type' => 'application/json',
      'X-You-Know-What-It-Is-Awesome' => 'EVERYTHING!!!'
    }
  end

  def filename
    if attrs[:response]
      "#{MOCKS_DIRECTORY}/#{attrs[:response]}.json"
    else
      "#{MOCKS_DIRECTORY}/#{infered_filename}.json"
    end
  end

  def infered_filename
    sanitized_path = attrs[:path].sub(%r{^/}, '').gsub(':', '')
                     .split('/').join('_')
    "#{attrs[:method]}_#{sanitized_path}"
  end
end
