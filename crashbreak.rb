PROJECT_ROOT = File.expand_path '..', __FILE__

Crashbreak.configure do |config|
  config.api_key = ENV['CRASHBREAK_TOKEN']

  config.error_serializers = [Crashbreak::DefaultSummarySerializer.new, Crashbreak::EnvironmentVariablesSerializer.new]

  config.dumpers = [Crashbreak::RequestDumper.new]

  config.request_spec_file_path = 'crashbreak_error_spec.rb'

  config.request_spec_template_path = "#{PROJECT_ROOT}/crashbreak_error_template.rb"

  config.ignored_environments = []

  config.project_root = PROJECT_ROOT
end