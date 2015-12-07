#!/bin/sh
# -*- scheme -*-
exec guile --debug --no-auto-compile -s $0 "$@"
!#

(define-module (nixpkgs smackage)
  #:use-module (sxml  simple)
  #:use-module (srfi  srfi-26) ;; Cut
  #:use-module (ice-9 rdelim)
  #:use-module (ice-9 regex)
  #:use-module (ice-9 match)
  #:use-module (ice-9 hash-table)
  #:use-module (ice-9 pretty-print)
  #:export     ())

;; description: ANY_STRING
;; remote: TYPE URL
;; requires: PACKAGE_NAME PARTIAL_SEMVER [optional: (MINIMAL_SEMVER)]
;; comment: ANY_STRING
;; maintainer: FULL_NAME <EMAIL_ADDRESS>
;; keywords: KEYWORD_1 KEYWORD_2 KEYWORD_3
;; upstream-version: VERSION
;; upstream-url: URL
;; documentation-url: URL
;; bug-url: URL
;; license: CANONICAL_LICENSE_NAME
;; platform: SML_PLATFORM
;; build: COMMAND
;; test: COMMAND
;; install: COMMAND
;; uninstall: COMMAND
;; documentation: COMMAND

(define smackage-keys
  '())

(define smackage-type-regex
  "(provides|description|requires|maintainer|remote|license|platform): ")

(define smackage)



;;(define* regexp-sub/g regexp-substitute/global)
;;
;;(define* (string-sed input regexp new)
;;  (regexp-substitute/global #f regexp input 'pre new 'post))

;;(string-sed test-input-file "^remote: \([^ ]*\) \([^ ]*\)$" "(remote '\1 \"\2\")")

(define* (printfln fmt #:rest args)
  (apply format `(,(current-output-port) ,fmt ,@args))
  (newline))

(define* (read-file-lines file-name #:key (encoding "UTF-8"))
  (with-fluids ((%default-port-encoding encoding))
    (with-input-from-file file-name
      (λ () (let loop ([line   (read-line)]
                       [lines '()])
              (if (not (eof-object? line))
                  (loop (read-line) (cons line lines))
                  lines))))))

(define* (preprocess-smackage input)
  (let* ([filtered (filter (compose not (cut equal? "" <>)) input)])
    filtered))

(define* (unexpected-pm-msg sexpr)
  (error "Unexpected input to process-smackage: " sexpr))




(define* (read-smackage file)
  (read (open-file file "r")))

(define* (process-smackage input)
  (let loop ([result  '()]
             [current '()]
             [remote  '()]
             [sexpr   (cadr input)])
    (if (null? sexpr)
        result
        (begin
          (match (car sexpr)
            [('remote type url)
             (loop (cons `(remote #:type     ,type
                                  #:url      ,url
                                  #:provides ',current)
                         result)
                   '()
                   `(,type ,url)
                   (cdr sexpr))]
            [('provides name ver)
             (loop result
                   (cons `(,name ,ver) current)
                   remote
                   (cdr sexpr))]
            [_ (unexpected-pm-msg sexpr)])))))

(define* (remote #:key type url provides)
  (printfln "")
  (printfln "")
  (printfln "Debug information:")
  (printfln "")
  (printfln "Type:     ~s" type)
  (printfln "URL:      ~s" url)
  (printfln "Provides: ~s" provides)
  (printfln "")
  (printfln ""))

(define* (render-smackage proc)
  (pretty-print proc #:width 80))

(define* test-input-file (read-file-lines "./package-data.raw"))
;; (define* test-processed (process-smackage test-input-file))
;;
;; (define* (run-test) (pretty-print test-processed #:width 80))

;; (define (main . args)
;;   (let* ([input-file (car args)]
;;        [file  (open-file input-file "r")]
;;        [sexpr (read file)]
;;        [proc  (process-smackage sexpr)])
;;   (render-smackage proc)))
;;
;; (apply main (cdr (command-line)))
