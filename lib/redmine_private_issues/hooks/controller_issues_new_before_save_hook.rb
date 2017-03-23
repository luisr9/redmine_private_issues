module RedmineContracts
  module Hooks
    class ControllerIssuesEditBeforeSaveHook < Redmine::Hook::ViewListener
      def controller_issues_edit_before_save(context={})         
        if Setting.plugin_redmine_private_issues['enabled']  == "true" && context[:params] && context[:params][:issue]
			context[:issue].is_private = true			
		end
		return ''
      end

      alias_method :controller_issues_new_before_save, :controller_issues_edit_before_save
    end
  end
end