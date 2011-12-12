# Rubynu—A scaffold generator for ruby projects

Creating my preferred scaffolding for new ruby projects by hand has gotten old. Sure, there are tools out there like bundler's `bundle gem` to do this for you, but they aren't flexible enough to meet everybody's preferences. I want something as flexible as my tastes are fickle, something I can change the template to on a whim.

So, I built `rubynu`. It's a Thor script that leans heavily on Thor's directory templating abilities. Thor is amazing for this kind of generator: instead of building everything programatically, you can define an entire directory template&mdash;using erb templating for file contents, file names, and even directory structure. This kind of template makes it stupid easy to add new files, or to do any number of structural changes to it without touching the script itself. By Thor's Hammer!

Currently, `rubynu` builds a project with the standard structure:

    bin/
    lib/
      %app_name%.rb
      %app_name%/
    spec/
    Gemfile
    README.markdown
   
It also sets up rspec, with a `spec_helper`, `.rspec`, and a pending spec; RVM with an `.rvmrc`; git with a `.gitignore`; as well as some useful scaffolded code.

To see exactly what `rubynu` generates, check out the `templates` directory.

### Installation

Rubynu is a [Thor](https://github.com/wycats/thor) script, and you will have to install Thor first. Then, clone this repository, and run:

    thor install rubynu
    
### Usage

Generate a new ruby project by running:

    thor rubynu [project_name]
