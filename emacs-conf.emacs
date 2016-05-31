(require 'package)
(add-to-list 'package-archives 
	     '("melpa" . "http://melpa.org/packages/") )

(package-initialize)
(evil-mode 1)
(linum-mode 1)
(ido-mode 1)
(ac-config-default)
(company-mode 1)
(add-to-list 'ac-modes 'org-mode)
(add-to-list 'company-backends 'company-restclient)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("0a5e87ac98b0adfe4e12356fff24d49ffbbe5ef0aa8290752c184e6857d70558" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'suscolors)
