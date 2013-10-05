Cookbook: my-varnish
===================

Cookbook to override default.vcl (in a "clean" way). I'm using [varnish](https://github.com/opscode-cookbooks/varnish) cookbook 
and I needed to use a custom vcl. There is more than one way to do that, my choice was to override the `default.vcl.erb`
template with my configuration.

I stumbled over this [Replacing a template in a wrapper cookbook](http://stackoverflow.com/questions/15933157/replacing-a-template-in-a-wrapper-cookbook) and tried to implemented.

I am using it with [vagrant-varnish-chef_solo](https://github.com/florinel-chis/vagrant-varnish-chef_solo)

```

$ cd vagrant-varnish-chef_solo
$ git submodule add https://github.com/florinel-chis/cookbook-my-varnish.git cookbooks/my-varnish

```

Feedback is welcome.
