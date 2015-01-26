Role Name
=========

This is for now, an experimental role to setup in Debian, FreeRadius 3 + TTLS-PEAP/PEAP authenticated in Active Directory. The setup should be automatic for the EDUROAM PT federation. For any other purposes, you have to edit it yourself.

At the end of the script run as a user allowed to do sudo "bash /usr/local/bin/setup.sh"

Requirements
------------

At the moment this is highly beta code and only working in Debian 8.

Role Variables
--------------

freeradius_version: 
	version of the freeradius to download and install from official site

eapol_version: 
	version of the wpa_supplicant to download from the official site

realm: 
	your EDUROAM realm

ad_server: 
	IP address of your Active Directory

domain: 
	Your Windows AD Domain, all caps

domain_l:
	Your Windows AD Domain

workgroup: 
	Your Workgroup

user_to_add_machine: 
	User allowed to add machine to AD
hostname_dc: 
	The name of the HOSTNAME

base_dn: 
	Your base DN for LDAP requests

filter: 
	Your ldap filter for user

membership_filter: 
	Your ldap to test for getting user

membership_attribute: 
	The ldap attribute for member

domain_user: 
	User to Bind to AD

domain_user_pass: 
	Domain password

VLAN_roaming: 
VLAN_employees: 
VLAN_students: 

private_key: 
	The key used to protected your certificates
countryName: PT
stateOrProvinceName: Lisboa
localityName: Lisboa
emailAddress: sistemas.si@iscte.pt
organizationName: ISCTE-IUL


Example Playbook
----------------

---
- hosts: debtestes
  gather_facts: true
  sudo: yes
  roles:
    - prepare
    - ntp
    - kerberos
    - samba
    - freeradius
    - mysql
    - eapol

License
-------
MIT

Author Information
------------------
Rui Fernando Ferreira Ribeiro
http://pt.linked.in.com/pub/rui-ribeiro/16/ab8/434/

