;;; init-company.el --- Settings for company

;;; Code:
(eval-after-load 'company
  '(progn
     
     (add-to-list 'company-backends 'company-irony)
     (add-to-list 'company-backends 'company-c-headers)

     (setq company-dabbrev-downcase nil)
     (setq company-show-numbers t)
     (setq company-begin-commands '(self-insert-command))
     (setq company-idle-delay 0.2)
     (setq company-minimum-prefix-length 1)
     (setq company-clang-insert-arguments nil)
     ))


(add-hook 'c-mode-common-hook 'company-mode)
(add-hook 'emacs-lisp-mode-hook 'company-mode)
(add-hook 'LaTeX-mode-hook 'company-mode)
(add-hook 'css-mode-hook 'company-mode)
(add-hook 'sgml-mode-hook 'company-mode)
(add-hook 'cmake-mode-hook 'company-mode)

(provide 'init-company)
;;; init-company.el ends here
