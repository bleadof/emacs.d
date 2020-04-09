(progn
  ;; Answering just 'y' or 'n' will do
  (defalias 'yes-or-no-p 'y-or-n-p)

  (show-paren-mode 1)
  (setq-default indent-tabs-mode nil)
  (setq-default case-fold-search nil)
  (setq x-select-enable-clipboard           t
        x-select-enable-primary             t
        save-interprogram-paste-before-kill t
        apropos-do-all                      t
        mouse-yank-at-point                 t
        require-final-newline               t
        visible-bell                        t
        show-trailing-whitespace            t
        max-lisp-eval-depth                 10000)
  (desktop-save-mode 1)
  (put 'upcase-region 'disabled nil)
  (put 'downcase-region 'disabled nil))

(provide 'sane-defaults-conf)
