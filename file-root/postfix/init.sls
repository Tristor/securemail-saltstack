securemail-postfix-pkg:
  pkg:
    - installed
    - pkgs:
       - postfix
       - postfix-mysql
    - require:
      pkg: securemail-dovecot-pkg
      pkg: securemail-mariadb-pkg

securemail-postfix-mainconf:
  file:
    - managed
    - owner: 
