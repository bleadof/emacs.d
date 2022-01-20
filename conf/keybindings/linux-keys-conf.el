(if (eq system-type 'gnu/linux)
    (progn
      (define-key key-translation-map (kbd "<dead-tilde>") (kbd "~"))
      (define-key key-translation-map (kbd "<dead-circumflex>") (kbd "^"))
      (define-key key-translation-map (kbd "<dead-diaresis>") (kbd "¨"))
      (define-key key-translation-map (kbd "<dead-grave>") (kbd "`"))
      (define-key key-translation-map (kbd "<dead-acute>") (kbd "´"))
      (define-key key-translation-map (kbd "<dead-cedilla>") (kbd "¸"))
      (define-key key-translation-map (kbd "<dead-caron>") (kbd "ˇ"))
      (define-key key-translation-map (kbd "<dead-belowdot>") (kbd " "))))

(provide 'linux-keys-conf)
