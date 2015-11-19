# swat-yars

[swat](https://github.com/melezhik/swat) black box tests for DOCSIS config file editor:

* create a simple config structure and save it for latter
* check if a created config structure contains desired text
* download resulted config as binary file
* check if file exists, has none zero bytes and is binary


# install

    carton

# run tests

    # run tests against default host - http://home.thorsen.pm/docsisious

    carton exec swat

# run tests against a dedicated host

    carton exec swat 192.168.0.1

# a sample output

```
vagrant@Debian-jessie-amd64-netboot:~/projects/swat-app-docsisious$ swat
/home/vagrant/.swat/.cache/6740/prove/virtual/update-and-download/00.GET.t ..
ok 1 - GET http://home.thorsen.pm/docsisious/ succeeded
# response saved to /home/vagrant/.swat/.cache/6740/prove/WIc9MCa9sv
ok 2 - output match '200 OK'
ok 3 - output match '<title>DOCSIS config file editor</title>'
ok 4 - POST http://home.thorsen.pm/docsisious/ failed, still continue due to ignore_http_err set to 1
# response saved to /home/vagrant/.swat/.cache/6740/prove/BCkERQtCqE
ok 5 - output match '302 Found'
ok 6 - output match /^Location: \/docsisious\/edit\//
' match /edit\/(\S+)/csisious/edit/2fbbb7a474d3a05a92655974762056bc
ok 8 -  valid ID: 2fbbb7a474d3a05a92655974762056bc
ok 9 - GET http://home.thorsen.pm/docsisious/edit/2fbbb7a474d3a05a92655974762056bc succeeded
# response saved to /home/vagrant/.swat/.cache/6740/prove/u55mudHPqJ
ok 10 - output match '200 OK'
ok 11 - [b] output match '<textarea id="config" name="config" placeholder="Enter your DOCSIS config here">---'
ok 12 - [b] output match 'OK: 1'
ok 13 - [b] output match '</textarea>'
ok 14 - POST http://home.thorsen.pm/docsisious/ succeeded
# response saved to /home/vagrant/.swat/.cache/6740/prove/t1jY2qNjJY
ok 15 - output match '200 OK'
ok 16 - output match 'Content-Disposition: attachment; filename=example.txt'
ok 17 - response is already set
# response saved to /home/vagrant/.swat/.cache/6740/prove/Vvb76C3bV5
ok 18 - output match 'done'
ok 19 - file /home/vagrant/.swat/.cache/6740/prove/example.txt exists
ok 20 - file /home/vagrant/.swat/.cache/6740/prove/example.txt has none zero size
ok 21 - file /home/vagrant/.swat/.cache/6740/prove/example.txt is binary
1..21
ok
All tests successful.
Files=1, Tests=21, 27 wallclock secs ( 0.04 usr  0.01 sys +  0.11 cusr  0.04 csys =  0.20 CPU)
Result: PASS

```

# author

Alexey Melezhik

# see also

* [https://github.com/melezhik/swat](https://github.com/melezhik/swat)
* [https://metacpan.org/pod/App::docsisious](https://metacpan.org/pod/App::docsisious)









