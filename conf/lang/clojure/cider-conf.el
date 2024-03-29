(use-package cider
  :ensure t
  :init
  (progn
    (setq cider-cljs-boot-repl
          "(boot (dev))")
    (setq cider-cljs-lein-repl
          "(do
             (require 'figwheel-sidecar.repl-api)
             (figwheel-sidecar.repl-api/start-figwheel!)
             (figwheel-sidecar.repl-api/cljs-repl))")
    (setq cider-stacktrace-default-filters '(tooling dup)
          cider-repl-pop-to-buffer-on-connect nil
          cider-prompt-save-file-on-load nil
          cider-repl-use-clojure-font-lock t)
    (add-hook 'clojure-mode-hook 'cider-mode))
  :config
  (with-eval-after-load 'golden-ratio
    (push 'cider-popup-buffer-quit-function golden-ratio-extra-commands)))
:bind (("M-<up>" . cider-repl-previous-input)
       ("M-<down>" . cider-repl-next-input))

(use-package cider-eval-sexp-fu
  :ensure t
  :after cider)

(provide 'cider-conf)
