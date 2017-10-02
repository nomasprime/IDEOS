{% macro library(application, mode, force) %}
{% set state_lib_dir = "{0}/salt/{1}/files/Library/".format(pillar.pwd, application) %}
{% set application_pillar = application.replace("-", "_") %}
{% set application_support = salt['pillar.get']("{0}:files:library:application_support".format(application_pillar), False) %}
{% if application_support %}
.copy_{{ application_support }}:
  file.copy:
{% set relative_application_support_dir = "Application Support/{0}".format(application_support) %}
{% set state_application_support_dir = state_lib_dir + relative_application_support_dir %}
{% if mode == 'source' %}
    - force: True
    - name: {{ state_application_support_dir }}
    - source: {{ pillar.global.modes.source.lib_dir + relative_application_support_dir }}
{% elif mode == 'destination' %}
{% if force == 'true' %}
    - force: True
{% endif %}
    - name: {{ pillar.global.user.home_dir }}/Library/Application Support/{{ application_support }}
    - source: {{ state_application_support_dir }}
{% endif %}
{% endif %}
{% for preference in salt['pillar.get']("%s:files:library:preferences" % application_pillar, []) %}
.copy_{{ preference }}:
  file.copy:
{% set relative_preferences_dir = "Preferences" %}
{% set state_preferences_dir = state_lib_dir + relative_preferences_dir %}
{% if mode == 'source' %}
    - force: True
    - name: {{ state_preferences_dir }}/{{ preference }}
    - source: {{ pillar.global.modes.source.lib_dir + relative_preferences_dir }}/{{ preference }}
{% elif mode == 'destination' %}
{% if force == 'true' %}
    - force: True
{% endif %}
    - name: {{ pillar.global.user.home_dir }}/Library/Preferences/{{ preference }}
    - source: {{ state_preferences_dir }}/{{ preference }}
{% endif %}
{% endfor %}
{% endmacro %}

{% macro install(application) %}
.install_app_{{ application }}:
  cmd.run:
    - name: brew cask install {{ application }}
    - creates: /usr/local/Caskroom/{{ application }}
{% endmacro %}
