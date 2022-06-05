sudo -i
cd /home/wf/linux_files/linux_exp/lab4/
make 
insmod romfs.ko hided_file_name=aa encrypted_file_name=bb exec_file_name=cc
mount -o loop test.img /mnt -t romfs
ls -l /mnt
cat /mnt/bb
/mnt/cc
make clean
umount /mnt
rmmod romfs