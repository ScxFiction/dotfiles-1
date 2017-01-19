zsh:
  pkg.installed

zsh-antigen-clone:
  git.latest:
    - name: https://github.com/zsh-users/antigen.git
    - rev: master
    - target: /opt/zsh-antigen
    - depth: 1

zsh-base16-clone:
  git.latest:
    - name: https://github.com/chriskempson/base16-shell.git
    - rev: master
    - target: /opt/base16-shell
    - depth: 1

zsh-zshrc:
  file.managed:
    - name: {{ grains.homedir }}/.zshrc
    - source: salt:///zsh/zshrc
    - user: {{ grains.user }}
    - group: {{ grains.user }}
    - template: jinja

zsh-zshrc.antigen:
  file.managed:
    - name: {{ grains.homedir }}/.zshrc.antigen
    - source: salt:///zsh/zshrc.antigen
    - user: {{ grains.user }}
    - group: {{ grains.user }}