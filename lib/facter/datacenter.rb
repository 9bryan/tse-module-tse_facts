Facter.add('datacenter') do
  setcode do
    domain = Facter.value('domain')
    case domain
    when 'inf.puppet.vm' 
      'infrastructure'
    when 'syd.puppet.vm'
      'sydney'
    when 'pdx.puppet.vm'
      'portland'
    else
      'unknown'
    end
  end
end
