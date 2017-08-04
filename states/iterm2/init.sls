{% import 'osx/application.sls' as application -%}
{{ application.library(slspath) }}
{{ application.install(slspath) }}
