(use-package helm
  :bind (("C-x C-f" . helm-find-files)
         ("M-i"     . helm-imenu)
         ("M-x"     . helm-M-x)
         ("C-x b"   . helm-buffers-list))
  :config
  (progn
    (require 'helm-config)
    (setq helm-buffers-fuzzy-matching           t
          helm-move-to-line-cycle-in-source     t
          helm-ff-search-library-in-sexp        t
          helm-ff-file-name-history-use-recentf t
          helm-find-files                       t
          helm-reuse-last-window-split-state    nil
          helm-split-window-in-side-p           nil
          helm-always-two-windows               t
          helm-autoresize-max-height            40 ; it is %.
          helm-autoresize-min-height            10 ; it is %.
          fit-window-to-buffer-horizontally     1)
    (helm-autoresize-mode 1)
    (helm-mode 1)))

(provide 'helm-conf)
