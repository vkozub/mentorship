class Configuration
  def self.[](key)
    @config[key]
  end

  def self.[]=(key, value)
    @config[key] = value
  end

  def self.load(scheme)
    file_path = File.expand_path('../../../config/config.yml', __FILE__)
    doc = YAML.safe_load(ERB.new(File.read(file_path)).result)
    doc_values = doc['apps']
    @config = doc[scheme] unless doc.nil?

    unless @config then
      @config = {}
      doc_values.each do |site|
        @config[site] = site_url(site, scheme)
      end
    end
    puts @config.inspect
  end

  def self.site_url(site, scheme)
    sign = scheme == 'ondemand' ? '.' : '-'
    "https://#{site}#{sign}#{ENV['SUBDOMAIN']}.#{ENV['CLUSTER']}.#{ENV['DOMAIN']}"
  end
end

Configuration.load(ENV['TEST_ENV'])
