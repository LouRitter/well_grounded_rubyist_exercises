module TestModule 
  def ruby_version
    system("ruby -v")
  end
end

class ModuleTester 
  include TestModule
end

ModuleTester.new.ruby_version