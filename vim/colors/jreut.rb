class Highlight # :nodoc:
  attr_reader :opts

  def initialize(opts)
    @opts = Hash.new { 'NONE' }.merge opts
  end

  def to_s
    ['hi', category, cterm, ctermfg, ctermbg].join(' ')
  end

  private def category
    opts[:category].to_s
  end

  private def cterm
    "cterm=#{opts[:style]}"
  end

  private def ctermfg
    "ctermfg=#{opts[:fg]}"
  end

  private def ctermbg
    "ctermbg=#{opts[:bg]}"
  end
end

def hi(opts)
  Vim.command Highlight.new opts
end
