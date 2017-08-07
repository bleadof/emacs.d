(req-package buffer-move
  :bind (("C-s-<up>" . buf-move-up)
         ("C-s-<down>" . buf-move-down)
         ("C-s-<left>" . buf-move-left)
         ("C-s-<right>" . buf-move-right)
         ("M-S-<up>" . buf-move-up)
         ("M-S-<down>" . buf-move-down)
         ("M-S-<left>" . buf-move-left)
         ("M-S-<right>" . buf-move-right)))

(req-package delete-this-buffer-and-file
  :bind (("C-c C-k" . delete-this-buffer-and-file)))

(provide 'buffer-keybindings-conf)
