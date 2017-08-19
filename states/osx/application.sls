{% macro library(application) -%}
  {% set application_support = salt['pillar.get']("%s:files:library:application_support" % application, False) -%}

  {% if pillar.get('mode', '') == 'source' -%}
    {% if application_support -%}
.copy_{{ application_support }}:
  file.copy:
    - force: True
    - name: {{ pillar.pwd }}/states/{{ application }}/files/Library/Application Support/{{ application_support }}
    - source: {{ pillar.global.modes.source.dir }}/Application Support/{{ application_support }}
    {%- endif -%}

    {% for preference in salt['pillar.get']("%s:files:library:preferences" % application, []) %}
.copy_{{ preference }}:
  file.copy:
    - force: True
    - name: {{ pillar.pwd }}/states/{{ application }}/files/Library/Preferences/{{ preference }}
    - source: {{ pillar.global.modes.source.dir }}/Preferences/{{ preference }}
    {%- endfor -%}
  {% else -%}
    {% if application_support -%}
.copy_{{ application_support }}:
  file.copy:
    - name: {{ pillar.global.user.application_support_dir }}/{{ application_support }}
    - source: {{ pillar.pwd }}/states/{{ application }}/files/Library/Application Support/{{ application_support }}
    {%- endif -%}

    {% for preference in salt['pillar.get']("%s:files:library:preferences" % application, []) %}
.copy_{{ preference }}:
  file.copy:
    - name: {{ pillar.global.user.preferences_dir }}/{{ preference }}
    - source: {{ pillar.pwd }}/states/{{ application }}/files/Library/Preferences/{{ preference }}
    {%- endfor %}
  {%- endif %}
{%- endmacro -%}

{% macro install(application) -%}
.install_app_{{ application }}:
  cmd.run:
    - name: brew cask install {{ application }}
    - creates: /usr/local/Caskroom/{{ application }}
{%- endmacro -%}
