Redmine::Plugin.register :redmine_private_issues do
  name 'Redmine Private Issues plugin'
  author 'Luis Roa'
  description 'This plugin set to true the private field of all issues when is enabled'
  version '1.0.0'
  url 'https://github.com/luisr9/redmine_private_issues'
  author_url 'luis.roa9@gmail.com'
  
  settings  :partial => 'settings/redmine_private_issues_settings',
    :default => {
      'enabled' => 'false'
    }
end

require 'redmine_private_issues/hooks/controller_issues_new_before_save_hook'
