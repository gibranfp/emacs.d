;;; init-python.el --- Settings for python-mode

(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:ac-setup)
(setq jedi:complete-on-dot t)

(provide 'init-python)
;;; init-python.el ends here
