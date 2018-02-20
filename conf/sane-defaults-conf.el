(progn
  ;; Answering just 'y' or 'n' will do
  (defalias 'yes-or-no-p 'y-or-n-p)

  (show-paren-mode 1)
  (setq-default indent-tabs-mode nil)
  (setq x-select-enable-clipboard t
	x-select-enable-primary t
	save-interprogram-paste-before-kill t
	apropos-do-all t
	mouse-yank-at-point t
	require-final-newline t
	visible-bell t)
  (setq-default case-fold-search nil)
  (desktop-save-mode 1)
  (setq show-trailing-whitespace t)
  (setq max-lisp-eval-depth 10000)
  (put 'upcase-region 'disabled nil))

(provide 'sane-defaults-conf)
