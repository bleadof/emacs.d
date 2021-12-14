(use-package helm
  :ensure t
  :bind (("C-x C-f" . helm-find-files)
         ("M-i"     . helm-imenu)
         ("M-x"     . helm-M-x)
         ("C-x b"   . helm-buffers-list))
  :config
  (require 'helm-config)
  (setq helm-buffers-fuzzy-matching           t
        helm-move-to-line-cycle-in-source     t
        helm-ff-search-library-in-sexp        nil
        helm-ff-file-name-history-use-recentf nil
        helm-find-files                       nil
        helm-reuse-last-window-split-state    nil
        helm-split-window-in-side-p           nil
        helm-always-two-windows               t
        helm-autoresize-max-height            40 ; it is %.
        helm-autoresize-min-height            20 ; it is %.
        fit-window-to-buffer-horizontally     1)
  (helm-autoresize-mode 1)
  (helm-mode 1))

(provide 'helm-conf)
