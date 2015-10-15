(use-package ediff
  :config
  (progn
    (setq ediff-split-window-function 'split-window-horizontally)
    (ediff-even-diff-A ((((class color) (background dark)) (:background "dark red"))))
    (ediff-even-diff-B ((((class color) (background dark)) (:background "dark green"))))
    (ediff-odd-diff-A ((((class color) (background dark)) (:background "dark red"))))
    (ediff-odd-diff-B ((((class color) (background dark)) (:background "dark green"))))))

(provide 'ediff-conf)
