(message "loading conf/lang-confs")
(use-package highlight-parentheses
  :ensure t
  :hook prog-mode)
(require 'lsp-mode-conf)
(require 'javascript-lang-conf)
(require 'json-lang-conf)
(require 'coffeescript-lang-conf)
(require 'scss-lang-conf)
(require 'clojure-lang-conf)
(require 'typescript-lang-conf)
(require 'elisp-lang-conf)
(require 'python-lang-conf)

(require 'xml-lang-conf)
(require 'yaml-lang-conf)
(require 'markdown-lang-conf)

(require 'whitespace-cleanup-mode-conf)
(require 'company-mode-conf)

(provide 'lang-confs)
