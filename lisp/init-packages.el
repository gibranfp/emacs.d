;;; init-packages.el --- Package.el initialization

;;; Code:
;; Package repositories
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

(package-initialize)

(provide 'init-packages)
;;; init-packages.el ends here
