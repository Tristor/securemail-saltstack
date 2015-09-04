securemail-openssh-server-pkg:
  pkg:
    - installed
    - pkgs:
      - openssh-server

securemail-openssh-server-conf:
  file:
    - managed
    - source: salt://openssh-server/files/sshd_config
    - name: /etc/ssh/sshd_config
    - user: root
    - group: root
    - mode: 644
    - require:
      pkg: securemail-openssh-server-pkg

securemail-openssh-server-service:
  service:
    - running
    - name: openssh-server
    - enabled: True
    - require:
      pkg: securemail-openssh-server-pkg
    - watch:
      file: securemail-openssh-server-conf
