class Object < BasicObject
  include Kernel

  ARGF = ARGF
  ARGV = []
  Addrinfo = Addrinfo
  ArgumentError = ArgumentError
  Array = Array
  BasicObject = BasicObject
  BasicSocket = BasicSocket
  Bignum = Bignum
  Binding = Binding
  CGI = CGI
  CROSS_COMPILING = nil
  Class = Class
  ClosedQueueError = ClosedQueueError
  Comparable = Comparable
  Complex = Complex
  ConditionVariable = Thread::ConditionVariable
  Data = Data
  Date = Date
  DateTime = DateTime
  Delegator = Delegator
  DidYouMean = DidYouMean
  Digest = Digest
  Dir = Dir
  ENV = {"PATH"=>"/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games", "XAUTHORITY"=>"/run/user/1000/gdm/Xauthority", "XMODIFIERS"=>"@im=ibus", "XDG_DATA_DIRS"=>"/usr/share/gnome:/usr/local/share/:/usr/share/", "GDMSESSION"=>"gnome", "MANDATORY_PATH"=>"/usr/share/gconf/gnome.mandatory.path", "GTK_IM_MODULE"=>"xim", "DBUS_SESSION_BUS_ADDRESS"=>"unix:abstract=/tmp/dbus-YpGG7s9nrc", "DEFAULTS_PATH"=>"/usr/share/gconf/gnome.default.path", "XDG_CURRENT_DESKTOP"=>"GNOME", "UPSTART_SESSION"=>"unix:abstract=/com/ubuntu/upstart-session/1000/1212", "QT4_IM_MODULE"=>"xim", "SESSION_MANAGER"=>"local/sessho-nb:@/tmp/.ICE-unix/1465,unix/sessho-nb:/tmp/.ICE-unix/1465", "USERNAME"=>"sessho", "QT_LINUX_ACCESSIBILITY_ALWAYS_ON"=>"1", "LOGNAME"=>"sessho", "JOB"=>"dbus", "PWD"=>"/home/sessho/Desktop", "IM_CONFIG_PHASE"=>"1", "SHELL"=>"/bin/bash", "APTANA_VERSION"=>"3.6.2.1413590556", "GIO_LAUNCHED_DESKTOP_FILE"=>"/etc/xdg/autostart/nautilus-autostart.desktop", "INSTANCE"=>"", "GNOME_DESKTOP_SESSION_ID"=>"this-is-deprecated", "GTK_MODULES"=>"gail:atk-bridge", "CLUTTER_IM_MODULE"=>"xim", "SESSIONTYPE"=>"gnome-session", "XDG_SESSION_DESKTOP"=>"gnome", "SHLVL"=>"1", "QT_IM_MODULE"=>"ibus", "XFILESEARCHPATH"=>"/usr/dt/app-defaults/%L/Dt", "XDG_CONFIG_DIRS"=>"/etc/xdg/xdg-gnome:/usr/share/upstart/xdg:/etc/xdg", "LANG"=>"de_DE.UTF-8", "GNOME_KEYRING_CONTROL"=>"", "XDG_SESSION_ID"=>"1", "XDG_SESSION_TYPE"=>"x11", "DISPLAY"=>":1", "GPG_AGENT_INFO"=>"/home/sessho/.gnupg/S.gpg-agent:0:1", "DESKTOP_SESSION"=>"gnome", "SESSION"=>"gnome", "USER"=>"sessho", "XDG_MENU_PREFIX"=>"gnome-", "GIO_LAUNCHED_DESKTOP_FILE_PID"=>"1624", "QT_ACCESSIBILITY"=>"1", "WINDOWPATH"=>"2", "SSH_AUTH_SOCK"=>"/run/user/1000/keyring/ssh", "XDG_SEAT"=>"seat0", "NLSPATH"=>"/usr/dt/lib/nls/msg/%L/%N.cat", "QT_QPA_PLATFORMTHEME"=>"appmenu-qt5", "XDG_VTNR"=>"2", "XDG_RUNTIME_DIR"=>"/run/user/1000", "HOME"=>"/home/sessho", "GNOME_KEYRING_PID"=>""}
  EOFError = EOFError
  Encoding = Encoding
  EncodingError = EncodingError
  Enumerable = Enumerable
  Enumerator = Enumerator
  Errno = Errno
  Etc = Etc
  Exception = Exception
  FALSE = false
  FalseClass = FalseClass
  Fiber = Fiber
  FiberError = FiberError
  File = File
  FileTest = FileTest
  FileUtils = FileUtils
  Fixnum = Fixnum
  Float = Float
  FloatDomainError = FloatDomainError
  GC = GC
  Gem = Gem
  Hash = Hash
  IO = IO
  IOError = IOError
  IPSocket = IPSocket
  IndexError = IndexError
  Integer = Integer
  Interrupt = Interrupt
  Kernel = Kernel
  KeyError = KeyError
  LoadError = LoadError
  LocalJumpError = LocalJumpError
  Marshal = Marshal
  MatchData = MatchData
  Math = Math
  Method = Method
  Module = Module
  Monitor = Monitor
  MonitorMixin = MonitorMixin
  Mutex = Thread::Mutex
  NIL = nil
  NameError = NameError
  Net = Net
  NilClass = NilClass
  NoMemoryError = NoMemoryError
  NoMethodError = NoMethodError
  NotImplementedError = NotImplementedError
  Numeric = Numeric
  OUTPUT_PATH = "/home/sessho/binary-clock-arduino-ruby/.metadata/.plugins/com.aptana.ruby.core/-68293079/4/"
  Object = Object
  ObjectSpace = ObjectSpace
  OpenSSL = OpenSSL
  OptParse = OptionParser
  OptionParser = OptionParser
  Proc = Proc
  Process = Process
  Queue = Thread::Queue
  RUBY_COPYRIGHT = "ruby - Copyright (C) 1993-2015 Yukihiro Matsumoto"
  RUBY_DESCRIPTION = "ruby 2.3.0p0 (2015-12-25) [x86_64-linux-gnu]"
  RUBY_ENGINE = "ruby"
  RUBY_ENGINE_VERSION = "2.3.0"
  RUBY_PATCHLEVEL = 0
  RUBY_PLATFORM = "x86_64-linux-gnu"
  RUBY_RELEASE_DATE = "2015-12-25"
  RUBY_REVISION = 0
  RUBY_VERSION = "2.3.0"
  Random = Random
  Range = Range
  RangeError = RangeError
  Rational = Rational
  RbConfig = RbConfig
  Regexp = Regexp
  RegexpError = RegexpError
  Resolv = Resolv
  RubyVM = RubyVM
  RuntimeError = RuntimeError
  STDERR = IO.new
  STDIN = IO.new
  STDOUT = IO.new
  ScanError = StringScanner::Error
  ScriptError = ScriptError
  SecureRandom = SecureRandom
  SecurityError = SecurityError
  Set = Set
  Signal = Signal
  SignalException = SignalException
  SimpleDelegator = SimpleDelegator
  SizedQueue = Thread::SizedQueue
  Socket = Socket
  SocketError = SocketError
  SortedSet = SortedSet
  StandardError = StandardError
  StopIteration = StopIteration
  String = String
  StringIO = StringIO
  StringScanner = StringScanner
  Struct = Struct
  Symbol = Symbol
  SyntaxError = SyntaxError
  SystemCallError = SystemCallError
  SystemExit = SystemExit
  SystemStackError = SystemStackError
  TCPServer = TCPServer
  TCPSocket = TCPSocket
  TOPLEVEL_BINDING = #<Binding:0x000000023020f8>
  TRUE = true
  TSort = TSort
  Tempfile = Tempfile
  Thread = Thread
  ThreadError = ThreadError
  ThreadGroup = ThreadGroup
  Time = Time
  Timeout = Timeout
  TimeoutError = Timeout::Error
  TracePoint = TracePoint
  TrueClass = TrueClass
  TypeError = TypeError
  UDPSocket = UDPSocket
  UNIXServer = UNIXServer
  UNIXSocket = UNIXSocket
  URI = URI
  UnboundMethod = UnboundMethod
  UncaughtThrowError = UncaughtThrowError
  ZeroDivisionError = ZeroDivisionError
  Zlib = Zlib
  fatal = nil



  protected


  private

  def DelegateClass(arg0)
  end

  def Digest(arg0)
  end

  def dir_names(arg0)
  end

  def file_name(arg0)
  end

  def get_classes
  end

  def grab_instance_method(arg0, arg1)
  end

  def print_args(arg0)
  end

  def print_instance_method(arg0, arg1)
  end

  def print_method(arg0, arg1, arg2, arg3, arg4, *rest)
  end

  def print_type(arg0)
  end

  def print_value(arg0)
  end

  def timeout(arg0, arg1, *rest)
  end

end
