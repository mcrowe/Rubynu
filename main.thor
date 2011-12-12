class Rubynu < Thor::Group
  include Thor::Actions

  argument :app_name

  def self.source_root
    File.dirname(__FILE__)
  end

  def print_starting_message
    say "\nCreating a new ruby project called #{app_name}\n", :yellow
  end
  
  def apply_directory_template
    directory 'templates', app_name
  end

  def print_setup_message
    say "\nDone\n", :yellow
    say <<-EOS
To get started, run:

  cd #{app_name}
  bundle
  rspec spec
  
Have fun!  
EOS
  end

end