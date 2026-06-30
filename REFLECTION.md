# REFLECTION.md — Assignment 1

## Environment file comparison

My manual env file used exact version pinning (`python=3.10`) and included shebang lines (`#!/bin/bash`, `#!/usr/bin/env python3`). The AI version used range syntax (`python>=3.10,<3.11`) and omitted shebangs entirely. The environment names also differed: mine was `bash_env`, the AI's was `bash_env_ai`. Apart from these formatting differences, the actual package installs were identical.

## What the AI added that you forgot

The AI didn't really add anything I forgot. My manual version already included everything needed. The AI's setup_env.sh had more descriptive comments, but functionally both scripts did the same thing.

## What the AI hallucinated

The AI didn't invent any nonexistent packages or wrong version numbers, which was good. However, it omitted shebang lines from `hello.sh` and `hello.py`, so those scripts wouldn't run directly with `./hello.sh` on Unix-like systems without explicitly calling the interpreter. The `python>=3.10,<3.11` syntax also felt more like pip-style versioning than typical conda usage — conda conventionally uses `python=3.10` with a single equals sign.

## Did the AI's setup_env.sh actually run end-to-end on a clean shell?

Yes, it ran successfully end-to-end. The environment was created and all packages (numpy, pandas, requests) installed without errors. The only caveat was that it didn't handle the conda Terms of Service prompt — on a completely fresh machine, the script would pause waiting for user input to accept the ToS before proceeding.

## Time comparison

Part A manual: 60 minutes (including fixing the YAML syntax error on the first attempt and dealing with the conda ToS prompt)
Part B AI-assisted: 30 minutes (AI generated the files instantly; only needed to run setup_env.sh to verify it worked)

## Prompts used in Part B

"I need a minimal Python+R+Bash project that prints Hello World from each language. Generate hello.sh, hello.py, hello.R, an environment.yml, a requirements.txt, and a setup_env.sh that builds the env. Pin reasonable versions."