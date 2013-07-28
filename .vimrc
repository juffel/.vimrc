set number

set tabstop=4

set softtabstop=4
set shiftwidth=4
set expandtab

set history=700

set ignorecase "ignores case when searching

syntax enable "enables syntax highlighting

set ai "auto indet
set si "smart indet

" set showmatch "Show matching parantheses/brackets when writing code

"diese zwei zeilen sind irgendwie dafuer zustaendig, dass die bodenleiste angezeigt wird
set modeline
set ls=2

" ersetze im insertmodus jede oeffnende Klammer durch {} und setzt den cursor zwischen die zwei neuen Zeichen
" IDEE IST GUT, IST ABER VOLL FÜR DEN ARSCH, WENN MAN NICHT ÜBER DIE
" EINFÜGTE SCHLIESSENDE KLAMMER RÜBERTABBEN KANN
" imap { {}<ESC><LEFT>a
" imap [ []<ESC><LEFT>a
" imap ( ()<ESC><LEFT>a

imap {<ENTER> {<ENTER>}<ESC>ko

" typewriter test
" imap <BS> <nop>
" map x <nop>
" map d <nop>
" nmap r <nop>
