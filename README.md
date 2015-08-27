# Grape example for crashbreak.com

## Setup

### Crashbreak
Read about crashbreak setup [here](https://github.com/crashbreak/crashbreak). Also you can check the [crashbreak.rb](https://github.com/crashbreak/grape_example/blob/master/crashbreak.rb) file.

### Use crashbreak middleware
Add our middleware to your stack.

```ruby
use Crashbreak::ExceptionCatcherMiddleware
```

### Config file

#### project_root
For non rails project you need to specify project root, eg:
```ruby
config.project_root = File.expand_path '..', __FILE__
```

#### request_spec_template_path
With grape you probably need custom requst spec template, example template can be found [here](https://github.com/crashbreak/crashbreak/blob/master/lib/generators/crashbreak/templates/rspec_test.rb).

```ruby
config.request_spec_template_path = "#{PROJECT_ROOT}/crashbreak_error_template.rb"
```
