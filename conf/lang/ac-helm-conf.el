(use-package ac-helm
  :bind ("C-:" . ac-complete-with-helm)
  :init
  (define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-helm))

(provide 'ac-helm-conf)
