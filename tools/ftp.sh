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
BZh91AY&SY�� \_�~����������P���C6�Y���@��D�!���zL�#��Q�=OM ѓ�A�ML�82 ɦ!�� �0��4bb4  %4DL(�#P�&��=�d�M�  4�&C� Ѡ�bh2CF&#@ I4!�"2hQ��꟪~��<S�i���@���D�MA���z�=��>�BE��Fx|TxF�uG�_���_4R��LX��(���uvkU9�&�t!'e	CG���ǎgn͛V=�� �Y��F�7X��)��K��W�^b�a|�!Dxu��=;���-��s��	�Z�ay�'��xI�;FE�{m�g3�s��6卥t�׽yv���9�3�H���zԒD�q�|�C$\6 �j���enO�[.h/��<>�f�ϿYC��!��M���3��+�"��xj���sk�^�m<���C�`��$�d�Ib6�w�o$��DIN��V�PV�!, ����e&���A%�g�pI�Ѻ�����&w���7-��Hd�$͉Й�ZX�i	Ņw�����]�������T�`ە�����X�{\�N�*W���E*��ۗ��%m�7�ױ��BM��(.�"�̻m[�:	H����4��=ډH���kG�1�� 6�� ���S6-I$�I$�oUM��ߗ �<�<�d�ze��w��&��7���?}������0�t�o����p�A�b#,�v�08�v��h�%�GM���>����fXhb��C�0�$��԰1F�,�;��8��Ū�?��Zcu�r���]���H�q�:�`���+/����Q1�C1{8��9LLBEk�DC���(�4g��A�
�jD
�5'=�Qq �`�-�u0%�����Lr������O�k
G�ċ�'��Fԑ�+؂`^1J;�]g�.�l��Dr��[t��J^U	���r�u?��aN� �
�2�h���<E�-��U��ٳ���<���Р����0�Ԧ��P�h��O�-/ݦE�4԰$�,�7^9M���1�|��D�eC%�#D�G�F�(4� #�	��iy	>��ގ�Yy�e�58�ن�5���GX�K9[-��?W�w1U��&���^b2(�����8��-,u������)<���ܬ�I}�]-N(D��X��<��~Va���t�S��Nr�*���L1�h�Hvf�>��M1)%�x��\�6b����dI�*J%h7mX���b�®"���-���܈��2���kP��>���b:o撣��0�'�EO��hg��}Q�ciXq܊�̉�wM�&y���W�yח(c@)s��/=���.��*dX5�E�JI�r,��Tj�� I�LP�+�%3OG�3/�O�- ۋ<�下s,l��J
�V��ex��p0� �w��qkff�qW�'6J
�r�`�%����~C.n.6����w$S�	�Ha�