git:
  config:
    apply:
      whitespace: fix
    core:
      excludesfile: ~/.gitignore
      pager: less -r
    hub:
      protocol: git
    user:
      name: Rick Jones
      email: rick.jones@playtimestudios.com
  ignores:
    - .DS_Store
    - .DS_Store?
    - .Spotlight-V100
    - .Trashes
    - ._*
    - Icon
    - Thumbs.db
    - ehthumbs.db
    - '*.swp'
    - '*.swo'
    - '*.orig'
    - '*~'
    - \#*\#
    - /tags
    - /.bundle/
