# REFLECTION.md -- Assignment 1

## Environment file comparison

My manual env file used exact version pinning (`python=3.10`) and included shebang lines (`#!/bin/bash`, `#!/usr/bin/env python3`). The AI version used range syntax (`python>=3.10,<3.11`) and omitted shebangs entirely. The environment names also differed: mine was `bash_env`, the AI's was `bash_env_ai`. Apart from these formatting differences, the actual package installs were identical.

## What the AI added that you forgot

The AI didn't really add anything I forgot -- my manual version already included everything needed. The AI's setup_env.sh had more descriptive comments, but functionally both scripts did the same thing.

## What the AI hallucinated (and what was fixed via iteration)

After testing the initial AI output, I found two issues that needed fixing:
- Missing shebang lines in all three hello scripts (hello.sh, hello.py, hello.R)
- Missing conda Terms of Service handling in setup_env.sh

I iterated with the AI to add the missing shebangs and the `CONDA_YES_ACCEPT_TERMS_OF_SERVICE=true` environment variable. The AI did not invent any nonexistent packages or wrong version numbers.

## Did the AI's setup_env.sh actually run end-to-end on a clean shell?

The initial version ran successfully because I had already accepted the ToS earlier in the session. However, on a completely fresh machine it would have paused at the ToS prompt. After iterating with the AI, I added the ToS acceptance variable so the script now runs unattended.

## Time comparison

Part A manual: 60 minutes (including fixing the YAML syntax error on the first attempt and dealing with the conda ToS prompt)
Part B AI-assisted: 30 minutes (AI generated the files instantly; only needed to run setup_env.sh to verify it worked)

## Prompts used in Part B

"I need a minimal Python+R+Bash project that prints Hello World from each language. Generate hello.sh, hello.py, hello.R, an environment.yml, a requirements.txt, and a setup_env.sh that builds the env. Pin reasonable versions."
