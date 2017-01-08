(require 'package)
(add-to-list 'package-archives 
	     '("melpa" . "http://melpa.org/packages/") )

(setq evil-want-C-u-scroll t)
(package-initialize)
(evil-mode 1)
(linum-mode 1)
(ido-mode 1)
(ac-config-default)
(company-mode 1)
(add-to-list 'ac-modes 'org-mode 'jsx-mode)
(add-to-list 'company-backends 'company-restclient 'jsx-mode)

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
(add-hook 'yaml-mode-hook
      '(lambda ()
        (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

(add-hook 'jsx-mode-hook
      '(lambda ()
        (define-key jsx-mode-map "\C-m" 'newline-and-indent)))

(setq-default tab-width 10)

;; multiple-cursors support
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(setq-default indent-tabs-mode nil)
(setq js-indent-level 2)
(setq jsx-indent-level 2)
(setq neo-smart-open t)

;;neotree hooks for evil mode
(add-hook 'neotree-mode-hook
        (lambda ()
            (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
            (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))


(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . jsx-mode))
(autoload 'jsx-mode "jsx-mode" "JSX mode" t)
(global-auto-complete-mode t)
(setq evil-ex-visual-char-range t)
(server-start)
