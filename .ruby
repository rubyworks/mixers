--- 
name: mixers
company: RubyWorks
title: Mixers
contact: Trans <transfire@gmail.com>
requires: 
- group: 
  - build
  name: syckle
  version: 0+
- group: 
  - test
  name: qed
  version: 0+
resources: 
  code: http://github.com/rubyworks/mixers
  mail: http://groups.google.com/group/rubyworks-mailinglist
  home: http://rubyworks.github.com/mixers
pom_verison: 1.0.0
manifest: 
- .ruby
- lib/mixers/cloneable.rb
- lib/mixers/enumargs.rb
- lib/mixers/equitable.rb
- lib/mixers/expirable.rb
- lib/mixers/hook.rb
- lib/mixers/instantiable.rb
- lib/mixers/ostructable.rb
- lib/mixers/preinitialize.rb
- lib/mixers/registerable.rb
- lib/mixers/version.yml
- lib/mixers.rb
- spec/02_cloneable.rdoc
- spec/03_enumargs.rdoc
- spec/04_equitable.rdoc
- spec/05_instantiable.rdoc
- spec/06_expirable.rdoc
- spec/08_ostructable.rdoc
- spec/09_preinitialize.rdoc
- spec/10_registerable.rdoc
- test/test_advisable.rb
- test/test_cloneable.rb
- test/test_enumargs.rb
- test/test_equitable.rb
- test/test_instantiable.rb
- test/test_preinitilizable.rb
- LICENSE
- README.rdoc
- HISTORY
- VERSION
version: 1.2.0
copyright: Copyright (c) 2010 Thomas Sawyer
licenses: 
- Apache 2.0
description: Ruby Mixers is collection mixin modules for the Ruby programming language. Mixers is a spin-off of Ruby Facets. When Ruby Facets scaled back to extensions only project, it's mixin modules were gathered to create this new project.
summary: Collection of helpful mixin modules
authors: 
- Thomas Sawyer
created: 2010-05-02
