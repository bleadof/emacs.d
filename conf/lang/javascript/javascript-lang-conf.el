(use-package nodejs-repl
  :hook js-mode-hook
  :bind
  (("C-x C-e" . nodejs-repl-send-last-expression)
   ("C-c C-j" . nodejs-repl-send-line)
   ("C-c C-r" . nodejs-repl-send-region)
   ("C-c C-l" . nodejs-repl-load-file)
   ("C-c C-z" . nodejs-repl-switch-to-repl)))
