(use-package nxml
  :config (progn
            (use-package bf-pretty-print-xml-region)
            (mumamo-background-chunk-major ((((class color) (background dark)) (:background "black"))))
            (mumamo-background-chunk-submode1 ((((class color) (background dark)) (:background "black"))))))

(provide 'xml-lang-conf)
