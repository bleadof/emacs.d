(message "loading conf/lang-confs")

(require 'tree-sitter-conf)
(require 'corfu-conf)
(require 'lsp-mode-conf)
(require 'formatting-conf)

(require 'javascript-lang-conf)
(require 'json-lang-conf)
(require 'coffeescript-lang-conf)
(require 'scss-lang-conf)
(require 'clojure-lang-conf)
(require 'typescript-lang-conf)
(require 'elisp-lang-conf)
(require 'python-lang-conf)

(require 'yaml-lang-conf)
(require 'markdown-lang-conf)

(require 'whitespace-cleanup-mode-conf)

(provide 'lang-confs)
