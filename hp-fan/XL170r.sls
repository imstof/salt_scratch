{% if grains['productname'] == 'ProLiant XL170r Gen9' %}
hp-scripting-tools:
  pkg:
    - installed                

/root/bin/hp-fan-script.sh:
  file:
    - managed
    - user: 0
    - group: 0
    - mode: 755
    - makedirs: True
    - source: salt://hardware//root/bin/hp-fan-script.sh

run-/root/bin/hp-fan-script.sh:
  cmd.run:
    - name: /root/bin/hp-fan-script.sh
    - user: root
    - group: root
    - cwd: /
    - creates: /root/.fan_config
{% endif %}
