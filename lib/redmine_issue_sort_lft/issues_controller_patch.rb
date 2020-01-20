module RedmineIssueSortLft
  module IssuesControllerPatch
    def self.included(base)
      base.send(:include, InstanceMethods)
      base.class_eval do
        alias_method :index_without_lft, :index
        alias_method :index, :index_with_lft
      end
    end
    module InstanceMethods
      def index_with_lft
        params[:sort] =  params[:sort].presence || 'parent:desc,id:desc'
        index_without_lft
      end
    end
  end
end
IssuesController.send(:include, RedmineIssueSortLft::IssuesControllerPatch )