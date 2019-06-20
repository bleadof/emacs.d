(require 'functions-conf)

(progn
  (bind-key "C-x C-e" 'eval-region)
  (bind-key "C-c r" 'revert-buffer)
  (bind-key "M-s-l" 'goto-line)
  (bind-key "C-a" 'beginning-of-line-or-indentation)
  (bind-key "C-c i" 'format-file))

(provide 'general-key-bindings)
