#
# Cookbook:: ksa_test
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# the following will delete the file if the tag is not present,
# and will create the file if the tag is set.
#
# :create is the default action.
# we only need to list the non-default action of :delete

file '/tmp/tagfound' do
  action :delete unless node.tags.include?('test_tag')
end
