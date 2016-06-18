;;---------------------------
;; MELPA setup
;;---------------------------
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;;---------------------------
;; exec-path-from-shell
;;---------------------------
(when (memq window-system '(mac ns))
        (exec-path-from-shell-initialize))

;;---------------------------
;; Auto-complete setup(plain)
;;---------------------------
(ac-config-default)

;;---------------------------
;; Linum-mode activate
;;---------------------------
(global-linum-mode 1)

;;---------------------------
;; worksgroup2
;;---------------------------
(require 'workgroups2)
(setq wg-session-file "~/.emacs.d/.emacs_workgroups")
(workgroups-mode 1)

;;---------------------------
;; IDO enable
;;---------------------------
(require 'ido)
(ido-mode t)

;;---------------------------
;; hlinum active
;;---------------------------
(require 'hlinum)
(hlinum-activate)

;;---------------------------
;; Auto-complete setup(go-autocomplete)
;;---------------------------
(require 'go-autocomplete)
(require 'auto-complete-config)

;;---------------------------
;; Go syntax err check(goflymake
;;---------------------------
(add-to-list 'load-path "~/Workspace/go/src/github.com/dougm/goflymake")
(require 'go-flymake)
(require 'go-flycheck)

;;--------------------------
;; js auto-complete setup(tern)
;;--------------------------
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))

;;---------------------------
;; markdown edit setup
;;---------------------------
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;---------------------------
;; org-mode setup
;;---------------------------
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agenda-files (list "~/Workspace/org/agenda"))
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

;;---------------------------
;; theme setup
;;---------------------------
(setf inhibit-splash-screen t)
(switch-to-buffer (get-buffer-create "empty"))
(delete-other-windows)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'monokai t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("2da65cb7074c176ca0a33f06bcc83ef692c9175e41b6370f5e94eb5811d6ee3a" default)))
 '(exec-path
   (quote
    ("/Library/Frameworks/Python.framework/Versions/3.4/bin/" "/usr/local/bin/" "/usr/local/sbin/" "/usr/bin/" "/bin/" "/usr/sbin/" "/sbin/" "/opt/X11/bin/" "/usr/local/git/bin/" "/usr/local/go/bin/" "/Applications/Emacs.app/Contents/MacOS/bin-x86_64-10_9/" "/Applications/Emacs.app/Contents/MacOS/libexec-x86_64-10_9/" "/Users/impyeong-gang/.yadr/bin/" "/Users/impyeong-gang/.yadr/bin/yadr/" "/Applications/Emacs.app/Contents/MacOS/libexec/" "/Users/impyeong-gang/Workspace/go/bin")))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
