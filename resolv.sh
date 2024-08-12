#!/bin/bash

TMP_DIR=$(mktemp -d -t ci-XXXXXXXXXX)

# Script Varibles
SCRIPT_DIR="$(
    cd -P "$(dirname "${BASH_SOURCE[0]}")"
    pwd
)"
SKIP=$(awk '/^__TARFILE_FOLLOWS__/ { print NR + 1; exit 0; }' $0)

# Extract
tail -n +$SKIP $0 | tar zxf - -C $TMP_DIR >/dev/null 2>&1
cd $TMP_DIR
npm install axios xml-js
node $TMP_DIR/solution.js $SCRIPT_DIR # bash $TMP_DIR/solution.sh
exit 0
# NOTE: Don't place any newline characters after the last line below.
__TARFILE_FOLLOWS__
�      �\�s�6�g��&SI�D�!'�3�Lb7}L�dbgz�cS$$1�H� -�����@|�a[���>�2���b��X<d)����¾y���E���w^�o������|��N�������^�wv_��C��L"���;	!ߤ�4���%���ōB�	��CrH�i���O�pLC�8 gPED�F�aj.(.7:Y}��~�^7�\-
�,��s�t�6���~�y�N��Q�	���a�p�N��yN�#Æ��T9!4��x섞��7�A���oI2&�d@���)�@ɜ��u;�5��$IC"h�|)�\�@�G@�5@fGq'�D8�����+��e�\�������F
�P=f����0�z��hrCC���C
H:��Mh%���!�e�o�	�	u��I��@�"�c'~8����[0/֗���d��_���F���[c��Y2[RB{�\�?��vaLք��Eo ���)��dS�����ϫOD��8|��S��,`o�(y3X�������w_��[p�LC��hp�]�jH�>�8�[��4������cq�)Oc9�#��+��|aCm��z�<@���U���ca-��$�}>W^�N(����s�����T�r�o�P7M|>=���Bb�9v�P�/6p��w�9�c��ͮC�"6�ĜBO� ��:X*(f׃+�'i�D��+ޟ�Ї.����-��	�����;���P�]��G���>�i6�"x���g2P��f>Ts���ǀSN!T�_�)��l�j�h
��	�D��c��_�/n׃j�������*��'�X�ϣd�hFI�=��^c�O%�"�O�c�OŸ�����[�m��S���6��X�.}4S&q��P宝[�P�ڙU@3�w=�����x@�Q�+g����t���	�]�\�(�-g9��`�L�r�.[�PN10���t>Ao�����)쾈�b�mJ��4F�0N-���Х��ku2�f�vV�gjl>�Rݭ���g,׺i�ҷZS��ET��z?��n�-����NԦ��ͺ��}�/��"hSW5�KU��P���5LQa��M�.��}��]��]��/Mu�&�"\� -D�1��E�\���+�Th��1O��c�a+�ޒ�u��ȣ��� -u0ngֆ@u9��4 &���Q�Bu%J?�������磴o��y�!���Lu^t�[#qB����q�E���8�ל��Q�q�pq>���:dPH��B�
y����k�7N�ߣ��z}ǽ~��ĕ�T���O��@둪01 ΪW���2X�n��d�6%k��ș�ޚ�,#�W�b�֨M��������h���RSH'$e�k�h+�'�QsV�Y�D2�3�< s�*�B`�i�){��5�+I�RBU�(\�2����M(O�=>�����P��u��?�0�g���~B��7me�~��F��A4!���q�\�#~?a�0�=NMt9e ����|����K�����še�ֵ��>?f�v�ʠ<Ѳ@iV�?Q�6N��J�A)�/?+/VT��b�*�yod�5�e	��-џI-t��C��al%^A�EtM���Tcн��0���H،��`��<�D؍T���\�sۋ3$+�MU�cLT���'�AP! �
s\ߘ�����/`�L>,AS�r�_����I��H��{�(��؅H_�d�>��m�$�������tR����*����%�tk{{�|Y�� <��~N�ɓ��x0�����$M2��&N��KUZzK݅2���	uG9o<�"�Ҹ�����V��AӖì������ȳ�ǩ�Y�;?����YD 1*υ%���$�`���M|��5IwD�1W0�'�E���$�%�|KԻ$�Q�g<n*�[��[[��l��9�%�k
�Z��7ڪq����5ۯU�A�u��;���$$3���w	���y?�	��M��q��b@;�~T�+*�]�3��ȣ@)_EY�^�W���xl����r���_ĵ��m�c�V�V�>{v�K�S�� N�r������֖m��1;��dҽ�`��
<>�{{ow���K����?��S��h��ce�9F9����N�l;{*�.񇣼z'�>��Y�nV�9�h��(�YS/G	��:���j?�?a9�ˬ�g߃�(�~�բ���] ���r!�?Q/����?%T��ꆿ���-{��]����t���&�ɛ�u����L^��?G>�X/M��iV��v>�w����$��������z���8�ޞn1���T_o_7���������og[c�yO��'��dP�k���!`�h�g�{߃��pp�A �B��=���c���VK>��h�4à��s��X�|������l�d���r���C7�P��DCĶ�K��Y����T&���h����t�d�֜f[�G�0�}�1 �E�+�����
������;��f�u��&�Ѩ��-�aEa�	)����.i>�,l�8��¶e�!����І�.h���ʭ	�uk�+�i�4��!f���"�����P3:��(��hWT�t����lo}\6]��a��^����=��|�B��j-����D�rQ�J	�j���U�Y{�lfzqE�qxH�딒1ԎU6BF!T@�p:�D�2p (ydٮ8��I���P$�~�	��q�����;�6#��0$Y_"�4۳&���8�A �Gg�r�����>3���0;���i*y{C��\����Rr���6{�mVKgw$�,Ϝ�i%FwT��;3����ﰏU���1@��O�g�ȸ�9�Tʯ��덆�Uo�
jPͮ������J�z능^�}�������M�ڎ)�KJ��C-����>�RD
qO��"��񂺰�E*�J�T�
Z�T�"�}��t5~�G��̦p��A��UfW�rޣ�Z�+�,B��
Y��,tI��(�P������	���-U*O!��U'�]��L;l<�4��i����Ѥ�hؙ�.��3�Iy^F�%�7	� B��%���kb�1̌�*�
U�=�X�I�_����S.:�"�����������ێ�������aa�5�G�;��d%??(W\fG@R������_:�ImY�ӈRMXbR��Ib�"40H_!f�xO`F[�N���a����|a��Є�:wH3��f)Zg��=Ĩ��ɇ?,�WK��1z�~a�Hhv���q��|�� $�ѾĢ���Qf�D�a+���a��)���B2k����D����(RX�X�UR���g�K�Լ U�
Qe��[k�{�Z���!�:��-���Ս���z	WQݼ$@�٥�N&:*�\`���^�[�|��XSG���P�LRd����6���*¿j+�\�{��#H���b��
-���L����>p����,�
�z=��`UL����l&�k�$U�昩�8.���o>�T^�_P�22�3L�2_�"�����G�&/&� q��(�xw!f��+��t��1�:��D��T�R>�uA�8��䳬�����G4�E�V(�[��3��U�������I�<���2��5���f37���M�=8�ɹ,A��7Yy?nw0�|VՌ��7�,�-=�c.��Stvі�ʵT��V;�z����fm��¦j����ȳ�u��U`�I�Rɣ�h�"9��)-I���.!�┍Z�eU�$���##���4qpߝ���y۫Y8z���1V%cqV���|�$Ɯ-�3a���1�d�3h8�mߣ]}�� C��Wa/1�s�2�[��~M}��-J��U��%˛Ѯ=NQ����bZ�%�J����U��œ�g7��`Z3�j��e]l��2G��s��8p��e<_�шP �Wz>�������]�۪?��ž�C��NY�~��-7�<�R��R�����9Py��l* W�POG@"�
i�5���������?S��ȁ�*+��h�
�m��흥n�:��k�o��팛3�y7T1k_u�+?K\��?�V�ͬ���R�xXE4���*�u�+�A�	��{1W���zX欶�c�[a���9�F�]�W⧊ �Y4̔>�������.��o�J0�n5d�Ϙ�`&�˭!�&^KCX�y񃵻߳�owٌ�cp�.^��L��%�º<��;�<��y�,�ت|,�h,~��r�O��q,���Z�6Ԩrb��BS���#�=��j��� �ғ4`�*'?")HՑgL\��������K��� �@��ƪ�Z�
,�����"�Z�g�����$��!b��0���$0qn�kP����w�_O���;sE\���#�{�?y��/s�c,����e����3�R�G�]Q��|!/�勎��y��r{�(��a�N&:�F)R�!ſ߀�g����Ѯ�U��\����q/��G�񉰱U�S�!�K��F���y%��n�!Z�e�Q]vI/��x�ۢ2O��^� ��`7Cf1޺ʞ�8����L<�w?�c&^��% ��\)Ш��I�`���Yb?/��-њ%�0��WC��D�V-P�?JT�$����c /�K��4�+���yTQ���t>l#�/]*�{��ۏqw\���Zl�&_K�FO���E��,��
���+@B���Ż��o���MٔMٔMٔMٔMٔMٔMٔMٔMٔMٔMٔMٔMٔMٔMٔMٔMٔ������ x  