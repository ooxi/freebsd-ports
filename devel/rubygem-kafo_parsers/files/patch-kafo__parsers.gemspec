--- kafo_parsers.gemspec.orig	2015-08-28 14:37:15 UTC
+++ kafo_parsers.gemspec
@@ -26,8 +26,6 @@ Gem::Specification.new do |s|
       s.add_development_dependency(%q<minitest>, ["~> 4.0"])
       s.add_development_dependency(%q<simplecov>, ["< 0.9"])
       s.add_development_dependency(%q<ci_reporter>, ["~> 1.9.0"])
-      s.add_runtime_dependency(%q<puppet>, [">= 0"])
-      s.add_runtime_dependency(%q<rdoc>, [">= 3.9.0"])
     else
       s.add_dependency(%q<bundler>, ["~> 1.5"])
       s.add_dependency(%q<rake>, [">= 0"])
