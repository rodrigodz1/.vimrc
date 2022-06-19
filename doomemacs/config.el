;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!
(setq doom-font (font-spec :family "Fira Code" :size 15 :slant 'normal :weight 'normal))
(setq display-line-numbers 'relative)

(use-package evil
:bind ((:map evil-window-map
             ("C-j" . evil-window-down)
             ("C-k" . evil-window-up)
             ("C-l" . evil-window-right)
             ("C-h" . evil-window-left))
       (:map evil-normal-state-map
             ("C-j" . evil-window-down)
             ("C-k" . evil-window-up)
             ("C-l" . evil-window-right)
             ("C-h" . evil-window-left))))

(set-frame-parameter (selected-frame) 'alpha '(94 . 90))
(add-to-list 'default-frame-alist '(alpha . (94 . 90)))

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Rodrigo Brito"
      user-mail-address "rodrigo.m1a2@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Documents/org/")
(set 'flowers '(rose violet daisy buttercup))

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; (require 'elcord)
;; (elcord-mode)

(setq doom-theme 'doom-moonlight)

  ;; (use-package tide :ensure t)
  ;; (use-package company :ensure t)
  ;; (use-package flycheck :ensure t)

  ;; (defun setup-tide-mode ()
  ;;   (interactive)
  ;;   (tide-setup)
  ;;   (flycheck-mode +1)
  ;;   (setq flycheck-check-syntax-automatically '(save mode-enabled))
  ;;   (eldoc-mode +1)
  ;;   (tide-hl-identifier-mode +1)
  ;;   ;; company is an optional dependency. You have to
  ;;   ;; install it separately via package-install
  ;;   ;; `M-x package-install [ret] company`
  ;;   (company-mode +1))

  ;; ;; aligns annotation to the right hand side
  ;; (setq company-tooltip-align-annotations t)

  ;; ;; formats the buffer before saving
  ;; (add-hook 'before-save-hook 'tide-format-before-save)

  ;; (add-hook 'typescript-mode-hook #'setup-tide-mode)

  ;; (require 'web-mode)

  ;; (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
  ;; (add-hook 'web-mode-hook
  ;;           (lambda ()
  ;;             (when (string-equal "tsx" (file-name-extension buffer-file-name))
  ;;               (setup-tide-mode))))

  ;; ;; enable typescript - tslint checker
  ;; (flycheck-add-mode 'typescript-tslint 'web-mode)

;; (setup (:pkg web-mode)
;;   (:file-match "(\\.\\(html?\\|ejs\\|tsx\\|jsx\\)\\'")
;;   (setq-default web-mode-code-indent-offset 2)
;;   (setq-default web-mode-markup-indent-offset 2)
;;   (setq-default web-mode-attribute-indent-offset 2))

;; ;; 1. Start the server with `httpd-start'
;; ;; 2. Use `impatient-mode' on any buffer
;; (setup (:pkg impatient-mode :straight t))
;; (setup (:pkg skewer-mode :straight t))
;;
(require 'prettier-js)

(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'web-mode-hook 'prettier-js-mode)
(require 'elcord)
(elcord-mode)

(setq vue-mode-packages
  '(vue-mode))

(setq vue-mode-excluded-packages '())

(defun vue-mode/init-vue-mode ()
  "Initialize my package"
  (use-package vue-mode))

(defun vue-mode/init-vue-mode ()
  (use-package vue-mode
               :config
               ;; 0, 1, or 2, representing (respectively) none, low, and high coloring
               (setq mmm-submode-decoration-level 0)))
