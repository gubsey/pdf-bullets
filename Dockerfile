FROM archlinux

RUN pacman -Syu sudo bash cargo-binstall cargo base-devel npm rust-wasm --noconfirm
RUN cargo binstall -y dioxus-cli

ENV PATH=/root/.cargo/bin:$PATH