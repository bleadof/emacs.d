(progn
  (bind-key "M-s-c" 'make-frame-command)
  (bind-key "M-s-<right>" 'next-multiframe-window)
  (bind-key "M-s-<left>" 'previous-multiframe-window))

(provide 'frame-keybindings-conf)
