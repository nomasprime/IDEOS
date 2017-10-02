{% import 'osx/application.sls' as application -%}
{{ application.library(slspath, pillar.mode, pillar.force) }}
{{ application.install(slspath) }}
