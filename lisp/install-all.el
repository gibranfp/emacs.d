;;; install-all.el --- Checks if all required packages have been installed and installed them otherwise

;;; Commentary:
;; Code based on RNA's answer at
;; http://stackoverflow.com/questions/10092322/how-to-automatically-install-emacs-packages-by-specifying-a-list-of-package-name

;;; Code:
(defun ensure-package (&rest packages)
  "Assure every package is installed, ask for installation if it’s not. 
   Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
         nil
       (package-install package)
       package))
   packages))

;; make sure to have downloaded archive description.
;; Or use package-archive-contents as suggested by Nicolas Dudebout
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

(ensure-package 'async
                'auto-complete
                'autopair
                'company
                'company-c-headers
                'company-cmake
                'async
                'cmake-mode
                'company-irony
                'company-jedi
                'cpputils-cmake
                'dash
                'ecb
                'emmet-mode
                'expand-region
                'flx-ido
                'flx-isearch
                'flycheck
                'flycheck-irony
                'flycheck-color-mode-line
                'flymake
                'flymake-easy
                'flymake-python-pyflakes
                'function-args
                'helm
                'helm-c-yasnippet
                'helm-bibtex
                'helm-bibtexkey
                'helm-fuzzy-find
                'helm-projectile
                'ibuffer-projectile
                'ido-ubiquitous
                'iedit
                'impatient-mode
                'irony
                'irony-eldoc
                'jedi
                'jedi-core
                'js2-mode
                'magit
                'magit-gitflow
                'multiple-cursors
                'powerline
                'projectile
                'sr-speedbar
                'projectile-speedbar
                'rainbow-mode
                'simple-httpd
                'smex
                'stickyfunc-enhance
                'yasnippet)

(provide 'install-all)
