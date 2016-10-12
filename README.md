# WebmailProvider

[![Gem Version](https://badge.fury.io/rb/webmail_provider.svg)](http://badge.fury.io/rb/webmail_provider)

WebmailProvider returns provider names and login URLs for email addresses of some common German and international webmail domains.

## Installation

Add, install, or require `webmail_provider`.

## Usage

```ruby
WebmailProvider.for('foo@gmail.com')
# => #<WebmailProvider @name="Gmail", @url=#<URI::HTTPS https://mail.google.com>>

WebmailProvider.for('foo@foobar.com')
# => nil
```
