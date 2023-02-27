;;; doom-nano-dark-theme.el --- Dark theme for Doom Emacs based on N Λ N O -*- lexical-binding: t; -*-

;; Copyright (C) 2023  Ronan Arraes Jardim Chagas
;;
;; This package is the implementation of N Λ N O theme by Nicolas P. Rougier
;; <Nicolas.Rougier@inria.fr> using doom-themes framework.
;;
;; Author           : Ronan Arraes Jardim Chagas
;; Created          : February 2023
;; Keywords         : mode-line, header-line
;; Package-Requires : ((emacs "28") (doom-themes "2"))
;; URL              : https://github.com/ronisbr/doom-nano-themes/
;; Version          : 0.1.0
;;
;;; Usage:
;; 1. Copy this file to `~/.doom.d/themes/'.
;; 2. Load the theme using `(setq doom-theme 'doom-nano-dark)'.
;;
;;; License:
;; Permission is hereby granted, free of charge, to any person obtaining
;; a copy of this software and associated documentation files (the
;; "Software"), to deal in the Software without restriction, including
;; without limitation the rights to use, copy, modify, merge, publish,
;; distribute, sublicense, and/or sell copies of the Software, and to
;; permit persons to whom the Software is furnished to do so, subject to
;; the following conditions:
;;
;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
;; FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
;; TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR
;; THE USE OR OTHER DEALINGS IN THE SOFTWARE.
;;
;;; Commentary:
;; This package provides a dark theme for Doom Emacs based on N Λ N O.

;;; Code:

(def-doom-theme doom-nano-dark
  "A dark theme for Doom Emacs based on N Λ N O."

  (;; Colors defined by N Λ N O theme. Some colors for the 256 and 16 modes were
   ;; obtained from the Doom Nord theme.
   (nano-foreground '("#ECEFF4" "#ECECEC" "white"))
   (nano-background '("#2E3440" "#2E2E2E" "black"))
   (nano-highlight  '("#3B4252" "#262626" "brightblack"))
   (nano-subtle     '("#434C5E" "#3F3F3F" "brightblack"))
   (nano-faded      '("#677691" "#5699AF" "cyan"))
   (nano-salient    '("#81A1C1" "#51AFEF" "brightblue"))
   (nano-strong     '("#FFFFFF" "#FFFFFF" "brightwhite"))
   (nano-popout     '("#D08770" "#DD8844" "brightred"))
   (nano-critical   '("#EBCB8B" "#ECBE7B" "yellow"))

   ;; Required colors for a Doom theme.
   (bg             nano-background)
   (fg             nano-foreground)

   (bg-alt         nano-highlight)
   (fg-alt         nano-foreground)

   (base0          '("#191C25" "black"   "black"        ))
   (base1          '("#242832" "#1E1E1E" "brightblack"  ))
   (base2          '("#2C333F" "#2E2E2E" "brightblack"  ))
   (base3          '("#373E4C" "#262626" "brightblack"  ))
   (base4          '("#434C5E" "#3F3F3F" "brightblack"  ))
   (base5          '("#4C566A" "#525252" "brightblack"  ))
   (base6          '("#9099AB" "#6B6B6B" "brightblack"  ))
   (base7          '("#D8DEE9" "#979797" "brightblack"  ))
   (base8          '("#F0F4FC" "#DFDFDF" "white"        ))

   (bright-blue    '("#BBDEFB" "#BBDEFB" "brightblue"))
   (bright-cyan    '("#B2EBF2" "#B2EBF2" "brightcyan"))
   (bright-green   '("#C8E6C9" "#C8E6C9" "brightgreen"))
   (bright-magenta '("#E1BEE7" "#E1BEE7" "brightmagenta"))
   (bright-red     '("#FFCDD2" "#FFCDD2" "brightred"))
   (bright-white   nano-background)
   (bright-yellow  '("#FFF9C4" "#FFF9C4" "brightyellow"))

   (blue           '("#42A5F5" "#42A5F5" "blue"))
   (cyan           '("#26C6DA" "#26C6DA" "cyan"))
   (dark-blue      '("#A0BCF8" "#A0BCF8" "blue"))
   (dark-cyan      '("#005478" "#005478" "cyan"))
   (green          '("#66BB6A" "#66BB6A" "green"))
   (grey           base4)
   (magenta        '("#AB47BC" "#AB47BC" "magenta"))
   (orange         '("#DA8548" "#DD8844" "brightred"))
   (red            '("#EF5350" "#EF5350" "red"))
   (teal           '("#4DB5BD" "#44B9B1" "brightgreen"))
   (violet         '("#B751B6" "#B751B6" "brightmagenta"))
   (white           nano-subtle)
   (yellow         '("#FFEE58" "#FFEE58" "yellow"))

   (highlight      nano-highlight)
   (vertical-bar   nano-background)
   (selection      nano-subtle)
   (builtin        nano-salient)
   (comments       nano-faded)
   (doc-comments   nano-faded)
   (constants      nano-salient)
   (functions      nano-strong)
   (keywords       nano-salient)
   (methods        nano-strong)
   (operators      nano-salient)
   (type           nano-salient)
   (strings        nano-faded)
   (variables      nano-salient)
   (numbers        nano-salient)
   (region         nano-subtle)
   (error          nano-critical)
   (warning        nano-popout)
   (success        nano-salient)
   (vc-modified    nano-popout)
   (vc-added       nano-salient)
   (vc-deleted     nano-faded))

  (;; Overwrite faces set by Doom theme framework.

   ;; === Base =================================================================

   (cursor :foreground bg :background fg)
   (mouse  :foreground fg :background bg)

   ;; === General ==============================================================

   (buffer-menu-buffer           :foreground nano-strong :weight 'bold)
   (completions-annotations      :foreground nano-faded)
   (completions-common-part      :foreground nano-strong :weight 'bold)
   (completions-first-difference :foreground fg)
   (fill-column-indicator        :foreground nano-subtle)
   (help-argument-name           :foreground nano-faded)
   (isearch                      :foreground nano-strong :weight 'bold)
   (isearch-fail                 :foreground nano-faded)
   (lazy-highlight               :background nano-subtle)
   (minibuffer-prompt            :foreground nano-strong :weight 'bold)
   (nobreak-hyphen               :foreground nano-popout)
   (nobreak-space                :foreground nano-popout)
   (read-multiple-choice-face    :foreground nano-strong :weight 'bold)
   (secondary-selection          :background nano-subtle)
   (show-paren-match             :foreground nano-strong :weight 'bold)
   (show-paren-mismatch          :foreground nano-critical)
   (tabulated-list-fake-header   :foreground nano-strong :weight 'bold)
   (tool-bar                     :foreground bg :background nano-faded)
   (tooltip                      :background nano-subtle)
   (trailing-whitespace          :background nano-subtle)

   ;; === Ace window ===========================================================

   (aw-leading-char-face :foreground nano-popout)
   (aw-background-face   :foreground nano-faded :background bg)

   ;; === ANSI colors ==========================================================

   (ansi-color-black          :foreground fg)
   (ansi-color-bold           :foreground nano-strong :weight 'bold)
   (ansi-color-bright-black   :foreground nano-strong :weight 'bold)
   (ansi-color-faint          :foreground nano-faded)
   (ansi-color-fast-blink     :foreground nano-faded)
   (ansi-color-slow-blink     :foreground nano-faded)
   (ansi-color-inverse        :foreground bg :background fg)
   (ansi-color-italic         :foreground fg :slant 'italic)
   (ansi-color-underline      :foreground nano-faded)
   (ansi-color-blue           :foreground blue)
   (ansi-color-bright-blue    :foreground bright-blue)
   (ansi-color-cyan           :foreground cyan)
   (ansi-color-bright-cyan    :foreground bright-cyan)
   (ansi-color-green          :foreground green)
   (ansi-color-bright-green   :foreground bright-green)
   (ansi-color-magenta        :foreground magenta)
   (ansi-color-bright-magenta :foreground bright-magenta)
   (ansi-color-red            :foreground red)
   (ansi-color-bright-red     :foreground bright-red)
   (ansi-color-white          :foreground white)
   (ansi-color-bright-white   :foreground bright-white)
   (ansi-color-yellow         :foreground yellow)
   (ansi-color-bright-yellow  :foreground bright-yellow)

   ;; === Buttons ==============================================================

   (button                             :foreground nano-faded :background nano-highlight :box nil)
   ((custom-button &override)          :foreground nano-faded :background nano-highlight :box nil)
   ((custom-button-unraised &override) :foreground nano-faded :background nano-highlight :box nil)
   ((custom-button-mouse &override)    :foreground fg :background nano-subtle :box nil)
   ((custom-button-pressed &override)  :foreground bg :background fg :box nil)

   ;; === Custom edit ==========================================================

   (custom-changed           :foreground nano-salient)
   (custom-comment           :foreground nano-faded)
   (custom-comment-tag       :foreground nano-faded)
   (custom-face-tag          :foreground nano-strong :weight 'bold)
   (custom-group-subtitle    :foreground nano-strong :weight 'bold)
   (custom-group-tag         :foreground nano-strong :weight 'bold)
   (custom-group-tag-1       :foreground nano-strong :weight 'bold)
   (custom-invalid           :foreground nano-popout)
   (custom-link              :foreground nano-salient)
   (custom-modified          :foreground nano-salient)
   (custom-state             :foreground nano-salient)
   (custom-variable-obsolete :foreground nano-faded)
   (custom-variable-tag      :foreground nano-strong :weight 'bold)
   (custom-visibility        :foreground nano-salient)
   (widget-button            :foreground nano-strong :weight 'bold)
   (widget-field             :background base2)
   (widget-single-line-field :background base2)

   ;; === Company tooltip ======================================================

   (company-scrollbar-bg                 :foreground bg :background nano-faded)
   (company-scrollbar-fg                 :foreground bg :background fg)
   (company-tooltip                      :background nano-subtle)
   (company-tooltip-annotation           :foreground fg)
   (company-tooltip-annotation-selection :background nano-salient)
   (company-tooltip-common               :foreground nano-strong :weight 'bold)
   (company-tooltip-common-selection     :foreground bg :background nano-salient :weight 'normal)
   (company-tooltip-mouse                :foreground bg :background nano-faded)
   (company-tooltip-scrollbar-thumb      :foreground bg :background fg)
   (company-tooltip-scrollbar-track      :foreground bg :foreground nano-faded)
   (company-tooltip-selection            :foreground bg :background nano-salient)

   ;; === Diff =================================================================

   (diff-header         :foreground nano-faded)
   (diff-file           :foreground nano-strong :weight 'bold)
   (diff-context        :foreground fg)
   (diff-removed        :foreground nano-faded)
   (diff-changed        :foreground nano-popout)
   (diff-added          :foreground nano-salient)
   (diff-refine-added   :foreground nano-salient :weight 'bold)
   (diff-refine-changed :foreground nano-popout)
   (diff-refine-removed :foreground nano-faded :strike-through t)

   ;; === Doom NANO modeline ===================================================

   (doom-nano-modeline-evil-emacs-state-face    :foreground bg :background nano-faded)
   (doom-nano-modeline-evil-insert-state-face   :foreground bg :background nano-popout)
   (doom-nano-modeline-evil-motion-state-face   :foreground bg :background nano-faded)
   (doom-nano-modeline-evil-normal-state-face   :foreground bg :background nano-faded)
   (doom-nano-modeline-evil-operator-state-face :foreground bg :background nano-faded)
   (doom-nano-modeline-evil-replace-state-face  :foreground bg :background nano-critical)
   (doom-nano-modeline-evil-visual-state-face   :foreground bg :background nano-salient)
   (doom-nano-modeline-inactive-face            :foreground nano-faded :background nano-highlight)

   ;; === Evil mode=============================================================

   (evil-snipe-first-match-face :background nano-highlight :weight 'bold)
   (evil-snipe-matches-face     :background nano-subtle)

   ;; === Font lock ============================================================

   (font-lock-variable-name-face :foreground nano-salient :weight 'bold)
   (font-lock-function-name-face :foreground nano-strong :weight 'bold)

   ;; === Info =================================================================

   (Info-quoted      :foreground nano-faded)
   (info-header-node :foreground fg)
   (info-index-match :foreground nano-salient)
   (info-menu-header :foreground nano-strong :weight 'bold)
   (info-menu-star   :foreground fg)
   (info-node        :foreground nano-strong :weight 'bold)
   (info-title-1     :foreground nano-strong :weight 'bold)
   (info-title-2     :foreground nano-strong :weight 'bold)
   (info-title-3     :foreground nano-strong :weight 'bold)
   (info-title-4     :foreground nano-strong :weight 'bold)

   ;; === Helpful ==============================================================

   (helpful-heading :foreground nano-strong :weight 'bold)

   ;; === Highlight indent guides ==============================================

   (highlight-indent-guides-f)

   ;; === Hydra ================================================================

   (hydra-face-red :foreground nano-popout :weight 'bold)

   ;; === Line numbers =========================================================

   (line-number :foreground nano-faded)
   (line-number-current-line :foreground nil)
   (line-number-major-tick :foreground nano-faded)
   (line-number-minor-tick :foreground nano-faded)

   ;; === LSP ==================================================================

   (lsp-face-highlight-textual :background base1)

   ;; === Markdown =============================================================

   (markdown-blockquote-face         :foreground fg)
   (markdown-bold-face               :foreground nano-strong :weight 'bold)
   (markdown-code-face               :foreground fg)
   (markdown-comment-face            :foreground nano-faded)
   (markdown-footnote-marker-face    :foreground fg)
   (markdown-footnote-text-face      :foreground fg)
   (markdown-gfm-checkbox-face       :foreground fg)
   (markdown-header-delimiter-face   :foreground nano-faded)
   (markdown-header-face             :foreground nano-strong :weight 'bold)
   (markdown-header-face-1           :foreground nano-strong :weight 'bold)
   (markdown-header-face-2           :foreground nano-strong :weight 'bold)
   (markdown-header-face-3           :foreground nano-strong :weight 'bold)
   (markdown-header-face-4           :foreground nano-strong :weight 'bold)
   (markdown-header-face-5           :foreground nano-strong :weight 'bold)
   (markdown-header-face-6           :foreground nano-strong :weight 'bold)
   (markdown-header-rule-face        :foreground fg)
   (markdown-highlight-face          :foreground fg)
   (markdown-hr-face                 :foreground fg)
   (markdown-html-attr-name-face     :foreground fg)
   (markdown-html-attr-value-face    :foreground fg)
   (markdown-html-entity-face        :foreground fg)
   (markdown-html-tag-delimiter-face :foreground fg)
   (markdown-html-tag-name-face      :foreground fg)
   (markdown-inline-code-face        :foreground nano-popout)
   (markdown-italic-face             :foreground nano-faded :slant 'italic)
   (markdown-language-info-face      :foreground fg)
   (markdown-language-keyword-face   :foreground fg)
   (markdown-line-break-face         :foreground fg)
   (markdown-link-face               :foreground nano-salient)
   (markdown-link-title-face         :foreground fg)
   (markdown-list-face               :foreground nano-faded)
   (markdown-markup-face             :foreground nano-faded)
   (markdown-math-face               :foreground fg)
   (markdown-metadata-key-face       :foreground nano-faded)
   (markdown-metadata-value-face     :foreground nano-faded)
   (markdown-missing-link-face       :foreground fg)
   (markdown-plain-url-face          :foreground fg)
   (markdown-pre-face                :foreground nano-popout)
   (markdown-reference-face          :foreground nano-salient)
   (markdown-strike-through-face     :foreground nano-faded)
   (markdown-table-face              :foreground fg)
   (markdown-url-face                :foreground nano-salient)

   ;; === Magit ================================================================

   (magit-bisect-bad                      :foreground fg)
   (magit-bisect-good                     :foreground fg)
   (magit-bisect-skip                     :foreground fg)
   (magit-blame-date                      :foreground fg)
   (magit-blame-dimmed                    :foreground fg)
   (magit-blame-hash                      :foreground nano-faded)
   (magit-blame-heading                   :background nano-subtle :weight 'bold)
   (magit-blame-highlight                 :background highlight)
   (magit-blame-margin                    :foreground fg)
   (magit-blame-name                      :foreground fg)
   (magit-blame-summary                   :foreground fg)
   (magit-branch-current                  :foreground nano-salient :weight 'bold)
   (magit-branch-local                    :foreground nano-salient)
   (magit-branch-remote                   :foreground nano-salient)
   (magit-branch-remote-head              :foreground nano-salient)
   (magit-branch-upstream                 :foreground nano-salient)
   (magit-cherry-equivalent               :foreground fg)
   (magit-cherry-unmatched                :foreground fg)
   (magit-diff-added                      :foreground nano-salient :weight 'bold)
   (magit-diff-added-highlight            :foreground nano-salient :weight 'bold)
   (magit-diff-base                       :foreground fg)
   (magit-diff-base-highlight             :background highlight)
   (magit-diff-conflict-heading           :background nano-subtle :weight 'bold)
   (magit-diff-context                    :foreground nano-faded)
   (magit-diff-context-highlight          :foreground nano-faded)
   (magit-diff-file-heading               :foreground nano-strong :weight 'bold)
   (magit-diff-file-heading-highlight     :background highlight :weight 'bold)
   (magit-diff-file-heading-selection     :foreground fg)
   (magit-diff-hunk-heading               :background nano-subtle)
   (magit-diff-hunk-heading-highlight     :foreground fg)
   (magit-diff-hunk-heading-selection     :foreground fg)
   (magit-diff-hunk-region                :foreground fg)
   (magit-diff-lines-boundary             :foreground fg)
   (magit-diff-lines-heading              :background nano-subtle :weight 'bold)
   (magit-diff-our                        :foreground fg)
   (magit-diff-our-highlight              :background highlight)
   (magit-diff-removed                    :foreground nano-popout :weight 'bold)
   (magit-diff-removed-highlight          :foreground nano-popout :weight 'bold)
   (magit-diff-revision-summary           :foreground nano-popout)
   (magit-diff-revision-summary-highlight :foreground fg)
   (magit-diff-their                      :foreground fg)
   (magit-diff-their-highlight            :background highlight)
   (magit-diff-whitespace-warning         :background nano-subtle)
   (magit-diffstat-added                  :foreground fg)
   (magit-diffstat-removed                :foreground fg)
   (magit-dimmed                          :foreground nano-faded)
   (magit-filename                        :foreground fg)
   (magit-hash                            :foreground nano-faded)
   (magit-head                            :foreground fg)
   (magit-header-line                     :foreground fg)
   (magit-header-line-key                 :foreground fg)
   (magit-header-line-log-select          :foreground fg)
   (magit-keyword                         :foreground nano-salient)
   (magit-keyword-squash                  :foreground nano-salient)
   (magit-log-author                      :foreground fg)
   (magit-log-date                        :foreground fg)
   (magit-log-graph                       :foreground fg)
   (magit-mode-line-process               :foreground fg)
   (magit-mode-line-process-error         :foreground nano-critical)
   (magit-process-ng                      :foreground fg)
   (magit-process-ok                      :foreground fg)
   (magit-reflog-amend                    :foreground fg)
   (magit-reflog-checkout                 :foreground fg)
   (magit-reflog-cherry-pick              :foreground fg)
   (magit-reflog-commit                   :foreground fg)
   (magit-reflog-merge                    :foreground fg)
   (magit-reflog-other                    :foreground fg)
   (magit-reflog-rebase                   :foreground fg)
   (magit-reflog-remote                   :foreground fg)
   (magit-reflog-reset                    :foreground fg)
   (magit-refname                         :foreground fg)
   (magit-refname-pullreq                 :foreground fg)
   (magit-refname-stash                   :foreground fg)
   (magit-refname-wip                     :foreground fg)
   (magit-section-heading                 :foreground nano-salient :weight 'bold)
   (magit-section-heading-selection       :foreground fg)
   (magit-section-highlight               :background highlight)
   (magit-section-secondary-heading       :foreground fg)
   (magit-sequence-done                   :foreground fg)
   (magit-sequence-drop                   :foreground fg)
   (magit-sequence-exec                   :foreground fg)
   (magit-sequence-head                   :foreground fg)
   (magit-sequence-onto                   :foreground fg)
   (magit-sequence-part                   :foreground fg)
   (magit-sequence-pick                   :foreground fg)
   (magit-sequence-stop                   :foreground fg)
   (magit-signature-bad                   :foreground fg)
   (magit-signature-error                 :foreground fg)
   (magit-signature-expired               :foreground fg)
   (magit-signature-expired-key           :foreground fg)
   (magit-signature-good                  :foreground fg)
   (magit-signature-revoked               :foreground fg)
   (magit-signature-untrusted             :foreground fg)
   (magit-tag                             :foreground nano-strong)

   ;; === Marginalia ===========================================================

   (marginalia-archive         :foreground nano-faded)
   (marginalia-char            :foreground nano-faded)
   (marginalia-date            :foreground nano-faded)
   (marginalia-documentation   :foreground nano-faded)
   (marginalia-file-name       :foreground nano-faded)
   (marginalia-file-owner      :foreground nano-faded)
   (marginalia-file-priv-dir   :foreground nano-faded)
   (marginalia-file-priv-exec  :foreground nano-faded)
   (marginalia-file-priv-link  :foreground nano-faded)
   (marginalia-file-priv-no    :foreground nano-faded)
   (marginalia-file-priv-other :foreground nano-faded)
   (marginalia-file-priv-rare  :foreground nano-faded)
   (marginalia-file-priv-read  :foreground nano-faded)
   (marginalia-file-priv-write :foreground nano-faded)
   (marginalia-function        :foreground nano-faded)
   (marginalia-installed       :foreground nano-faded)
   (marginalia-key             :foreground nano-faded)
   (marginalia-lighter         :foreground nano-faded)
   (marginalia-list            :foreground nano-faded)
   (marginalia-mode            :foreground nano-faded)
   (marginalia-modified        :foreground nano-faded)
   (marginalia-null            :foreground nano-faded)
   (marginalia-number          :foreground nano-faded)
   (marginalia-off             :foreground nano-faded)
   (marginalia-on              :foreground nano-faded)
   (marginalia-size            :foreground nano-faded)
   (marginalia-string          :foreground nano-faded)
   (marginalia-symbol          :foreground nano-faded)
   (marginalia-true            :foreground nano-faded)
   (marginalia-type            :foreground nano-faded)
   (marginalia-value           :foreground nano-faded)
   (marginalia-version         :foreground nano-faded)

   ;; === Message ==============================================================

   (message-cited-text        :foreground nano-faded)
   (message-cited-text-1      :foreground nano-faded)
   (message-cited-text-2      :foreground nano-faded)
   (message-cited-text-3      :foreground nano-faded)
   (message-cited-text-4      :foreground nano-faded)
   (message-header-cc         :foreground fg)
   (message-header-name       :foreground nano-strong :weight 'bold)
   (message-header-newsgroups :foreground fg)
   (message-header-other      :foreground fg)
   (message-header-subject    :foreground nano-salient)
   (message-header-to         :foreground nano-salient)
   (message-header-xheader    :foreground fg)
   (message-mml               :foreground nano-popout)
   (message-separator         :foreground nano-faded)

   ;; === Modeline =============================================================

   (mode-line          :foreground fg :background nano-subtle)
   (mode-line-inactive :foreground nano-strong :background nano-highlight)
   (mode-line-emphasis :foreground nano-strong :weight 'bold)

   ;; === Packages =============================================================

   (package-description       :foreground fg)
   (package-help-section-name :foreground fg)
   (package-name              :foreground nano-salient)
   (package-status-avail-obso :foreground nano-faded)
   (package-status-available  :foreground fg)
   (package-status-built-in   :foreground nano-salient)
   (package-status-dependency :foreground nano-salient)
   (package-status-disabled   :foreground nano-faded)
   (package-status-external   :foreground fg)
   (package-status-held       :foreground fg)
   (package-status-incompat   :foreground nano-faded)
   (package-status-installed  :foreground nano-salient)
   (package-status-new        :foreground fg)
   (package-status-unsigned   :foreground fg)

   ;; === Orderless ============================================================

   (orderless-match-face-0 :foreground nano-salient :weight 'bold)
   (orderless-match-face-1 :foreground nano-strong :weight 'bold)
   (orderless-match-face-2 :foreground nano-strong :weight 'bold)
   (orderless-match-face-3 :foreground nano-strong :weight 'bold)

   ;; === Org mode =============================================================

   (org-archived                 :foreground nano-faded)
   (org-block                    :background highlight)
   (org-block-begin-line         :background nano-subtle :foreground nano-faded)
   (org-block-end-line           :background nano-subtle :foreground nano-faded)
   (org-checkbox                 :foreground nano-faded)
   (org-checkbox-statistics-done :foreground nano-faded)
   (org-checkbox-statistics-todo :foreground nano-faded)
   (org-clock-overlay            :foreground nano-faded)
   (org-code                     :foreground nano-salient)
   (org-column                   :foreground nano-faded)
   (org-column-title             :foreground nano-faded)
   (org-date                     :foreground nano-faded)
   (org-date-selected            :foreground nano-popout)
   (org-default                  :foreground nano-faded)
   (org-document-info            :foreground nano-faded)
   (org-document-info-keyword    :foreground nano-faded)
   (org-document-title           :foreground nano-faded)
   (org-done                     :foreground nano-faded)
   (org-drawer                   :foreground nano-faded)
   (org-ellipsis                 :foreground nano-faded)
   (org-footnote                 :foreground nano-faded)
   (org-formula                  :foreground nano-faded)
   (org-headline-done            :foreground nano-faded)
   (org-latex-and-related        :foreground nano-faded)
   (org-level-1                  :foreground nano-strong :weight 'bold)
   (org-level-2                  :foreground nano-strong :weight 'bold)
   (org-level-3                  :foreground nano-strong :weight 'bold)
   (org-level-4                  :foreground nano-strong :weight 'bold)
   (org-level-5                  :foreground nano-strong :weight 'bold)
   (org-level-6                  :foreground nano-strong :weight 'bold)
   (org-level-7                  :foreground nano-strong :weight 'bold)
   (org-level-8                  :foreground nano-strong :weight 'bold)
   (org-link                     :foreground nano-salient)
   (org-list-dt                  :foreground nano-faded)
   (org-macro                    :foreground nano-faded)
   (org-meta-line                :foreground nano-faded)
   (org-mode-line-clock          :foreground nano-faded)
   (org-mode-line-clock-overrun  :foreground nano-faded)
   (org-priority                 :foreground nano-faded)
   (org-property-value           :foreground nano-faded)
   (org-quote                    :foreground nano-faded)
   (org-scheduled                :foreground nano-faded)
   (org-scheduled-previously     :foreground nano-faded)
   (org-scheduled-today          :foreground nano-faded)
   (org-sexp-date                :foreground nano-faded)
   (org-special-keyword          :foreground nano-faded)
   (org-table                    :foreground nano-faded)
   (org-tag                      :foreground nano-popout)
   (org-tag-group                :foreground nano-faded)
   (org-target                   :foreground nano-faded)
   (org-time-grid                :foreground nano-faded)
   (org-todo                     :foreground nano-salient)
   (org-upcoming-deadline        :foreground nano-popout)
   (org-verbatim                 :foreground nano-popout)
   (org-verse                    :foreground nano-faded)
   (org-warning                  :foreground nano-popout)

   ;; === Org-agenda ===========================================================

   (org-agenda-calendar-event   :foreground fg :background bg)
   (org-agenda-calendar-sexp    :foreground nano-salient)
   (org-agenda-clocking         :foreground nano-faded)
   (org-agenda-column-dateline  :foreground nano-faded)
   (org-agenda-current-time     :foreground nano-salient :weight 'bold)
   (org-agenda-date             :foreground nano-strong :weight 'bold)
   (org-agenda-date-today       :foreground nano-salient :weight 'bold)
   (org-agenda-date-weekend     :foreground nano-faded)
   (org-agenda-diary            :foreground nano-faded)
   (org-agenda-dimmed-todo-face :foreground nano-faded)
   (org-agenda-done             :foreground nano-faded)
   (org-agenda-filter-category  :foreground nano-faded)
   (org-agenda-filter-effort    :foreground nano-faded)
   (org-agenda-filter-regexp    :foreground nano-faded)
   (org-agenda-filter-tags      :foreground nano-faded)
   (org-agenda-property-face    :foreground nano-faded)
   (org-agenda-restriction-lock :foreground nano-faded)
   (org-agenda-structure        :foreground nano-strong :weight 'bold)

   ;; === Popup ================================================================

   (popup-face                       :foreground highlight)
   (popup-isearch-match              :foreground nano-popout)
   (popup-menu-face                  :foreground nano-subtle)
   (popup-menu-mouse-face            :foreground bg :background nano-faded)
   (popup-menu-selection-face        :foreground bg :background nano-salient)
   (popup-menu-summary-face          :foreground nano-faded)
   (popup-scroll-bar-background-face :foreground nano-subtle)
   (popup-scroll-bar-foreground-face :foreground nano-subtle)
   (popup-summary-face               :foreground nano-faded)
   (popup-tip-face                   :foreground bg :background nano-popout)

   ;; === Semantics ============================================================

   (match  :foreground nano-popout)
   (shadow :foreground nano-popout)

   ;; === Structural ===========================================================

   (bold              :foreground nano-strong :weight 'bold)
   (bold-italic       :foreground nano-strong :weight 'bold)
   (fixed-pitch       :foreground fg)
   (fixed-pitch-serif :foreground fg)
   (fringe            :foreground nano-faded)
   (hl-line           :background highlight)
   (italic            :foreground nano-faded :slant 'italic)
   (link              :foreground nano-salient)
   (region            :background nano-subtle :distant-foreground 'unspecified)

   ;; === Terminal =============================================================

   (term-bold          :foreground nano-strong :weight 'bold)
   (term-color-black   :foreground fg)
   (term-color-blue    :foreground blue :background bright-blue)
   (term-color-cyan    :foreground cyan :background bright-cyan)
   (term-color-green   :foreground green :background bright-green)
   (term-color-magenta :foreground magenta :background bright-magenta)
   (term-color-red     :foreground red :background bright-red)
   (term-color-yellow  :foreground yellow :background bright-yellow)

   ;; === Vertico ==============================================================

   (vertico-current         :background nano-subtle :weight 'bold)
   (vertico-group-separator :foreground nano-faded)
   (vertico-group-title     :foreground nano-faded)
   (vertico-multiline       :foreground nano-faded)

   ;; === Which key ============================================================

   (which-key-command-description-face   :foreground fg)
   (which-key-key-face                   :foreground nano-strong :weight 'bold)
   (which-key-key-group-description-face :foreground nano-salient)))

(provide 'doom-nano-dark-theme)

;;; doom-nano-dark-theme.el ends here
