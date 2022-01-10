(use-package yaml-mode
  :ensure t)

(use-package highlight-indent-guides
  :ensure t
  :init
  (add-hook 'yaml-mode-hook #'highlight-indent-guides-mode))

(provide 'yaml-lang-conf)
