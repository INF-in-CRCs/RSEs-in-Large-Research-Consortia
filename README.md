# RSEs in large research consortia
This is the workshop report for our workshop at de-RSE26

## Spelling

**We use British English**

The CI/CD pipeline runs `aspell` on every push and pull request and reports unknown words as non-blocking warnings.
To get a list of unknown words and their line numbers locally, run from the repository root
```bash
bash spellcheck.sh workshop-report/report.tex
```
Locally, the script exits non-zero if it finds unknown words or if `aspell` itself cannot run (for example because the word list header is broken).

To correct words interactively, run from the repository root
```bash
aspell --lang=en_GB --encoding=utf-8 --mode=tex \
  --personal=./.aspell.en.pws --repl=./.aspell.en.prepl \
  check workshop-report/report.tex
```

### Adding words to the local word list
Correctly spelled words that `aspell` does not know (names, places, German terms)
go into `.aspell.en.pws`, one word per line. The file must stay UTF-8, and its first
line must end in `utf-8`:
```
personal_ws-1.1 en <number of words> utf-8
```
Without that encoding marker, `aspell` rejects words such as "Bürkner".
