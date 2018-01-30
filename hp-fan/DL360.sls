{% if grains['productname'] == 'ProLiant DL360 Gen9' %}
packages:
  pkg:
    - installed
      pkgs:
        - hp-scripting-tools
        - hp-health

/root/bin/hp-fan-script-rhel6.sh:
  file:
    - managed
    - user: 0
    - group: 0
    - mode: 755
    - makedirs: True
    - source: salt://hardware//root/bin/hp-fan-script-rhel6.sh

run-/root/bin/hp-fan-script-rhel6.sh:
  cmd.run:
    - name: /root/bin/hp-fan-script-rhel6.sh
    - user: root
    - group: root
    - cwd: /
    - creates: /root/.fan_config
{% endif %}
