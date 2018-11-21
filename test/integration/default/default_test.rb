control 'check_terraform' do



describe command('terraform output external_ip') do
  its('stdout') { should_not eq "127.0.0.1\n" }
  its('exit_status') { should eq 0 }
end
end
