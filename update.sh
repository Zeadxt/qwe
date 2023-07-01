#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYj���  >߀@����%�:���0���M�����zPzL���@i��S54�&d`bba0�!�&�	B&���O%<�SOH􍩍C���8 ]�ÿ�w�,t[�WpPSo��}|�\�)�m�[�9��'��b �'�Nw�ޱjg|J���'��cӒ�w�à9���5(.gbF?idvt8q�~��8De�7�\C<��b<��C��3�T�YEu���UP�A��尞��a�+
�2�����/UΑ	Y:	@��ˣ��I��fa�ᆄg���@��"U3j-��!طԚ�T��Q��1J2���E������<�L,�4�I��MN�g�$~d�i�09�#AeqC<�O\��D���ʈ���кG~Y�"Q��%ŭ�]�Z�d��1V[L)j���D{�"���O=��T�
*(-iO�T�U�R��1�FCTxrZf-���x������m�ܑN$��h 