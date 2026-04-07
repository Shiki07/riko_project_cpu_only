#!/bin/bash
pip install uv

# Pure CPU setup: no GPU/ROCm required
pip install uv
pip install torch torchaudio
uv pip install -r extra-req.txt --no-deps
uv pip install -r requirements.txt

python - <<PYCODE
import nltk
for pkg in ["averaged_perceptron_tagger", "cmudict"]:
    nltk.download(pkg)
PYCODE