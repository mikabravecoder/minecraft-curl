echo "Download windows files" &&
wget -O w10x64.img https://bit.ly/akuhnetW10x64
echo Downloading File From akuh.net
echo "Wait"
echo "Starting Windows"
qemu-system-x86_64 -hda w10x64.img -m 4G -smp cores=4 -net user,hostfwd=tcp::$SERVER_PORT-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
echo RDP Address:
echo "$SERVER_IP:$SERVER_PORT"
echo "===================================="
echo "Username: akuh"
echo "Password: Akuh.Net"
echo "===================================="
echo "===================================="
echo "Keep supporting akuh.net, thank you"
echo "You Got Free RDP now"
echo "Wait 2 minute to finish bot"
echo "You can close this tab"
echo "RDP runs for 50 hours"
echo "===================================="
sleep 29030400
