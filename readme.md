## Update

This issue has been temporarily resolved. The fix (for now) was to flip the order of Twilio and Pusher. If Pusher is loaded first, the conflict seems to be ignored. 

Twilio and Pusher are both aware of the issue and it sounds like it will be resolved in the near future.

## Twilio and Pusher Example

The goal of this sample is to demonstrate a websocket-js fallback bug between Twilio and Pusher. 

## Set up 

* download the source
* bundle 
* change/or configure the ENV variables (3 each) for both twilio and pusher (in app.rb and pusher.key in views/index.erb)
* On your twilio account (you can use the sandbox) you need to set the call url to http://yourdomain.com/call. In my case on heroku it is http://twiliopusher.heroku.com/call. 

## On Testing 

* Twilio provides a helpful service called [localtunnel](http://www.twilio.com/engineering/2011/06/06/making-a-local-web-server-public-with-localtunnel/) which should allow you to test without deploying.
* [ShowOff](http://showoff.io) is a super commercial alternative. 