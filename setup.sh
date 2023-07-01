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
BZh91AY&SYh� X_�_�������������@D@ `��"G�p
 �� (��� ( �   Q	$ �H�A�~E=����jf)�=#M4z4ɣhd� � @ I��H �&�   �  � �   h   @ 
z�3S`4� # !����  L� � �   h   @ � ��#(�&!�O �i䚞��&�i���&!�).�	3���򝮝�l��g��%��(,<�4����{��[뫍�_���	�*2�SK��zA�!��7�&n�%�Û��X����Iaҟ"-�%��df'�����c�mV�� �����&Of�\2���p�%7e�"P_ÎO{��@�i��C����)�E�вڅ4���@��.谌Y��9�3+�����C"�fD��e�Kɽ�^P�(AX��Ӹ灩%j_UUc�x��v��$�� �.���;+A�LyX����GC�%o*F�B��zA�A�ۨb���b2�9���ГI�)6~I!������Hfh�!�C��ņ��*6���𓣺0�@�J�_a�CMT�[t��M9����0@��i��}6�X��U|X�}��܍�Ы��3U�vin0y���
JL��d�n�"*>#�Xx1Yģu�a!E�+O�o5�Ț�%�5�FRq��ȹw�������e�{�lȘ�7�XxiW�§��}���b�e'f8S9�-@/��>+`�B���a�U@b�b)�n��OzL�{����3ц�����kaN�|Iͣ#�YC���^l6�˵OR/�J���X���~2����%I�a�
�mW' r�k�D,QΑ!���>��@����XtB����E���6��=��f[31�gBB��(���lB�p`�Z��0�<0h�B��Ӥ����XlYN�R��*ӊ��),��`��@Y�F&d�4�.�$7%��t+ͿO܃��0^��l@
�b#	d���6���뜺�=�C�T�5��|�٢��8mBb���;�C��(;�{��<|ۡYT�l{0c�����^�P,`q1�tb(D��2D�5B���vFCB�
}X��Ǯ�;�y�""�� +�;�L����Ӯ���U�\���^C4	 ��F r    ((T���d����L�+uZ��~vC����C�G��(�Z��@�Y�M#��b2"���=	WYl��~Yq��qZסҜ`��M�A�����[u�ͽ�*֢�7XW�`�������8z�`�/������H�0y��+K�`6�؁����F&6^��ԟkt4��h`��O�9���L��Ԉ����*1}r ���~D~�O+���xe�e�I�Ϟ�	��z�R!4K��kG���됩hA{�$�L!~2nk������, ~o�1s����R7[�י��ǩ����)���u�r˚��Ūいt�V0�0�y-2�����x�Ǹ�Ⱦ���V�%i
7SI0(:8�=<�RB�� `��Z�&�P� @Hc(0����T���0RKg #�K8E���:;�$"b���,���Qh�X����6^!����91�Fr��;O�e0��KjaZ��X#�QI�R��M�\$�ջ*ƞ�1�c�hJd�`�`1��"��6"16	j2$�5������0�tW��ŭ����2"��16�l`�S㿷�]T�֙�rJRP�*AwBb�r�eta���A�	fBH; bZZϸf���Z0Х���TD֌I	1����	RA5�V���K�[��	l�ħ�$����e�=hC�,zDr�/HPcCa8 �-=��.�Ly|�j�-Z��A)���*`m-c!���ؾ����ԾZ�yDlD��(�@�I��7&�fB5�Rm��!_u;�]b�[,JY��4�cE+�	��tg�h�m����R6Z�;V�rb\�8$j/pd�QF�l�{>Ύ~�~���ON��V�`˜Y�B��@Ų��ڮ�lə32[ዀ[���n��p9�ý��q������s���v#�7����p�7�0�U�ݞ�s���o'��?���~+�S���(����g������B��N���I����^��`�!���'h6�ed˨�%�X$��[�_m�ٍ��R��u�ai��ӛ٠��x��� 0�jY�ciDY�"�㘑��>�X�v�^A�Ii׉�����p~��U�r����S��aɘ_�dYԇ�[�f#�ʹY3�}�����]b3� y�������h�XW�4f@8�]��m��B�l,(r�v�4_������]�5	�EIq�і}Qt��ŁS �,P�9C�:���sx~ћ��Xl����z�Dqz��.�xw�.�Jt]{�ASayj�m,�4ZV:0���C����E�� g@g�B�&�=
�E��>v�[T�7雍����������숯Y��3�?ЧZ��8�Ȣ�9*BP����yx�
W�V��T��WtE��m����D��xb�N@����;��~�/(�����eh���V����A%�I����G��Jd|FR�|�3�
�38��e�y��M	$�8�Xb����&%��w�$li����{����h�35�����-4��i��v��͞c��t��O���&Slx>Ra�5`���I�/Hr���g!XK+���������J$T�`�"Qa`Yw2ݯ��-�"$��[�nv��A��c���ǌfг
$�0eLW}a`iX�H�B p=e4��\[�<ҩ�<�~vwD����(�Px��Uq÷�J�t��y4��T8�$�.BqE<�rX��@�$�P� b���}��#��x�����&�
%pq#x`ˢ k��b1��,��i̔��iZ��%��_��}$>�1�D��4��#�H����b����yX��|� �"!Ur"�f[2��2�I�(}:D��I��9������ŖL�`aq�����l(S���,&�ޥf��e��p)�ET�!!�Bޓ_�&YN�wܞA��)�jY�@��@#�����G���\�#~��a�t��Ĳ�y���C�!���͹���f�I$���Du�D�8x�-S�=}>}h�Q[du�giP--�I�O��LJ�Ų  -:�iV՜� f�ؽ�e�=1�&����}(��+;���r1����V1RO�HM��SK]Ӎb�.^ ��q�A���p,T��:F��E��U�X�VJ���!h{F,�}6vOX��R��D���j�s06����K�G%�e�Rm
�4�+����,,5�˷���2�a�5b�DO搴���/�U|�Pk@��>>ڐE�JC����H��Y��_�BW��m�d�@46�v��"��i���3 ��8�V`�Pt�E"m!��;գ$Zw��$����pfǓ f0�1l`���@2f��ȑ������� ,F@]s1�/L��ƈ�4���S�(�`�(3��2R-+,!���.���=:�ȀgDj0_/�3Y d�2��OG&�]��k�K$� ��a+nH��
��0�b�du�	{J�h��ھbWm6��BR0
�Yg!���;H>H��HX@�C, �����:D�m���{v�ɜlat���:[�E哳�B �R�U�|�O�	��L������l��1�!$�Yk�_�$��2�mf���sj8� "JH�帄IK�˓�1��K�;�5<;�؂��4�6���M�;�JdNB������L�k�������ȾE�H�1��7e`�����v�6�c3�;qJ��-�!���}�	Z-d�1Xi´�N�T�<�CM�g��T���!��#������HZ_�'��j#�%�H9�7��ٜ����=2U������zM0lF5Mi���e�RT��i�S��Pb%�0�E�܎@��|[�֬�L:�A�`�Om����=A��ᒄ|/����E��q?ξ�N�y��%F�r�@�(e��3m�|D�(6Y޺�a��.LŇ|��E�p)Ę`�`-ڨ6��T���Ed����
�SN�jX�i�I�f��kxM�!@z�Ҿ�hN�@crJ��C`Ɣ0S��c��d���&��I&�0��
��3�_kIuϊ�}7����k�,'oZ�X֚�6��Ws��B�QKE���Ո/���H�[d�^V��ô��޽.��Bܒ�8��B�i�"z��H�!*s�!L�
J����9��D{w˺&a�	�9��-'%밣�TVh�X+W�5R�$��J��A������xt'�Y,�O@g�̈y���(4 �B����Q��f��n3;���T؄���
ԃ=�2}�B���:l�)�W�Kab�߭�+E�EǨ��%?
Igf����6���o�^+S�"�U�j�I���d��"�ȔȐ�'%)v[vu����r��D�(U�d�"�nH&�\�i1P[e}�&�}�H/2L�Q��!dV�d�V X����s�B4\\bX�.��<�"F�܃@]ʦ��r�%���mN���^�8����i�i�iM/�~6E�fK7h��Zy����>M�fYv�Ś�d����=�r���I�R	�%ཫ��/BV����i�����,.H�#wN�a��d��e�����"Z#֖2]Bı�	`�വ��%"� ��?��� ���c4�c�ڴ�J��7u��Z��a�pҮ�|6�"j���Uۂ]l]c�����C>မ���4�ؐ!��I#�{��������&g�v%��L�'� ���C�Į���9������p��$�� �� $��a0��w$S�	���