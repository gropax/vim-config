function! s:RubyInfo()
  ruby << EOF
    puts RUBY_VERSION
    puts RUBY_PLATFORM
    puts RUBY_RELEASE_DATE
EOF
endfunction

