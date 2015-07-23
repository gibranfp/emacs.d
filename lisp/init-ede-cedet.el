;;; init-ede-cedet --- Settings for EDE and CEDET

;; ============== EDE =========================
(global-ede-mode 1)
(ede-cpp-root-project "smh" :file "~/Dropbox/projects/Sampled-MinHashing/src/smh/smhcmd.c"
                      :include-path '("../../include"))

(ede-cpp-root-project "objdisc" :file "~/Dropbox/projects/object_discovery/smh_object_discovery/src/make_ifs_oxfd.c"
                      :include-path '("../include"))

;; ================ CEDET Semantic ===========================
;; Use for jump to definition and stickyfunc
(semantic-mode 1)
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(global-semantic-idle-summary-mode 1)
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)

(provide 'init-ede-cedet)
