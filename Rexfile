user 'root';
key_auth;

# Usage: rex install 

desc 'Add in the ssh keys for my user'
task 'install', sub { 

	file "/root/.ssh",
	ensure => "directory",
	owner  => "root",
	group  => "root";

	my $check_ssh = run 'grep -l "xarlos@command1" /root/.ssh/authorized_keys";
	if ($? == 0) {
		Rex:Logger::info "User already exists - ignoring", 'error';
	} else {
		run 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDA8iO6zGobq7OAof+OYgyoITRo7+g8C1OAOGSJeEtTivtfpBRzvQiT/t1X1K2tOH1loA631fIGmRjypJfwBiNwC6xbeXVv0tVmcwR2/aboILI+NAbMZjfmhUJgGCECJLaNhLc9EFnK1k+KHg+tmd7yUw7B2T/qlW6lSQOmeRIvjVIayPjsWOCt4o28E3Nr29SOQGAL8xgRSkSeNR7/UxgwkDSU8GKx/g80HlSGwKNpkL4hw2OD52UP20ZaqkrmTNVbNUJsGNjbVoyq3NW5t3c6d6V7vBYrOwMIUTbVPkd6cT5ZjOgSa4Ul5voZvAMP/V+o26QpeewvWKpV6Wm/4onD xarlos@command1" >> /root/.ssh/authorized_keys';
	}
};
