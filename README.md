# Minilisp

Minilisp is a micro Lisp interpreter implemented in Ruby so you can do a
lisp sorcery in hacking your ruby projects. :p

## Installation

Add this line to your application's Gemfile:

    gem 'minilisp'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minilisp

## Usage

The LISP interpreter is just a Ruby class that evals expressions in Ruby data structures, like so:

    l = Minilisp.new
    
    l.eval [:label, :a, 42]

    l.eval :a
    #=> 42

    l.eval [:eq, 42, :a]
    #=> true

    l.eval [:quote, [1, 2]]
    #=> [1, 2]

    l.eval [:car, [:quote, [1, 2]]]
    #=> 1

    l.eval [:cdr, [:quote, [1, 2]]]
    #=> [2]

    l.eval [:cons, 1, [:quote, [2,3]]]
    #=> [1, 2, 3]

    l.eval [:if, [:eq, 1, 2], 42, 43]
    #=> 43

    l.eval [:atom, [:quote, [1,2]]]
    #=> false

    l.eval [:label, :second, [:quote, [:lambda, [:x],   [:car, [:cdr, :x]]]]]

    l.eval [:second, [:quote, [1, 2, 3]]]
    #=> 2

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Acknowledgement

  + [μlithp]
    
## License

MIT.
    
[μlithp]: https://github.com/readevalprintlove/ulithp
