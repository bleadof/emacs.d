(use-package web-mode
  :config
  (progn
    (define-derived-mode web-json-mode web-mode "WebJSON"
      "Major mode for editing json with web-mode."
      (web-mode)
      (setq web-mode-content-type "json"))))

(provide 'json-conf)
