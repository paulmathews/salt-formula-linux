describe command('grep "" /etc/sudoers.d/*') do
    its('stdout') { should_not match /sudouser0/  }
    its('stdout') { should match /sudouser1 localhost=\(test\) ALL/  }
    its('stdout') { should match /sudouser2.*!SUDO_RESTRICTED_SU/  }
    its('stdout') { should match /sudouser2.*less/  }
    its('stdout') { should_not match /sudouser0/  }
    its('stdout') { should_not match /sudouser1 .* !SUDO_RESTRICTED_SU/  }
end
