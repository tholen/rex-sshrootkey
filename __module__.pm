package Rex::Ssh::Rootkeys;
use Rex -base;

user 'root';
key_auth;

# Usage: rex install 

desc 'Add in the ssh keys for my user';
task 'setup', sub { 

	file "/root/.ssh",
	ensure => "directory",
	owner  => "root",
	group  => "root";

	my $check_ssh = run 'grep -l "xarlos@command1" /root/.ssh/authorized_keys';
	if ($? == 0) {
		Rex::Logger::info "User (command1) already exists - ignoring", 'error';
	} else {
		run 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDA8iO6zGobq7OAof+OYgyoITRo7+g8C1OAOGSJeEtTivtfpBRzvQiT/t1X1K2tOH1loA631fIGmRjypJfwBiNwC6xbeXVv0tVmcwR2/aboILI+NAbMZjfmhUJgGCECJLaNhLc9EFnK1k+KHg+tmd7yUw7B2T/qlW6lSQOmeRIvjVIayPjsWOCt4o28E3Nr29SOQGAL8xgRSkSeNR7/UxgwkDSU8GKx/g80HlSGwKNpkL4hw2OD52UP20ZaqkrmTNVbNUJsGNjbVoyq3NW5t3c6d6V7vBYrOwMIUTbVPkd6cT5ZjOgSa4Ul5voZvAMP/V+o26QpeewvWKpV6Wm/4onD xarlos@command1" >> /root/.ssh/authorized_keys';
	}

	my $check_ssh = run 'grep -l "xarlos@monestary1" /root/.ssh/authorized_keys';
	if ($? == 0) {
		Rex::Logger::info "User (monestary1) already exists - ignoring", 'error';
	} else {
		run 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDqU2Qiu2tkLlgtrH0TFggWAXTktKY4VQvmX1y9F5wlzJlQwBsOMvWWF1WPtuHet9Vqrfv+T29KdJMTm807/CJIWkoszeIYiFdwWdqc471inM6311lyW3sWeSOS9rPIaR0ilm1Rdz4oTQCNk+KCCSHYv/PcPUDTvcDms+RNUFWWqWrf7jYBIDh6CGTt8BLNpwYe2PBI4dSDD+26a+2CLM7M8gFrLu1gp95Xn/UcmW6+nIJQEpU1SVOMGXQ2el1dJo9l/347xLDECYMSbgXcvvY6aK5jRCNanuAQvlT+gpCEqylk5K1L9kYc66DLX+lqT53tWV/36aZqTNdoAP8nrWf9 root@monestary1" >> /root/.ssh/authorized_keys';
	}
};

1;
