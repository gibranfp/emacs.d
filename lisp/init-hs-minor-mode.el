;;; init-hs-minor.el --- "Initialization for hs-minor-mode (folding)"

(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'lisp-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)
(add-hook 'js-mode-hook         'hs-minor-mode)
(add-hook 'js2-mode-hook         'hs-minor-mode)

(provide 'init-hs-minor-mode)
;;; init-hs-minor.el ends here
