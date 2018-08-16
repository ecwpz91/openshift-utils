Containerized Wetty Deployer
=========

Wetty is a NodeJS powered web based terminal.  This role adds and processes the templates necessary to deploy a containerized Wetty in an OpenShift cluster.  The components are added to the "openshift" namespace by default, making them available to all users.

Requirements
------------

This role requires an OpenShift Container Platform 3.7+ cluster.  This role assumes access to a host with the **oc** CLI tool.

Role Variables
--------------

```yaml
---
# defaults file for containerized-wetty-deployer
# This is the user's login password in the terminal.
workshop_password: wetty
# The namespace to which ot add the containerized Wetty components.
component_namespace: openshift
```

Example Playbook
----------------

```yaml
- name: Workshop S2I | Containerized Wetty
  hosts: openshift_masters
  become: yes
  roles:
    - containerized-wetty-deployer-role
```

License
-------

GPLv3

Author Information
------------------

Ken Evensen is a Solutions Architect with Red Hat.
