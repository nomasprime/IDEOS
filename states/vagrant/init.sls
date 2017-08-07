{% import 'osx/application.sls' as application %}
{{ application.install('virtualbox') }}
{{ application.install(slspath) }}
