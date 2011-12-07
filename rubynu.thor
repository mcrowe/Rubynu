require 'active_support/core_ext/string/inflections'

class Rubynu < Thor::Group
  include Thor::Actions

  argument :app_name

  def self.source_root
    File.dirname(__FILE__)
  end

  def apply_directory_template
    directory 'template', app_name
  end

  # def create_lib_file
  #   template('templates/newgem.tt', "#{name}/lib/#{name}.rb")
  # end
  # 
  # def create_test_file
  #   test = options[:test_framework] == "rspec" ? :spec : :test
  #   create_file "#{name}/#{test}/#{name}_#{test}.rb"
  # end
  # 
  # def copy_licence
  #   if yes?("Use MIT license?")
  #     # Make a copy of the MITLICENSE file at the source root
  #     copy_file "MITLICENSE", "#{name}/MITLICENSE"
  #   else
  #     say "Shame on you!", :red
  #   end
  # end
end