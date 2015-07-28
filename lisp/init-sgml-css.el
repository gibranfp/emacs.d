;;; init-sgml-css.el --- Settings for sgml and css modes

;;; Code:
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'css-mode-hook 'emmet-mode )
(add-hook 'sgml-mode-hook 'rainbow-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)

(provide 'init-sgml-css)
;;; init-sgml-css.el ends here
