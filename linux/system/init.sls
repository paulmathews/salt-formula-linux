{%- from "linux/map.jinja" import system with context %}
include:
{%- if system.repo|length > 0 %}
- linux.system.repo
{%- endif %}
{%- if system.pkgs|length > 0 %}
- linux.system.package
{%- endif %}
{%- if system.timezone is defined %}
- linux.system.timezone
{%- endif %}
{%- if system.kernel is defined %}
- linux.system.kernel
{%- endif %}
{%- if system.locale is defined %}
- linux.system.locale
{%- endif %}
{%- if system.user|length > 0 %}
- linux.system.user
{%- endif %}
{%- if system.group|length > 0 %}
- linux.system.group
{%- endif %}
{%- if system.job|length > 0 %}
- linux.system.job
{%- endif %}
{%- if grains.os_family == 'RedHat' %}
- linux.system.selinux
{%- endif %}
{%- if system.ca_certificates is defined %}
- linux.system.certificate
{%- endif %}
{%- if system.apparmor is defined %}
- linux.system.apparmor
{%- endif %}