;;; init-yasnippet.el --- Settings for yasnippet

;;; Code:
(eval-after-load "yasnippet-autoloads"
  '(progn
     (yas-global-mode 1)
))
(add-hook 'prog-mode-hook
	  '(lambda ()
	     (yas-minor-mode)))

(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
