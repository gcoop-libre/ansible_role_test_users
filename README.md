# Ansible Role: gcoop-libre.test_users

This role, make login system users and other basic tests.

## Requirements

None.

## Role Variables

Available variables with default values in `defaults/main.yml`.

## Dependencies

None.

## Example Playbook

If you want to test login users usign a diferents passwords.

```yaml
---
- hosts: all

  roles:
    - role: gcoop-libre.test_users
      login_password: DefaultSecret
      login_users:
        - username: alice
          password: CustomSecret
        - username: bob
```

## License

GNU General Public License, GPLv3.

## Author Information

This role was created in 2019 by
 [Osiris Alejandro Gomez](https://osiux.com/), worker cooperative of
 [gcoop Cooperativa de Software Libre](https://www.gcoop.coop/).
