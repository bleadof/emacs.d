(use-package buffer-move
  :bind (("C-s-<up>" . buf-move-up)
         ("C-s-<down>" . buf-move-down)
         ("C-s-<left>" . buf-move-left)
         ("C-s-<right>" . buf-move-right)))

(use-package delete-this-buffer-and-file
  :bind (("C-c C-k" . delete-this-buffer-and-file)))

(provide 'buffer-keybindings-conf)
