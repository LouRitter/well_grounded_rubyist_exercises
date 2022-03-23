require "English"

$gvar = "IM GLOBAL"
#notgvar = "Im out of scope"
class C
  def examine_global
    puts $gvar
    #puts notgvar
  end
  def predefined_globals
    puts $0
    puts $.
    puts $INPUT_LINE_NUMBER
    puts $PID
    puts $:
    puts $LOAD_PATH
    puts $$
  end
end
c = C.new
c.examine_global
c.predefined_globals