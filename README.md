# geckodriver-bin

*Note: This is a maintained fork of the abandoned maintained fork [geckodriver-bin](https://github.com/0rvar/geckodriver-bin) of the abandoned gem [geckodriver-helper](https://github.com/DevicoSolutions/geckodriver-helper)*


Easy installation and use of [geckodriver](https://github.com/mozilla/geckodriver), that provides the HTTP API 
described by the WebDriver protocol to communicate with Gecko browsers, such as Firefox.

* [https://github.com/midcap/geckodriver-midcap-helper](https://github.com/midcap/geckodriver-midcap-helper)


# Description

`geckodriver-midcap-helper` installs an executable, `geckodriver`, in your
gem path.

This script will, if necessary, download the appropriate binary for
your platform and install it into `~/.geckodriver-midcap-helper`, then exec
it.

# Usage

If you're using Bundler and Capybara, it's as easy as:

```ruby
# Gemfile
gem 'geckodriver-midcap-helper'
```

then, in `spec/rails_helper.rb` or `spec/support/capybara.rb`:

```ruby
Capybara.register_driver :selenium do |app|
  options = ::Selenium::WebDriver::Firefox::Options.new
  # Uncomment line below to run firefox in headless mode
  # options.args << '--headless'

  Capybara::Selenium::Driver.new(app, browser: :firefox, options: options)
end
```

# Updating Geckodriver

If you'd like to force-upgrade to the latest version of geckodriver,
run the script `gecko_updater`


# License

MIT licensed, see LICENSE.txt for full details.


# Credit

This is a maintained fork of the gem [geckodriver-bin](https://github.com/0rvar/geckodriver-bin).

