(use-package eaf
  :load-path "~/.emacs.d/site-lisp/emacs-application-framework"
  :custom
  ; See https://github.com/emacs-eaf/emacs-application-framework/wiki/Customization
  (eaf-browser-continue-where-left-off t)
  (eaf-browser-enable-adblocker t)
  (browse-url-browser-function 'eaf-open-browser)
  ) ;; unbind, see more in the Wiki
(require 'eaf-image-viewer)
(require 'eaf-git)
(require 'eaf-2048)
(require 'eaf-terminal)
(require 'eaf-system-monitor)
(require 'eaf-video-player)
(require 'eaf-pdf-viewer)
(require 'eaf-file-manager)
(require 'eaf-netease-cloud-music)
(require 'eaf-jupyter)
(require 'eaf-file-browser)
(require 'eaf-rss-reader)
(require 'eaf-demo)
(require 'eaf-markdown-previewer)
(require 'eaf-org-previewer)
(require 'eaf-file-sender)
(require 'eaf-music-player)
(require 'eaf-mindmap)
(require 'eaf-airshare)
(require 'eaf-browser)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(auto-save-buffers-enhanced yasnippet markdown-mode posframe use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)


(require 'xcscope)
(cscope-setup)

(setq cscope-database-regexps
  '(
     ( "^/home/bgb/asahi/linux/*"
       ( t )
       ( "/home/bgb/asahi/linux/")
       t )))

;; 禁用Emacs备份机制
(setq make-backup-files nil)
(setq auto-save-default nil)

(add-to-list 'load-path "/home/bgb/.emacs.d/site-lisp/lsp-bridge")

(require 'yasnippet)
(yas-global-mode 1)
(require 'lsp-bridge)
(global-lsp-bridge-mode)
