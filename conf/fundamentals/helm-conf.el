(req-package helm
  :bind (("M-i" . helm-imenu)
         ("M-x" . helm-M-x))
  :config
  (progn
    (req-package helm-config)
    (setq helm-buffers-fuzzy-matching           t
          helm-move-to-line-cycle-in-source     t
          helm-ff-search-library-in-sexp        t
          helm-ff-file-name-history-use-recentf t)
    (helm-autoresize-mode 1)
    (helm-mode 1)))

(provide 'helm-conf)
