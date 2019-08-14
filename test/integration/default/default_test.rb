# InSpec test for recipe node::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe service ('nginx') do
  it {should be_installed}
  it {should be_enabled}
  it {should be_running}
end

# This is an example test, replace it with your own test.
describe port(80) do
  it {should be_listening}
end

describe http('http://localhost',enable_remote_worker: true) do
  its('status'){ should cmp 502 }
end
