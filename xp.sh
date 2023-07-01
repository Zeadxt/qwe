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
BZh91AY&SY�%E� _�~0����������`�|�-eIM�!�@hh��$ɲ�����A� ���i�i� 2hѣM��@�M  2@8hhɣF�422@ 24  � H�SF��=S��'�����Oҏ�ɒ�(ڏ)�=O)���SM�ᡣ&�4���a d �4�  d"�d	��2<��i����=L�	� z@ѧ�@�ʘ��GG��O/qO�]�:�J}s�r�T0�������*[�V�B���)�꠫�\�f�Y_�w��Sr�U�d��61�j,�c��z������6��ۜ��;"A�����2`$p@��7Wt�_�}(`���d���y`-����*�F�Ƶ�]K�ԛ�kÛ��`�P�Jx��C+�p\&�(vH��n~�?�oAO�����v�.��F%�j����ыE%q1(�5��{����t^����ə%rs%v��l�A�%+t1�6c	^)c�U�^`�ֽ&x�	��g ��+׉˩Az0%.J�RzL�_VV�R��#�x���4���r�E^~�E1��( #�@<餠�c����Vנ�n#�q̔�XV� N��%���Eɮ�� B LCThYɐs��y������4)���Q◧����1y$r#bjD� �OO�����Or�R�
���=Z��/Ӡ���<_�H4 �@ohmt�	�<���W�W���m�V+����SZ��Z����-]�Y��J+�3�d�Ư+��	"������bBy��ͤG	m �F|v��p
(6XL���Bb�%B�C���K�9�p�R+?��ˡ��P}�����<��m��on��Rś����î�X�Ʋ�䦝Π�%{ތ��Z����1G}�b孪��1�9"��}b�P�!���$M�=�n
�)�y��}��KD�t�d|�a=��+�Q�}L�w�o��zB�hl����mԌc�5#���{��.�2EbUV�M�}�Op�re���Y/�TQC�I'@�#a���b�d&Q0���'�����#&/�aܟ~���a���F�1L[��l��J�<��`���R�D-�Zk6�y�$I��V��F��ŏ�jG�zNQ�������{�ƽ���� ��e�=�$�X|���ڸ�!K�Pes0����и�G#�y�K
� ��{�0�,�jP�����3i�&�xR�6�+�f3�žeY�na��Q*������X�����W|a�.\&���#�5,�%��]�]�ym��.m��9%Q͉bЏP0$�$#=�dxD���d) )�$n�h0o ]Q�JD�C��J47R̶�T�>�nK+��W�V�Yt|�P��o�A��G��# ����Ъ*���	\f/Ys�k�Ư]��%�t����E����x;5$�_e��Ta�i�!�с0����l]������k�yϾᭀ�"�*F�L"�Qh� �9��T�66ޔD�n���"!)7��-E�Q�o���KҼ�Q��]��)�P�̗�-�w�}H�����k�B��xAA�C��K�P��6Z.R��(LK ��!�7ŅV��bŊ�a�ܪ����O���9���ꎞ"�,�Ģ�X��\�b��d|�o���,�4�9ւ�����Jb���s�Ԯ�U Tĸ�Չ�UAjXğ�؄^� ���l����*r�-�K�o�`u��O�R[��H�-�<!�>$c�S�6�f�Y�A�KoL7&��x���M��%<�[U]��Ъ��M��@�&�ݒ§8l��H3�IX��"�(Hh��