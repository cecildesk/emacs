(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; 한글폰트 관련 세팅
(set-face-font 'default "Monaco-9")
(set-fontset-font "fontset-default" '(#x1100 . #xffdc)
                  '("맑은 고딕" . "iso10646-1"))
(set-fontset-font "fontset-default" '(#xe0bc . #xf66e)
                  '("맑은 고딕" . "iso10646-1"))

(setq face-font-rescale-alist
      '((".*nanum.*" . 1.3)
        (".*맑은.*" . 1.0)))

;;MELPA Package Install
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;;Web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;;emmet mode hook 관련 세팅
(require 'emmet-mode)
(add-to-list 'load-path "~/Emacs/emmet/")
;(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
;(add-hook 'html-mode-hook 'emmet-mode)
;(add-hook 'css-mode-hook  'emmet-mode)


(setq emmet-preview-default t)
(if (boundp 'web-mode-hook)
    (add-hook 'web-mode-hook 'emmet-mode)
  (add-hook 'html-mode-hook 'emmet-mode))
(add-hook 'css-mode 'emmet-mode)


;;
(set-default 'truncate-lines t)  ;; Word-Wrap 없애기 코팅할때 편하게
(global-linum-mode 1)   ;; 라인넘버 무조건 표시하기 (코팅용이라 우선 이렇게)
