Redmine::Plugin.register :redmine_issue_sort_lft do
  name 'Redmine Issue Sort Lft plugin'
  author 'Bilel KEDIDI'
  description 'This is a plugin that sort issue by Lft by default vs Id'
  version '0.0.1'
  url 'https://www.github.com/bilel-kedidi/redmine_issue_sort_lft'
  author_url 'https://www.github.com/bilel-kedidi'
end
require 'redmine_issue_sort_lft/issues_controller_patch'
