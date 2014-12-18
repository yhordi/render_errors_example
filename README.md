### An example of how to render errors in sinatra
###### This guide assumes you'll be building your app off of the sinatra skeleton.

in Gemfile:
<p>
  <code>
    gem 'sinatra-flash'
  </code>
</p>
<p>
  in environment.rb
  <code>
    require 'sinatra/flash'
  </code>
</p>
<p>
  In active record errors are stored in an instance of the model you're working with. If you want access to them all you have to do is call .errors on your model. if you want to see what the errors object looks like you just have to break a validation and p out the errors in your server.
</p>
<p>
  In your session hash you can store just about anything. With the flash gem it enables you to store errors in the flash has which is nested inside the session hash. This enables you to persist data across routes.
</p>

<p>
  As a result of storing errors in the session hash you can then pull that data into your view, most likely using a conditional.
</p>
