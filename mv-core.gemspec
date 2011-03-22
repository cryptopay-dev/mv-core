# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mv-core}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Valeriy Prokopchuk"]
  s.date = %q{2011-03-22}
  s.description = %q{Migration Validators project core classes}
  s.email = %q{vprokopchuk@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    "lib/migration_validators/active_record/base.rb",
    "lib/migration_validators/active_record/connection_adapters/abstract_adapter.rb",
    "lib/migration_validators/active_record/connection_adapters/native_adapter.rb",
    "lib/migration_validators/active_record/connection_adapters/table.rb",
    "lib/migration_validators/active_record/connection_adapters/table_definition.rb",
    "lib/migration_validators/active_record/migration.rb",
    "lib/migration_validators/active_record/schema.rb",
    "lib/migration_validators/active_record/schema_dumper.rb",
    "lib/migration_validators/adapters/base.rb",
    "lib/migration_validators/adapters/containers.rb",
    "lib/migration_validators/adapters/routing.rb",
    "lib/migration_validators/adapters/syntax.rb",
    "lib/migration_validators/adapters/validator_definitions.rb",
    "lib/migration_validators/core/adapter_wrapper.rb",
    "lib/migration_validators/core/db_validator.rb",
    "lib/migration_validators/core/statement_builder.rb",
    "lib/migration_validators/core/validator_container.rb",
    "lib/migration_validators/core/validator_definition.rb",
    "lib/migration_validators/core/validator_router.rb",
    "lib/mv-core.rb",
    "lib/options.rb"
  ]
  s.homepage = %q{http://github.com/vprokochuk256/mv-core}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Migration Validators project core classes}
  s.test_files = [
    "spec/migration_validators/active_record/connection_adapters/abstract_adapter_spec.rb",
    "spec/migration_validators/active_record/connection_adapters/table_definition_spec.rb",
    "spec/migration_validators/active_record/migration.rb",
    "spec/migration_validators/active_record/schema_dumper_spec.rb",
    "spec/migration_validators/adapters/base_spec.rb",
    "spec/migration_validators/core/adapter_wrapper_spec.rb",
    "spec/migration_validators/core/db_validator_spec.rb",
    "spec/migration_validators/core/statement_builder_spec.rb",
    "spec/migration_validators/core/validator_container_spec.rb",
    "spec/migration_validators/core/validator_definition_spec.rb",
    "spec/migration_validators/core/validator_router_spec.rb",
    "spec/mv-core_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/factories/db_validator.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 2.3.5"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 2.3.5"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 2.3.5"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

