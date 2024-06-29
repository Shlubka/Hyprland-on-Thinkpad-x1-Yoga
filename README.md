# Hyprland-on-Thinkpad-x1-Yoga
Installing and configuring hyprland on a thinkpad x1 yoga laptop on eos for maximum compatibility

To auto-rotate the screen you need to install iio-hypland `https://github.com/JeanSchoeller/iio-hyprland`

In vertical orientation, you need 2 configurations for the waybar, hyper and wofi (with/without external keyboard)

When creating the environment, I was inspired by windows and kde




By default, the brightness and volume buttons do not work, so it was decided to bind them using the light program like this: 
(showing an example)

For audio output, pipwere is used. The following binds were used for the volume keys: 
(showing an example)


Для разблокировки по лицу нужно установить пакет howdy `https://github.com/boltgolt/howdy`
Если столкнулись с пролемой установки python-dlib сделать следуюшее:
1) Добавить репозиторий arch4edu `https://github.com/arch4edu/arch4edu`
2) pacman -Syu python-dlib
Howdy currently work whith python-numpy 1.26 `https://archive.archlinux.org/packages/p/python-numpy/python-numpy-1.26.4-2-x86_64.pkg.tar.zst`
Также для коректной работы надо установиь linux-enable-ir-emitter: `yay linux-enable-ir-emitter`
Крайне рекомендую использовать howdy-beta-git. Эта версия создает меньше всего проблем.
Если хотите запустить `howdy test`, лучше всего сделать это в окружении X11
