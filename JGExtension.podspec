Pod::Spec.new do |s|
s.name         = "JGExtension"
s.version      = "1.0.0"
s.summary      = "Swift JGExtension 모음"
s.description      = <<-DESC
Swift JGExtension 모음, @IBDesignable 사용한다.
                     DESC

s.homepage     = "https://github.com/junggate/JGExtension"
s.license      = "MIT"

s.author             = { "JungGate" => "josansnim@gmail.com" }

s.platform     = :ios, "11.0"
s.source       = { :git => "https://github.com/junggate/JGExtension.git", :branch => "master" }
s.source_files  = 'JGExtension/JGExtension/**/*'
end
