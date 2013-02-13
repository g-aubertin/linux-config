(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(ecb-options-version "2.40")
 '(indent-tabs-mode t)
 '(inhibit-startup-screen t)
 '(standard-indent 8)
 '(tab-always-indent (quote always)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

;; ##################################
;; #### g-aubertin configuration ####
;; ##################################

;; ### disable vc-git stuff
(remove-hook 'find-file-hooks 'vc-find-file-hook)

;; k&r style for code indentation
(add-hook 'c-mode-common-hook
          (lambda ()
            (c-set-style "k&r")
            (setq c-basic-offset 8)))


;; deactivate auto-backup (*~ files)
(setq make-backup-files nil) 

;; print line & column number
(setq column-number-mode t)
(setq line-number-mode t)

;; copy-paste key-binding
(global-set-key (kbd "C-z") 'undo)	
(global-set-key (kbd "C-c") 'copy)	
(global-set-key (kbd "C-z") 'paste)	

