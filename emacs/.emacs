(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(notmuch-saved-searches
   (quote
    ((:name "inbox" :query "tag:inbox" :key "i")
     (:name "unread" :query "tag:unread" :key "u")
     (:name "flagged" :query "tag:flagged" :key "f")
     (:name "sent" :query "tag:sent" :key "t")
     (:name "drafts" :query "tag:draft" :key "d")
     (:name "tristan@kiara.at" :query "to:tristan@kiara.at and tag:inbox")
     (:name "tris.maat@gmail.com" :query "to:tris.maat@gmail.com and tag:inbox")
     (:name "tm@tlater.net" :query "(to:tristan.maat@student.manchester.ac.uk OR to:tm@tlater.net) AND tag:inbox")
     (:name "umri-dh-cs" :query "tag:umri-dh-cs")
     (:name "music_ai" :query "tag:music_ai"))))
 '(org-agenda-files (quote ("~/Documents/org/calendar.org")))
 '(org-latex-default-packages-alist
   (quote
    (("AUTO" "inputenc" t)
     ("T1" "fontenc" t)
     ("" "fixltx2e" nil)
     ("" "graphicx" t)
     ("" "grffile" t)
     ("" "longtable" nil)
     ("" "wrapfig" nil)
     ("" "rotating" nil)
     ("normalem" "ulem" t)
     ("" "amsmath" t)
     ("" "textcomp" t)
     ("" "amssymb" t)
     ("" "capt-of" nil)
     ("dvipsnames" "xcolor" nil)
     ("colorlinks=true,urlcolor=NavyBlue" "hyperref" nil))))
 '(package-selected-packages
   (quote
    (systemd-mode exwm websocket web-mode use-package systemd stylus-mode sr-speedbar smart-mode-line semi php-mode org-gcal openwith notmuch markdown-mode magit json-mode js2-refactor js-doc jedi jdee imenu-list groovy-mode glsl-mode fringe-helper flycheck emacs-eclim ecb dockerfile-mode auto-complete-auctex auctex android-mode)))
 '(safe-local-variable-values
   (quote
    ((flycheck-gcc-include-path . "ex1/include")
     (flycheck-gcc-language-standard . c++11)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Add MELPA package repository
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))
(setq package-load-list '(all))
(package-initialize)

;; Allow use-package to install packages if not present
(setq use-package-always-ensure t)

;; Check if we need to load exwm
(setq load-exwm-switch (member "--wm" command-line-args))
(setq command-line-args (delete "--wm" command-line-args))

(if load-exwm-switch
    (load-file "~/.emacs.d/conf/wm/wm.el"))

;; Load custom functions
(load-file "~/.emacs.d/conf/unindent-region.el")
(load-file "~/.emacs.d/conf/eval-and-replace.el")

;; Load the sub-configurations
(load-file "~/.emacs.d/conf/auto-complete.el")
(load-file "~/.emacs.d/conf/auto-inserts.el")
(load-file "~/.emacs.d/conf/coding-standards.el")
(load-file "~/.emacs.d/conf/ecb.el")
(load-file "~/.emacs.d/conf/flycheck.el")
(load-file "~/.emacs.d/conf/keybindings.el")
(load-file "~/.emacs.d/conf/linum-mode.el")
(load-file "~/.emacs.d/conf/js-mode.el")
(load-file "~/.emacs.d/conf/magit.el")
(load-file "~/.emacs.d/conf/misc.el")
(load-file "~/.emacs.d/conf/modeline-info.el")
(load-file "~/.emacs.d/conf/notmuch.el")
(load-file "~/.emacs.d/conf/org.el")
(load-file "~/.emacs.d/conf/org-gcal.el")
;; (load-file "~/.emacs.d/conf/php-mode.el")
(load-file "~/.emacs.d/conf/screensaver.el")
(load-file "~/.emacs.d/conf/sendmail.el")
(load-file "~/.emacs.d/conf/server.el")
(load-file "~/.emacs.d/conf/smart-mode-line.el")
(load-file "~/.emacs.d/conf/stylus-mode.el")
(load-file "~/.emacs.d/conf/text-aid-too-mode.el")
(load-file "~/.emacs.d/conf/themes.el")
(load-file "~/.emacs.d/conf/web-mode.el")
(load-file "~/.emacs.d/conf/whitespace.el")
(load-file "~/.emacs.d/conf/yasnippet.el")

(add-to-list 'load-path "~/.emacs.d/contrib")
