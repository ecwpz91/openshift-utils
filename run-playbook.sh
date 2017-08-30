# Convenience script

export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook -i inventory/inventory.cfg "$@"