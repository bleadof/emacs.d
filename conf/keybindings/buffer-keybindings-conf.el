(require 'functions-conf)

(use-package buffer-move
  :ensure t
  :bind (("C-s-<up>" . buf-move-up)
         ("C-s-<down>" . buf-move-down)
         ("C-s-<left>" . buf-move-left)
         ("C-s-<right>" . buf-move-right)))

(use-package bind-key
  :ensure t
  :config
  (bind-key "C-c C-k" 'delete-file-and-buffer))

(provide 'buffer-keybindings-conf)
