#!/usr/bin/python

import urllib2

host = 'http://arouseosu.com:8000/admin/stats.xml'
username = 'admin'
password = 'arouseFTW!'

pass_mgr = urllib2.HTTPPasswordMgrWithDefaultRealm()
pass_mgr.add_password(None,host,username,password)

handler = urllib2.HTTPBasicAuthHandler(pass_mgr)

