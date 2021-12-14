(set-face-attribute
 'default nil
 :height
 (cond
  ((string-equal (system-name) "hiili") 140)
  (t 150)))

(provide 'font-conf)
