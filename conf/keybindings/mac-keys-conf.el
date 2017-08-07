(defun setup-mac-keys ()
  "Map mac keys"
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta)
  (setq ns-function-modifier 'hyper)

  (define-key key-translation-map (kbd "s-§") (kbd "¶"))
  (define-key key-translation-map (kbd "s-1") (kbd "©"))
  (define-key key-translation-map (kbd "s-2") (kbd "@"))
  (define-key key-translation-map (kbd "s-3") (kbd "£"))
  (define-key key-translation-map (kbd "s-4") (kbd "$"))
  (define-key key-translation-map (kbd "s-5") (kbd "∞"))
  (define-key key-translation-map (kbd "s-6") (kbd "§"))
  (define-key key-translation-map (kbd "s-7") (kbd "|"))
  (define-key key-translation-map (kbd "s-8") (kbd "["))
  (define-key key-translation-map (kbd "s-9") (kbd "]"))
  (define-key key-translation-map (kbd "s-0") (kbd "≈"))
  (define-key key-translation-map (kbd "s-+") (kbd "±"))

  (define-key key-translation-map (kbd "s-°") (kbd "•"))
  (define-key key-translation-map (kbd "s-©") (kbd "¡"))
  (define-key key-translation-map (kbd "s-@") (kbd "”"))
  (define-key key-translation-map (kbd "s-£") (kbd "\\"))
  (define-key key-translation-map (kbd "s-$") (kbd "¢"))
  (define-key key-translation-map (kbd "s-∞") (kbd "‰"))
  (define-key key-translation-map (kbd "s-§") (kbd "¶"))
  (define-key key-translation-map (kbd "s-/") (kbd "\\"))
  (define-key key-translation-map (kbd "s-|") (kbd "\\"))
  (define-key key-translation-map (kbd "s-(") (kbd "{"))
  (define-key key-translation-map (kbd "s-)") (kbd "}"))
  (define-key key-translation-map (kbd "s-≈") (kbd "≠"))

  (define-key key-translation-map (kbd "s-q") (kbd "•"))
  (define-key key-translation-map (kbd "s-w") (kbd "Ω"))
  (define-key key-translation-map (kbd "s-e") (kbd "é"))
  (define-key key-translation-map (kbd "s-r") (kbd "®"))
  (define-key key-translation-map (kbd "s-t") (kbd "†"))
  (define-key key-translation-map (kbd "s-y") (kbd "µ"))
  (define-key key-translation-map (kbd "s-u") (kbd "ü"))
  (define-key key-translation-map (kbd "s-i") (kbd "ı"))
  (define-key key-translation-map (kbd "s-o") (kbd "œ"))
  (define-key key-translation-map (kbd "s-p") (kbd "π"))
  (define-key key-translation-map (kbd "s-å") (kbd "˙"))

  (define-key key-translation-map (kbd "s-•") (kbd "°"))
  (define-key key-translation-map (kbd "s-Ω") (kbd "˝"))
  (define-key key-translation-map (kbd "s-é") (kbd "É"))
  (define-key key-translation-map (kbd "s-®") (kbd "√"))
  (define-key key-translation-map (kbd "s-†") (kbd "‡"))
  (define-key key-translation-map (kbd "s-µ") (kbd "˜"))
  (define-key key-translation-map (kbd "s-ı") (kbd "ˆ"))
  (define-key key-translation-map (kbd "s-œ") (kbd "Œ"))
  (define-key key-translation-map (kbd "s-π") (kbd "∏"))
  (define-key key-translation-map (kbd "s-˙") (kbd "˚"))

  (define-key key-translation-map (kbd "s-a") (kbd ""))
  (define-key key-translation-map (kbd "s-s") (kbd "ß"))
  (define-key key-translation-map (kbd "s-d") (kbd "∂"))
  (define-key key-translation-map (kbd "s-f") (kbd "ƒ"))
  (define-key key-translation-map (kbd "s-g") (kbd "¸"))
  (define-key key-translation-map (kbd "s-h") (kbd "˛"))
  (define-key key-translation-map (kbd "s-j") (kbd "√"))
  (define-key key-translation-map (kbd "s-k") (kbd "ª"))
  (define-key key-translation-map (kbd "s-l") (kbd "ﬁ"))
  (define-key key-translation-map (kbd "s-ö") (kbd "ø"))
  (define-key key-translation-map (kbd "s-ä") (kbd "æ"))
  (define-key key-translation-map (kbd "s-'") (kbd "™"))

  (define-key key-translation-map (kbd "s-") (kbd "◊"))
  (define-key key-translation-map (kbd "s-ß") (kbd "∑"))
  (define-key key-translation-map (kbd "s-∂") (kbd "∆"))
  (define-key key-translation-map (kbd "s-ƒ") (kbd "∫"))
  (define-key key-translation-map (kbd "s-¸") (kbd "¯"))
  (define-key key-translation-map (kbd "s-˛") (kbd "˘"))
  (define-key key-translation-map (kbd "s-√") (kbd "¬"))
  (define-key key-translation-map (kbd "s-ª") (kbd "º"))
  (define-key key-translation-map (kbd "s-ﬁ") (kbd "ﬂ"))
  (define-key key-translation-map (kbd "s-ø") (kbd "Ø"))
  (define-key key-translation-map (kbd "s-æ") (kbd "Æ"))
  (define-key key-translation-map (kbd "s-™") (kbd "’"))

  (define-key key-translation-map (kbd "s-<") (kbd "≤"))
  (define-key key-translation-map (kbd "s-z") (kbd "÷"))
  (define-key key-translation-map (kbd "s-x") (kbd "≈"))
  (define-key key-translation-map (kbd "s-c") (kbd "ç"))
  (define-key key-translation-map (kbd "s-v") (kbd "‹"))
  (define-key key-translation-map (kbd "s-b") (kbd "›"))
  (define-key key-translation-map (kbd "s-n") (kbd "‘"))
  (define-key key-translation-map (kbd "s-m") (kbd "’"))
  (define-key key-translation-map (kbd "s-,") (kbd "‚"))
  (define-key key-translation-map (kbd "s-.") (kbd "…"))
  (define-key key-translation-map (kbd "s--") (kbd "–"))

  (define-key key-translation-map (kbd "s-≤") (kbd "≥"))
  (define-key key-translation-map (kbd "s-÷") (kbd "⁄"))
  (define-key key-translation-map (kbd "s-≈") (kbd "≠"))
  (define-key key-translation-map (kbd "s-ç") (kbd "Ç"))
  (define-key key-translation-map (kbd "s-‹") (kbd "«"))
  (define-key key-translation-map (kbd "s-›") (kbd "»"))
  (define-key key-translation-map (kbd "s-‘") (kbd "“"))
  (define-key key-translation-map (kbd "s-’") (kbd "”"))
  (define-key key-translation-map (kbd "s-‚") (kbd "„"))
  (define-key key-translation-map (kbd "s-…") (kbd "·"))
  (define-key key-translation-map (kbd "s-…") (kbd "—"))

  (define-key key-translation-map (kbd "M-s-7") (kbd "M-|"))
  (define-key key-translation-map (kbd "C-s-2") (kbd "C-@"))

  )

(if (eq system-type 'darwin)
    (setup-mac-keys))
(provide 'mac-keys-conf)
