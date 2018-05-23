# Root crumb
crumb :root do
    link "Home", root_path
  end
  
  # work list
  crumb :works do
    link "Work", 'work#index'
  end
  
  # work
  crumb :work do |issue|
    link issue.title, issue
    parent :works
  end