(use-package helm
  :bind ("M-i" . helm-imenu)
  :init
  (require 'helm-config)
  :config
  ((helm-mode 1)
   (helm-autoresize-mode 1)))

(provide 'helm-conf)
