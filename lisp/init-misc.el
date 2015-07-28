;;; init-misc.el --- Miscellaneous settings

;;; Code:
(require 'magit-gitflow)
(add-hook 'magit-mode-hook 'turn-on-magit-gitflow)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 3)

(provide 'init-misc)
;;; init-misc.el ends here
