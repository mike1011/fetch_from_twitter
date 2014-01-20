

def path_to(page_name)
  case page_name
  
  when /homepage/
    root_path
  when /resultpage/
    user_tweet_tweet_index_path
  
  # Add more page name => path mappings here
  
  else
    raise "Can't find mapping from \"#{page_name}\" to a path."
  end
end

