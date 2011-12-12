# Rubynu
## A scaffold generator for generic ruby projects

Rubynu generates a basic scaffold for a generic ruby project. It is a thor script that builds projects using a very customizable template. The project it generates is my preferred starting point for a new ruby project&mdash;using rvm, git, and rspec&mdash;but it is designed to be easily modified to whatever you prefer.

Check out the `templates` directory to see exactly what gets generated out of the box.

### Installation

Rubynu is a [Thor](https://github.com/wycats/thor) script, and you will have to install Thor first. Then, clone this repository, and run:

    thor install rubynu
    
### Usage

Generate a new ruby project by running:

    thor rubynu [project_name]
