class StringIO < Data
  include IO::generic_writable
  include IO::generic_readable
  include Enumerable


  def self.open(arg0, arg1, *rest)
  end


  def binmode
  end

  def bytes
  end

  def chars
  end

  def close
  end

  def close_read
  end

  def close_write
  end

  def closed?
  end

  def closed_read?
  end

  def closed_write?
  end

  def codepoints
  end

  def each(arg0, arg1, *rest)
  end

  def each_byte
  end

  def each_char
  end

  def each_codepoint
  end

  def each_line(arg0, arg1, *rest)
  end

  def eof
  end

  def eof?
  end

  def external_encoding
  end

  def fcntl(arg0, arg1, *rest)
  end

  def fileno
  end

  def flush
  end

  def fsync
  end

  def getbyte
  end

  def getc
  end

  def gets(arg0, arg1, *rest)
  end

  def internal_encoding
  end

  def isatty
  end

  def length
  end

  def lineno
  end

  def lineno=(arg0)
  end

  def lines(arg0, arg1, *rest)
  end

  def pid
  end

  def pos
  end

  def pos=(arg0)
  end

  def putc(arg0)
  end

  def read(arg0, arg1, *rest)
  end

  def readlines(arg0, arg1, *rest)
  end

  def reopen(arg0, arg1, *rest)
  end

  def rewind
  end

  def seek(arg0, arg1, *rest)
  end

  def set_encoding(arg0, arg1, *rest)
  end

  def size
  end

  def string
  end

  def string=(arg0)
  end

  def sync
  end

  def sync=(arg0)
  end

  def tell
  end

  def truncate(arg0)
  end

  def tty?
  end

  def ungetbyte(arg0)
  end

  def ungetc(arg0)
  end

  def write(arg0)
  end


  protected


  private

  def initialize(arg0, arg1, *rest)
  end

  def initialize_copy(arg0)
  end

end
