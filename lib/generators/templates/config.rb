Rails.application.configure do
  config.assets.precompile += %w(admin_bits.css admin_bits.js)
  config.eager_load_paths += %W( #{config.root}/lib )
  config.eager_load = true
end
