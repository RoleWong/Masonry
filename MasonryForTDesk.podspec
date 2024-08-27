Pod::Spec.new do |s|
  s.name     = 'MasonryForTDesk'
  s.version  = '1.3.0'
  s.license  = 'MIT'
  s.summary  = 'Harness the power of Auto Layout NSLayoutConstraints with a simplified, chainable and expressive syntax.'
  s.author   = { 'Jonas Budelmann' => 'jonas.budelmann@gmail.com' }
  s.social_media_url = "http://twitter.com/cloudkite"
  
  
  s.homepage     = 'https://cloud.tencent.com/document/product/269/3794'
  s.documentation_url = 'https://cloud.tencent.com/document/product/269/9147'

  s.source   = { :git => 'https://github.com/RoleWong/Masonry.git', :tag => s.version }

  s.description = %{
    Masonry is a light-weight layout framework which wraps AutoLayout with a nicer syntax.
	Masonry has its own layout DSL which provides a chainable way of describing your
	NSLayoutConstraints which results in layout code which is more concise and readable.
    Masonry supports iOS and Mac OSX.
  }

  pch_AF = <<-EOS
    #ifndef TARGET_OS_IOS
        #define TARGET_OS_IOS TARGET_OS_IPHONE
    #endif
    #ifndef TARGET_OS_TV
        #define TARGET_OS_TV 0
    #endif
  EOS

  s.source_files = 'Masonry/*.{h,m}'

  s.ios.frameworks = 'Foundation', 'UIKit'
  s.tvos.frameworks = 'Foundation', 'UIKit'
  s.osx.frameworks = 'Foundation', 'AppKit'

  s.ios.deployment_target = '9.0'
  s.requires_arc = true
end
