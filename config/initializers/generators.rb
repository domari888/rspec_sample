Rails.application.config.generators.rb do |g|
  # rails g でコントローラやモデルを作成したときに，RSpecのテストファイルも作成されるように設定
  g.skip_routes true
  g.assets false
  g.helper false
  g.test_framework :rspec,
                    fixtures: true,
                    view_specs: false,
                    routing_specs: false,
                    helper_specs: false,
                    controller_specs: false,
                    request_specs: true
end