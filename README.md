# Terraform Provider for yandex local with kind
```bash
# create release
gpg --version
# for version greater then 2.1.17
gpg --full-generate-key
gpg --list-secret-keys --keyid-format=long
# output public key to terminal
gpg --armor --export FINGERPRINT
# output or private key to terminal
gpg --armor --export-secret-key FINGERPRINT
# pass GPG_PRIVATE_KEY and PASSPHRASE to repo secrets 
# pass GPG_PUBLIC_KEY to github repo
git config --unset gpg.format
git config user.signingkey ID1!ID2
git config commit.gpgsign true
git config tag.gpgSign true
```
