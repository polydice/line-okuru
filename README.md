# Line::Okuru

ActionView helpers for creating NAVER LINE share buttons.

## Installation

Add this line to your application's Gemfile:

    gem 'line-okuru'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install line-okuru

## Usage

There're currently 5 types of button available.

![Buttons](http://media.line.naver.jp/img/img_icon_design.png)

In this gem, the above button types are named as below:

* Wide (88x20px)
* Small (20x20px)
* **Default:** Medium (30x30px)
* Large (40x40px)
* Tall (30x70px)

To insert button to your template (Use ERB for example), 

```
<%= line_share_button "Check out Line Okuru https://github.com/polydice/line-okuru" %>
	
```

To insert button of different type, 

```
<%= line_share_button "Check out Line Okuru https://github.com/polydice/line-okuru", :button_type => :large %>	

```

Also, you can pass in HTML attributes for button as parameters as using other ActionView helpers.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The codes are under MIT License, and the button images are copyrighted by NAVER.

## Links

[Official Setup Guide for LINE Send Buttons (Japanese)](http://media.line.naver.jp/howto/ja/)
