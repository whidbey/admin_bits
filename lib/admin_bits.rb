module AdminBits
  autoload :DefaultResourceMethods,  'admin_bits/default_resource_methods'
  autoload :Resource,                'admin_bits/resource'
  autoload :BaseConfig,              'admin_bits/base_config'
  autoload :Helpers,                 'admin_bits/helpers'
  autoload :ParamsHandler,           'admin_bits/params_handler'
  autoload :PathHandler,             'admin_bits/params_handler/path_handler'
  autoload :ActiveRecordSort,        'admin_bits/sorting/active_record_sort'
  autoload :PlainSort,               'admin_bits/sorting/plain_sort'
  autoload :ActiveRecordPaginator,   'admin_bits/pagination/active_record_paginator'
  autoload :PlainPaginator,          'admin_bits/pagination/plain_paginator'
  autoload :Controller,              'admin_bits/controller'
  autoload :Extentions,              'admin_bits/extentions'
  autoload :GeneratorHelpers,        'generators/generator_helpers'

  def self.included(base)
    base.send :attr_reader, :params
    base.send :include, Rails.application.routes.url_helpers
  end
end

require 'admin_bits/engine'
