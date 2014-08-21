module Paths

  # Change this to switch environments
  TARGET = :Production
  #TARGET = :Local
  #TARGET = :LocalSSL
  #TARGET = :Guest

  BASE_URL = {
    :Production  => "http://moduscreate.com/",
    :Local => "http://localhost:8080/",
    :LocalSSL => "https://localhost:8443/",
    :Guest => "http://localhost:80/",
  }

  def path_to(page_name)
    if ENV["BASE_URL"]
        base_url = ENV["BASE_URL"]
    else
        base_url = BASE_URL[TARGET]
    end
    case page_name
    when /the desktop home page/i
       base_url
    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
     end
  end

end

World(Paths)
