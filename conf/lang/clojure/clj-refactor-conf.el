 (req-package clj-refactor
    :init
    (add-hook 'clojure-mode-hook 'clj-refactor-mode)
    :config
    (progn
      (cljr-add-keybindings-with-prefix "C-c C-r")))

(provide 'clj-refactor-conf)
