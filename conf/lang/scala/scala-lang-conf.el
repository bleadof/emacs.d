(use-package scala-mode2)
(use-package ensime
  :config (add-hook 'scala-mode-hook 'ensime-scala-mode-hook))

(use-package web-mode
  :config
  (progn
    (add-to-list 'auto-mode-alist '("\\.scala\\.html\\'" . web-mode))
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-code-indent-offset 2)))

(provide 'scala-lang-conf)
