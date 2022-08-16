# frozen_string_literal: true

require_relative '../lib/exchange_it'

RSpec.configure do |config|
  #config.define_derived_metadata(file_path: /exchange_it\/utils/) do |meta|
  #ставим метки на все тесті папки utils
    # meta[:fast] = true
  #end

   # config.filter_run_excluding :win_only unless RUBY_PLATFORM.match?(/jruby/i) - фильтрация
end
