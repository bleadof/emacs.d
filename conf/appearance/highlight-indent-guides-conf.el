(req-package
  highlight-indent-guides
  :config
  (setq highlight-indent-guides-method 'character)
  (setq highlight-indent-guides-character ?\|)
  (setq highlight-indent-guides-auto-odd-face-perc 15)
  (setq highlight-indent-guides-auto-even-face-perc 15)
  (setq highlight-indent-guides-auto-character-face-perc 20)
  (setq highlight-indent-guides-responsive 'top)
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode))

(provide 'highlight-indent-guides-conf)
