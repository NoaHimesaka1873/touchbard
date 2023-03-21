# Maintainer: Noa Himesaka <himesaka@noa.codes>
pkgname=touchbard
pkgver=1.1.2
pkgrel=1
pkgdesc="Simple and working daemon and matching control program for configuring Touchbar"
arch=('x86_64')
license=('GPL3')
depends=('linux-t2' 'python')
makedepends=('git')
source=("src::git+https://github.com/NoaHimesaka1873/touchbard.git")
sha256sums=('SKIP')

build() {
 echo "No build needed"
}

package() {
    cd "$srcdir/src"
    install -Dm755 touchbard.example.conf "$pkgdir/etc/touchbard.conf"
    install -Dm700 touchbard "$pkgdir/usr/bin/touchbard"
    install -Dm755 touchbarctl "$pkgdir/usr/bin/touchbarctl"
    install -Dm644 touchbard.service "$pkgdir/usr/lib/systemd/system/touchbard.service"
}
