# Terraform Provider for yandex local with libvirt

# sign
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

# DEV

```bash
# https://www.hashicorp.com/en/blog/writing-custom-terraform-providers
vim ~/.terraformrc
# plugin_cache_dir   = "$HOME/.terraform.d/plugins"
disable_checkpoint = true

go build -o terraform-provider-yandex-kind

mkdir -p ~/.terraform.d/plugins/registry.terraform.io/gimtonic/yandex-kind/0.0.4/linux_amd64
cp terraform-provider-yandex-kind ~/.terraform.d/plugins/registry.terraform.io/gimtonic/yandex-kind/0.0.4/linux_amd64

TF_LOG=true terraform apply
# 
```