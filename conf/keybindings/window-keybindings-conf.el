(progn
  (bind-key "s-<left>" 'windmove-left)
  (bind-key "s-<right>" 'windmove-right)
  (bind-key "s-<up>" 'windmove-up)
  (bind-key "s-<down>" 'windmove-down))

(provide 'window-keybindings-conf)
