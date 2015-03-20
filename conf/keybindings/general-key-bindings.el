(progn
  (bind-key "C-x C-e" 'eval-region)
  (bind-key "C-c r" 'revert-buffer)
  (bind-key "M-s-l" 'goto-line))

(provide 'general-key-bindings)
