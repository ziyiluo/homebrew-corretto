
cask 'corretto11' do
  version '11.0.2.9.3'
  sha256 '87d26f592e29981807229008e5bbdbaa58d0a80e80d71cdcd86732b4203596b3'

  # d3pxv6yz143wms.cloudfront.net is the root cloudfront end of Corretto.
  url "https://d3pxv6yz143wms.cloudfront.net/#{version}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://docs.aws.amazon.com/en_us/corretto/latest/corretto-#{version.major}-ug/corretto-#{version.major}-ug.rss"
  name 'Amazon Corretto 11'
  homepage 'https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/'

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end