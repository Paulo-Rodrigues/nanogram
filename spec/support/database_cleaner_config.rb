require 'database_cleaner'

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.starategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.aound(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end
end
