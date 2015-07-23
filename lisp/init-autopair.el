;;; init-autopair --- General settings

(eval-after-load "autopair-autoloads"
  '(progn
     (autopair-global-mode 1)
     (setq autopair-autowrap t)))

(provide 'init-autopair)
