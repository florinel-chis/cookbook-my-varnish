include_recipe "varnish"

base_template_path = "#{node['varnish']['dir']}/#{node['varnish']['vcl_conf']}"
begin
  r = resources(:template => base_template_path )
  r.cookbook "my-varnish"
  Chef::Log.info "Found it "+base_template_path
rescue Chef::Exceptions::ResourceNotFound
  Chef::Log.warn "could not find template to override: "+base_template_path
end