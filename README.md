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

If you're using Bundler and Capybara since this is not a registered Gem
(yet?):

```ruby
# Top of Gemfile
git_source(:github_https) do |repo_name|
  "https://github.com/#{repo_name}.git"
end

# Somewhere in the middle of Gemfile
gem 'geckodriver-midcap-helper', github_https: 'midcap/geckodriver-midcap-helper'
```

then, in `spec/rails_helper.rb` or `spec/support/capybara.rb`:

```ruby
Capybara.register_driver :selenium do |app|
  browser_options = ::Selenium::WebDriver::Firefox::Options.new
  # Uncomment lines below to run firefox in headless mode
  # broswer_options.args << '--headless'
  # broswer_options.args << '--disable-gpu'

  Capybara::Selenium::Driver.new(
    app,
    browser: :firefox,
    options: browser_options
  )
end
```

# Updating Geckodriver

If you'd like to upgrade to the latest version of geckodriver,
In the repo root path:

MacOSX
```
grep -rl '0.33.0' . | xargs perl -e "s/0.33.0/0.XX.0/" -pi # Where XX is
the newer version
```

# License

MIT licensed, see LICENSE.txt for full details.


# Credit

This is a maintained fork of the gem [geckodriver-bin](https://github.com/0rvar/geckodriver-bin).

