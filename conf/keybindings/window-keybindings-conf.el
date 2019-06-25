(use-package windmove
  :bind
  (("s-<left>" . windmove-left)
   ("s-<right>" . windmove-right)
   ("s-<up>" . windmove-up)
   ("s-<down>" . windmove-down)
   ("M-S-<up>" . windmove-up)
   ("M-S-<down>" . windmove-down)
   ("M-S-<left>" . windmove-left)
   ("M-S-<right>" . windmove-right)))

(bind-key "s->" 'enlarge-window-horizontally)
(bind-key "s-<" 'shrink-window-horizontally)

(provide 'window-keybindings-conf)
