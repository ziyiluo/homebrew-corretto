
cask 'corretto8' do
  version '8.202.08.2'
  sha256 '0b79bbf6e4fa5f5ad75e49a36b52def428e160582476530b20a68837deaf0e58'

  # d3pxv6yz143wms.cloudfront.net is the root cloudfront end of Corretto.
  url "https://d3pxv6yz143wms.cloudfront.net/#{version}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://docs.aws.amazon.com/en_us/corretto/latest/corretto-#{version.major}-ug/corretto-#{version.major}-ug.rss"
  name 'Amazon Corretto 8'
  homepage 'https://docs.aws.amazon.com/corretto/latest/corretto-8-ug/'

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end