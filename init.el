; -*- coding: utf-8 -*-
(setq emacs-load-start-time (current-time))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

(require 'install-all) ;; comment after the packages have been installed
(require 'init-packages)
(require 'init-ui)
(require 'init-nav)
(require 'init-utils)
(require 'init-company)
(require 'init-cpp)
(require 'init-python)
(require 'init-latex)
(require 'init-sgml-css)
(require 'init-keybind)
