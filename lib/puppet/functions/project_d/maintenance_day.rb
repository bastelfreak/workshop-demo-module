Puppet::Functions.create_function(:'project_d::maintenance_day') do
  dispatch :noparam do
  end

  def noparam()
    mintag = 1
    maxtag = 4
    res = call_function('fqdn_rand',  maxtag - mintag ) + mintag
    res
  end
end

