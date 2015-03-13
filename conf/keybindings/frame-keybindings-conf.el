(progn
  (defun move-to-next-frame ()
    (interactive)
    (other-frame 1))

  (defun move-to-previous-frame ()
    (interactive)
    (other-frame -1))

  (bind-key "M-s-k" 'delete-frame)
  (bind-key "M-s-c" 'make-frame-command)
  (bind-key "M-s-<right>" 'move-to-next-frame)
  (bind-key "M-s-<left>" 'move-to-previous-frame))

(provide 'frame-keybindings-conf)
