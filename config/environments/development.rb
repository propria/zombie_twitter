Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true


  # Preloads the dev version of the application's database with sample data.

  config.after_initialize do
    Rails.application.routes.default_url_options = { :host => CONFIG[:host], :port => CONFIG[:port] }

    puts b [:status]
    puts b [:zombie]
    puts b [:zombie] + "said" + b[:status]

    t= Tweet.find (3)
    puts t.id
    puts t. status puts t. zombie

    t = Tweet.new
    t.status = "I<3 brains."
    t.save

    tweet.find (3)

    t= Tweet.find(3)
    t.zombie = "EyeballChomper"
    t.save

    t= Tweet.find (3)
    t.destroy

    t = Tweet.new (:status=> "I<3 brains", :zombie => "Jim")
    Tweet.create( :status => "i<3 brains", :zombie => "Jim")

    Tweet.find(2)
    Tweet.find(3, 4, 5)
    Tweet.first
    Tweet.last
    Tweet.all
    Tweet.count
    Tweet.order(:zombie)
    Tweet.limit(10)
    Tweet.where (:zombie=>"ash")
    Tweet.where(:zombie=>"ash").order(:zombie).limit(10)

    t= Tweet.find(2)
    t.attributes={
      :status=> "Can I munch your eyeballs?",
      :zombie=> "EyeballChomper"
    }
    t.save

    t= Tweet.find(2)
    t.update_attributes(
    :status=> "Can I munch your eyeballs?",
    :zombie => "EyeballChomper"
    )

    Tweet.find(2).destroy
    Tweet.destroy_all
  end
end
