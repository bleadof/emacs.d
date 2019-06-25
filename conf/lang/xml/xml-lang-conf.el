(use-package nxml-mode
  :after bf-pretty-print-xml-region
  :config
  (progn
    (mumamo-background-chunk-major ((((class color) (background dark)) (:background "black"))))
    (mumamo-background-chunk-submode1 ((((class color) (background dark)) (:background "black"))))))

(provide 'xml-lang-conf)
