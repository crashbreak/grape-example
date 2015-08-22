Crashbreak.configure do |config|
  config.api_key = ENV['CRASHBREAK_TOKEN']

  config.error_serializers = [Crashbreak::DefaultSummaryFormatter.new, Crashbreak::EnvironmentVariablesFormatter.new]

  config.dumpers = [Crashbreak::RequestDumper.new]

  config.request_spec_file_path = 'crashbreak_error_spec.rb'

  config.ignored_environments = []
end