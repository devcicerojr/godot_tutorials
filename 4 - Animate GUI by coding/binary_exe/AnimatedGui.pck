GDPC                                                                              ,   <   res://.import/bg.png-23a59c2e9cba2223a50fa3fe41b70b25.stex  8       &      H;^�+bs��i�'�D   res://.import/buddy_green.png-bfedc100338b2ddd47d287e2c0286427.stex �`      	      A$,��G'Cs�?P�D   res://.import/buddy_orange.png-633defc68295beb5b03cc018bfc2a3e8.stex�l      �      x0�ǋ�N�2�KF{H   res://.import/energy_bar_bg.png-631cba896b660d861406b09759800e93.stex   `      �      ��~������ClH   res://.import/energy_bar_fill.png-8f3fbf243c545e9f30bd17e2659a05c4.stex �      �      �y���L;]Y�(��8@   res://.import/foe_pink.png-e60995b6dae118160c60211d1c9844ba.stex�w      �      �G�??��p:��F�C�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex��     �      ��N�qdc�ž�j�Y�<   res://.import/icon.png-b6a7fb2db36edd3d95dc42f1dc8c1c5d.stex��     o      ��F�؞.�ʻo1%�~@   res://.import/label_EP.png-ef88c59a1bf6f69d3411e8daa0c276ff.stexP      '      �QL]pQ$!�����c@   res://.import/label_HP.png-3d5fc5503d37e4a4e23e961823e3f137.stex #      7      .��(�p���k��D   res://.import/label_HP_bg.png-0ade9900f173b49381a4369c24e883c0.stex  '      3      �+�dX��"�t�#^�D   res://.import/lifebar_bg.png-bbb11f3195d73a18fddc4dc15125c977.stex  �+      �       B�د����HiD   res://.import/lifebar_fill.png-11451ae6cd9f38ca127db5b77f2b84f6.stexp3      �      �G�Ǫ��CP�I(W�E@   res://.import/shadow.png-b0af508c613267ebbb0ca50fc671985d.stex  p�      �      �[�@�r/(!V��i�   res://LevelMockup.tscn  �      r      �}B�]�Y�>6�oP��,   res://assets/GUI/energy_bar_bg.png.import   @      �      |&�a;�n7!�M�,   res://assets/GUI/energy_bar_fill.png.import �      �      m5_��$��$   res://assets/GUI/label_EP.png.import�       �      �_��K^�y{D!�$   res://assets/GUI/label_HP.png.import`$      �      ��YX��,���+P�(   res://assets/GUI/label_HP_bg.png.import @)      �      	�v�T��*a�"Ў=(   res://assets/GUI/lifebar_bg.png.import  �0      �      VqJO>
8��,^h��(   res://assets/GUI/lifebar_fill.png.import`5      �      �a���?���.�c��M�   res://assets/bg.png.import  ^      �      =��#;^,=����ey0   res://assets/chararacters/buddy_green.png.import�i      �      �=s��C�w^�o�<�K4   res://assets/chararacters/buddy_orange.png.import   0u      �      �<X��5�� �P�8\90   res://assets/chararacters/foe_pink.png.import   �}      �      �|z*O)"D��o)$e,   res://assets/chararacters/shadow.png.import  �      �      ��[�M����K�8d$   res://assets/font/Comfortaa-Bold.ttfЅ      �     ￥Ld6S������8�   res://assets/icon.png.import �     �      E�i�w����(����   res://icon.png  ��     �      ��� �m��Ѕ��Q~�   res://icon.png.import   ��     �      r��� ���l<iT�B�   res://project.binary`     >      �i�
�CO2���=,�   res://scenes/Bar.tscn   �     �      ���|�AܵB�����C   res://scenes/Enemy.tscn  �     �
      �=Sqƍ��c���   res://scenes/EnergyBar.tscn ��     N      ��~<i�ݍ����*   res://scenes/GUI.tscn   �           H��ߎΎ�]-|�F��   res://scenes/LifeBar.tscn   0�     �      ��3@��x��s5c��   res://scenes/Player.tscn��     �      ��	#U6���%��X   res://scripts/Enemy.gd.remap@�     (       �k��G$2��($d�:�   res://scripts/Enemy.gdc ��     �      �޵�k�d?�U��w   res://scripts/GUI.gd.remap  p�     &       =�%+���rxc��   res://scripts/GUI.gdc   ��     �      ���S��5�6�!f    res://scripts/Player.gd.remap   ��     )       �g��і��CY�e�<e�   res://scripts/Player.gdc��     �      �5Eƨ�3�{`�ړ<5�[gd_scene load_steps=5 format=2]

[ext_resource path="res://assets/bg.png" type="Texture" id=1]
[ext_resource path="res://scenes/GUI.tscn" type="PackedScene" id=2]
[ext_resource path="res://scenes/Player.tscn" type="PackedScene" id=3]
[ext_resource path="res://scenes/Enemy.tscn" type="PackedScene" id=4]

[node name="LevelMockup" type="Node" index="0"]

[node name="Background" type="Sprite" parent="." index="0"]

position = Vector2( 684, 383 )
texture = ExtResource( 1 )

[node name="GUI" parent="." index="1" instance=ExtResource( 2 )]

anchor_right = 1.0
anchor_bottom = 1.0
margin_right = 0.0
margin_bottom = 0.0
_sections_unfolded = [ "Anchor", "Visibility", "custom_constants" ]

[node name="Bars" parent="GUI" index="1"]

margin_bottom = 748.0

[node name="Characters" type="Node2D" parent="." index="2"]

_sections_unfolded = [ "Transform", "Z" ]

[node name="Player" parent="Characters" index="0" instance=ExtResource( 3 )]

_sections_unfolded = [ "Material", "Transform", "Visibility" ]

[node name="Enemy" parent="Characters" index="1" instance=ExtResource( 4 )]

[connection signal="died" from="Characters/Player" to="Characters/Enemy" method="_on_Player_died"]

[connection signal="died" from="Characters/Player" to="GUI" method="_on_Player_died"]

[connection signal="health_changed" from="Characters/Player" to="GUI" method="_on_Player_health_changed"]


[editable path="GUI"]
              GDST�   (           �  PNG �PNG

   IHDR   �   (   ��7$  yIDATx���MLg���.+�n��jd!$�i�h��6�����$�j����CM����Ц��F�z�=��Gb�!�4���j�M�a���d7��0���(�ۺ�}N3�yx.?vv��y\���ɤ��dd!�N�7�U@+� ���2ٖz�߀��:�6�?t;1:�Qa���^��;�?P�E�UVF;�k`�E?\�^7r�h��\�T���%<�Ԏ�VD��<bq/ó��F��,%�z���5��	0��g�E��#����6S^�ؽыȖL.��>Ao��Y��u�W9Ͽ>p�V�R?�獏)�O��xEd��*�x�RF�Y�p���v΀����ɕ�Q����p�"�Uo�͑����t�.�`}/��l���+�
����n��Qg�;��x���{�)�O���Dd�>{g�����է���Q��/�?$���A5���_j"��^�H�xd�+�#���^�{A�2J���v�xh�������D��w7�)S�E�X����H��ML,��mΕǜ�!X�E?cWk���]�Y\R�E��⒇����NҦ�7�ppȮ|K����;5Fن����^���C��͚�l֙���r��O��٥��梋�N�a
�HS�Er�.��p�����0\$�)�"9L�a
�Hs�fǄ���h]6�l��,�UV_��ʔ]y��;7�݁���v5}f����w�>v��vu�y�����
���Ⱦ*�Or�~�x��g���~X��cW�"�m�*
�t^�%ÿ�-����g��`�΋�T�l�L[#�V7>���?�7.�]w]6�>3	/�:�����p��6ī��d�M�`�>QD2���g���CHM��}pg�07U���D$c7Urgⰳ��}����	ֶ'- ���y�Ԗ�a����P���'쭋 �]��ڽ�n��c+���i	cs��?�H�\��ýZ~yT�w?��l�6�v�F�����[��L��Y��=˸]k���nI�\D��?]̍�����I���^i�cm<�,���u`�;,"��*���Fsѿ��1	FD�J+��pÚ5����ޓ��J`�#"�i+�=��X��7��-�F|l��ADvNHl�ӿ��-��Ū    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/energy_bar_bg.png-631cba896b660d861406b09759800e93.stex"

[deps]

source_file="res://assets/GUI/energy_bar_bg.png"
source_md5="b57ae8662f855dbbf3a188c7b28b8c7b"

dest_files=[ "res://.import/energy_bar_bg.png-631cba896b660d861406b09759800e93.stex" ]
dest_md5="f2a0f87e16dc108311e7e90f8c8b436c"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST�   (           v  PNG �PNG

   IHDR   �   (   ��7$  9IDATx���1N�@E�g��XK���D�`t�
�AP"ф"�Hak�$���#���c�a����� G�P���0�Ca��N'��]���l���Ɵ��e�h�
86���,�s��$���d��.�W˂������
؏U�~&yhYгE��3�w7�7�n[ǡ�E٠0�Ca���	
8&p(L�P���0�Ca���	
�	��`S =�[�	|=c`�^Zo�9��>ɐ���މ�_�9��u�0�wQ�&�r����#&p(l<��ߡ Gd���wp`�lѡ0�Ca���	
�-�(��̒    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/energy_bar_fill.png-8f3fbf243c545e9f30bd17e2659a05c4.stex"

[deps]

source_file="res://assets/GUI/energy_bar_fill.png"
source_md5="34cb5bf422233cf803cb46fecec0a333"

dest_files=[ "res://.import/energy_bar_fill.png-8f3fbf243c545e9f30bd17e2659a05c4.stex" ]
dest_md5="f97997fcee164c3b5d59980228b1c538"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDST                PNG �PNG

   IHDR         s��   �IDAT(���A�0D�0� j��@o��FH �@- �J4!M�{�iw2og3	:� Y�"�� �p�I%��2��a�2�niF�P�)u��h�{��zPX���*Xf��Z�����r��5Vy���Vm���si����ޗ��L�s��s�(6��m�K�?��"Ln����4��ᗼb�pu����.�eWs���Ko�������    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/label_EP.png-ef88c59a1bf6f69d3411e8daa0c276ff.stex"

[deps]

source_file="res://assets/GUI/label_EP.png"
source_md5="d44710c9ac39eca6bb75a795f6b2edb7"

dest_files=[ "res://.import/label_EP.png-ef88c59a1bf6f69d3411e8daa0c276ff.stex" ]
dest_md5="f0514c5d700c512421f4aaa6e707d463"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST#                PNG �PNG

   IHDR   #      �m��   �IDAT8����0D7`	�Z�[�6,AJ-Ђ%H	�!̇$Df8��d���3K��-I��b�9-�l� %`"?�8�X:�(�D���f��6�|L臃D.�D��(7a�R
g�b\7e3����lbgG6Բ���� 9�tه�4"ث�g8��T��3��[`�M�'գý~f���]�f�?� L7�����N@��<������t�ɋ���W    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/label_HP.png-3d5fc5503d37e4a4e23e961823e3f137.stex"

[deps]

source_file="res://assets/GUI/label_HP.png"
source_md5="9b7cddef7a75639903850a0c2cef9077"

dest_files=[ "res://.import/label_HP.png-3d5fc5503d37e4a4e23e961823e3f137.stex" ]
dest_md5="2ecff0280dce70b7011ea91d966bbad8"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDSTx   .             PNG �PNG

   IHDR   x   .   ��8  �IDATx��ܿjQ��o��M��7y�lb[k�}���U�4�`|��j\���m��kq�gMv���,����\��\��}�� W���g� �n�������y'����)�q��S��j���<Xf��vq[�]Em������i���ڟ+5l	��`��������:-���-q��W'���S[�9�D��SKxF���N�ImX�JQ��}7����.b��k]O�Z�Vp��)Rk��\[��B>\������e��2pp8�\.������e��2pp8�\.������e��2pp�]�Z��G�S��|/�?�SL�ﻞ"�f��x���$5n���=lw;Kj�6�_���/�Fjӣ��!�a��D�1�吿:6�-x�~��&x���镬�����q�Ԍ��(��T�N�������Xm��7'�۫���f������Ϙ��o|S�vԧ�O�N�%�@��},    IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/label_HP_bg.png-0ade9900f173b49381a4369c24e883c0.stex"

[deps]

source_file="res://assets/GUI/label_HP_bg.png"
source_md5="7eee3747bf3d410a21bf88caa82b4ab4"

dest_files=[ "res://.import/label_HP_bg.png-0ade9900f173b49381a4369c24e883c0.stex" ]
dest_md5="0de92b8c6458f2c82208e574e3235e90"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDST�  5           �  PNG �PNG

   IHDR  �   5   R��C  vIDATx��ܽoUe ���s�魍� !QpiJu+	��8���+����	ԍс?@�1Є�Hx� q@E0�!\΋����[�-��������}��>������<p�E��4�$����iTw�M`/�u1L�40~f�i�p�q�cf/� �K�;I�������-�����$�����c�*T-I�>vwJb�v������bC�x��*Iz"Z�D��DWr�d��G�׀#���fUKR��
�l<&ݟPl��wI��	w
�3)�嬻xx�� ���!�V���OH_��B�֬�@�|C������0p�,��&�y�#ݟ����$��s$��	�)��?A����C6���{���M�ʇ20�)OCŐ6IZ�҃I���I��;%u�|�M���,:#�3h-_g%I˨�hL���@S�!�M��?v6��F�,�wT_�w
'[�]t�B�V�ė3'[��Ee�|�'�0�$��Si[u`$gR�K�V�� �6�|�?ۓ��#����x�z9*��U�K�V�~c��,��D̿�����P�����͂d��%%IR��!I����$�b`H�j10$I���ZIR-�$�C�T��!I����$�b`H�j10$I���ZIR-�$�C�T��!I����$�b`H�j10$I���ZIR-�$����S��S���}�$=i���쑒��a�,K��Eu����vK�4`�����O�~�ei�[^�8�J(����P����@:�T��n�d���aLw*]��bK�u�A�3vyJ�V�d;cZ�[�'ѕ�,�(��p ����K(6>��bs��C<dh)�.I �^A|�g���0�P.Ke�L�O�s����|�voz���X���C|)#9ghH�z��K��.�+�ѱ��:0LD7r���6�jH�z_���g�p���+0 N���k9�VA�L#�����(�)�2%9�3�������"��F�GA�CF�] � � �$�N9��
�9��C_=$�����p��;z �y�`�O�.Kg%I��8�~Ջ�6(> ^��R�$i͚�=�W������,����$�u�:(IZ�h��4���ZhIj!#<>l$I�)���F� �U�X5}�    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/lifebar_bg.png-bbb11f3195d73a18fddc4dc15125c977.stex"

[deps]

source_file="res://assets/GUI/lifebar_bg.png"
source_md5="df50f22ac78c3f6bdc76d80b2ca5bfe8"

dest_files=[ "res://.import/lifebar_bg.png-bbb11f3195d73a18fddc4dc15125c977.stex" ]
dest_md5="2042e6830cd8af8291cae84806016916"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          GDST�  5           �  PNG �PNG

   IHDR  �   5   R��C  �IDATx��ٱMAE�g�ȡ: �I!�� �@F/�t@8Dr�!ټ��Y�s$G�c�h�vf6C �'{=  �A0 � � �" T�W=|y=�� L�����gK�0�`����IP *+�0�9H��,�����̓<%�N�h�	�}��5�`z󹧿'�m�9�:_g" &��}qL0C�?������` P *�@E0 � � �" T��` P *�@E0 � � �" T��` P *�@E0 � � �" T��` P��_���R��c���  L�c����?�I2Kr��p�D L�<�w�1�X$����c\zP *K�qr���9 ��U{�l����r$@E0 � � �" T> �� ��	    IEND�B`�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/lifebar_fill.png-11451ae6cd9f38ca127db5b77f2b84f6.stex"

[deps]

source_file="res://assets/GUI/lifebar_fill.png"
source_md5="498583231b7117aa7a2bdca24dd4beb9"

dest_files=[ "res://.import/lifebar_fill.png-11451ae6cd9f38ca127db5b77f2b84f6.stex" ]
dest_md5="ce47edc7aafecd43501db6492857e845"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    GDSTV             �%  PNG �PNG

   IHDR  V      @\��    IDATx���Ko\���s+ޤb�I�l�A�Y蒠��N@/<�A�'/ev�����j�7��"00Z��c7[�d��D�X�2���[�D�9��?�W�+�"�|��S����?2   `��   ��    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �P�  ��*��ڛ��WfW.��n��E�z$sT�{�G��������q޴]�E�#  ��]�2���_ٙ����V�7.lo��;�������w�GA_�n���  xE������쇛��_�cs���w&e����� �y  �p��woܼ~9�
軛�/��wo�^�   ���f���ݼ~��[��+ =	  `x�"��J���x˛2A  �o�lo��^C������vR���$  ����+�plW���Ct  ����s�'���/�I   �s~s�z��_   ���V38>�	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     �*�N=  �l8��[    �    !H    �    !H    �    !T�  cV���fW0�2;7�X+�<�" �K  N˵�f?�ve��z�! @�I  �i(����o�|�r�! �S�  �<� �!	  8a�/Ϝ���$  �$�E�ލ�R�  �C  Nҍ�;�k�W  �!  '��k�� ��  �����Υ�  <�  ����� ��  ��Ty�	 ��I    �   �д]�	��   ��X�RO��$    �/��8�H�J=   �,\�<��?�c�O����ѽ?���r~���s
�	    ����p~���������x���wo9O=���    @b;����{��"�ժ�"	   �n�}���o�^��I    }q����/�R�`�$   �y��[e�q N�   �#�k?���z�$   ����<���  ������ ���K=�q�  ���h�J=`���'	  8I��RO <��H  �I���<� ��$  �$ݺ��wx�z �  p���{����+ ��  �v��|�z �,	  8y���o?{�z �W$  ��]�����?�}�L� ��*�  `�>�7���?ݸ�s�����5�\+s_s �H  �)j��Ͽ���Sy�_��?��  �˃    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �Ҵ]�	��   �/��*��I   �/��8��I   �;_�SO`�$   ��;<�uo7�
�I   ��oݭ���!   �Ň�|�
 �G   ��}���;L��1�R   �n���7w�~|�[ 9]   @M�-������/���6����I   �������SO �̻     	    B�     	    B�     ���(���k��?�]���n��E�z$sT�{�G��������s_� @OH ��k��~~��ι��C�֪�����7~������o߽��<�(  �  ����w���������k���/~��w��Y��  ���+y��7߾�z��ͷ/�s���+  �N��]�<s�����ۗ�_��^�g�u�z����@H ����߻�V�0$��x˛2��-W�'�8-��ސ xI7.�lo��^C������;�W ����A�	0N_��q�	�_H ��k����v�_�1_��䎿\� /���K=��_�[�v��R����;<�uo7�
�/$ ^���I�	0<Sq�ǚ�{����+`l޿u��:@�	��Ty���B�ݺ���'_�^���'_� �"  <���?����W�����c��_�R  葶�~�o����{�^��sn=������ܹ��=o�ޑ   ����������k��^�����Z�{��3M�-������/���6���^�   ��i��>���ϿN= N�w   @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �Pe�i� ��� @"n   @    �    @    �    @    �P�p��<�v����+ۛ�����ԋ    ��'�k�?�ۋ;�k��   @b�M E���7�|?�   �Ѿ��   �i�	��ũ�?   |�@������+   �_F� n\�n���   �rF� �]���    �3���t#�   �&��k�   �g�0TE�z   ��    �I  g���  �K 8;�e�z  qI  g��a�	  ���� g����/��j�O5�޲�����W�;_=� ��I  q��Ņ��[k?���{p������W�ԣ  8-  ˲lgs�7�x�o/�fU ���  x���󣋩W  p*$  ���+߿~q�z  'O �Y���2�<  ��H  <k{���%  �F �9�~_  �&�eӦ� 0x�O7RO  ���0<:�SO ��z�z  'l�	���e�	 ��u�  �3�p��E�	   �;#L �.���   ��2��t����O�   �e�	 ˲[��M�   zd�	 ˲>}����W   @_�6�]��?��׏?�=8J�   ���>�p���ݸ8�va��tc�^��+   byȲ�麏�}�`/����?]M=  ���    �7I    �    !H    �    !H    �    !H    �    !H    �    !H    � �s4]�z  'L �9�:�  N� �s|�8L= �& �w�^��  �	�  x�޲��P  	 �g������:@ ���  �+��u  `�$  ����>}�z  ��J= �^�=8�ͧ?���  �% ��t�bY�8������E�y� `�$  ��_wRO  �ļ    B�     	    B�     	    B�     	    B�     	    B� zdٴ�'�85]�z  �'�ȣ�:����_.  � ����e�	0N_,SO  ��$����"��;_��  @��z��s]N�޲��P   	�O��{����W�ؼ�����:@  � z���ŇwwS������+   ���;|�ෟ�S��1���>}�z  �E�z �j��W��ٟ����ŝ͵�s`�v�~��Ï��?  |��S?\���G7.N�]��>ݘ�We����t�bY�8������E�y�  ���_M�}�`�{��   0�    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    B��b�z   p��   �$    A   �$    A   �$    A   �$    A   �$    A   �$    A   �$    A   �$    A   �$    A   �$    A   �$    A   �$    A   �$    A   ���  ��M�����,�����c�,���i��Uۥ�"  0fy�����L=�<�&E>)��I�X��e- gÃ   �V�e�6�^���1��6��� $   Fk�^m�}��FY���)�1��/D  x9�"�N����餜� �n� �����İ��  ���G �iXk��� �q�u�~Xk���   �|1 p�$   Ʃn�t���!�J  `��6��c8�Z`�$   ���jH��Š�%  0N��ʹz�jW�zl(	  �њ/��_�?l���N�A  `��,{pP/VM�!�j�j�.  g�J=   NQ�e��f�j��b�,�"ϓO겺������I   �ߪ�v�M���: ��     �    @    �    @^ ���Y�Y[U�^�eޱ�r�����������j~`�$   �g�*fkeU���T�g�<������n~���m�Q �ȃ   �l���Q�������/nT��2��S$  �]����Q���J 1	  ��d�*�}�b{�ܪ�#'��  x�<�v���bg��s Y�I   |[UQ����V湋 �(�� ��E;G��@~� �bk���G��@   /�)�'�}^ 	  ��v ��y� $    A  ���.�����QH   �X��:G��@   /�
vਉ�y� $   ^l�nSO8S�>/�  ����m���M�I �(I   �X�e��&��3��� 0N   ��~�����5�  c%  �]͏��j�`�j�2V�z   C��l�n�VVE�z�I��n������   8���=�ۭ�ت��"/�|�1�˲���n�n��`_{�$  pl]�=�����`P�    B�     	    B�     	    B�     _
 @M�����,�����c�,���i��Uۥ�pl   }�g�l��N��C�ʳlR䓢ܞ��U;_�2 0,  �w�,��Y�����餸�Y%�� p,   �3[�6ʾ�Ku�,f��� �Q�� ͤȧ�a�3u:)'�� �`�w+  q�����a��� �~���# �4��@p~a �/ՠ��k-�   ���!  �/u;�Su�i-�  @�4m�	�p8��@p   ��h5�C�bPk��$   �e�vC9W/V�jP�- �I   ��|Y����a�Ηu� �   �;]�=8��&��o�X�j �a�R  ���lw�,V�tRl�EU�y�I]Vw�aӺ��  @��nw�dY� �    	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�     	    B�R��M�����,�����c�,���i��Uۥ�  �0fy�����L=�<�&E>)��I�X��e-   ��V�e�6�^���1��6��   �� Fk�^m�}���(��z#  ������˙�t2�?�餜�   ��a�9��9�?1��   ��5N������  `��Ʃ���a�  (	��ŀ   �O��ҩ�  `�$�q:h����pPk  J�G�!��Z  0P�8��n(��Ū]�  ��� Fk������i��:�
  �$�����A�X5��|�Ū}pP�    p6��8E]��.�Ū�N�����<O>���;lZ��  Θ0~���]6Y���    �   @    �    @    ��u�ǖg�fUlU�z��=x���y�f���ۯۃګ�  �O8������U1Ѓ�Sy�M�|R�窢n��Q�_��G  p�<p����F5���3�"��Q����C   8E�w5[+�G}H�^+U   �� ����������r��#  0N�{/�g������O쬗c{�  �,�$��b�*ʡ�����<w   `��^,ڑ8��  �a��ւ]���y  �� ^,�S OD��   AH /�@��  !   @���]�g+��  �Bx���u(��y  �� ^l��Q��  !��~ݦ�p��}^  � $�ۯ�8w㛮�    FIx�.�v�M�gdw�1   �q� �����;�;j\   +	໚5�՘+�b��d  �����dw�6�l���<���T�����  ��p<�u{P�[U�UkE^�@c@�eM���~������   $	�غ,{\����9   ��]    �    !H    �    !H    �    !�R�����I�YU���tYV��A�>Z���K=  �c� �(ϲ�z9����<�g٤�'E�=)�v��e   �a� @��Yvi������Iqi�J~1  �c� zg�^m�}�s�(��z#   �Qߏ��L�|:��tRN
W   c��8����İ�  ��/������   8G�~�u�~Xk  �� x�  `8$�~��!���nHk  �� ��iSO8��A�  N�G�!��Z  ��/��ʹz�jW�zl   8	�w�˺���v��S�   �$�����A�X5��|�Ū}pP�    0,U�<G�e��f�j��b�,�"ϓO겺����  ��� �k�v��&��{   ��     �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @    �    @U�   �2)��b�,�"�S�鲬n���}�jWm�z�I    '#ϲ�z9����<�g٤�'E�=)�v��e��<   p�,��Y�����餸�Y%��@B   �	��We�OXe1[�o����  ��&E>��x5����U����3
  �g�r�bXk9A��  ^�f���a����  xUՠ��k-'H   �F%   ���ҩ��$   ����M=���$   ��G�!��Z�	�    ^ժ�r�^��ՠ[�I    '`������i��:�
��    N@�e�ŪI=�[-V탃��Ȫ�   F�˲�e�X��I�QU���'uY�u�M��?�   p�Vm��l����˃    �    !H    �    !xW�qi  �IDAT   �ky�mV�VU�yكw쿜'o�?j���=����4$   ����b�VV�@�O�y6��I�������G�~ݦE8   zj�V^ܨFp�FU�7��Z�z�H   @����Q���J�3&   ��U�>�?��VnUe�?m  @��Y��>���;��؞s��$   �_��������s83~�  �~�v$��yIȏ  �/k���G��$$   ��)�'�}^�   �~�v ��yIH   �$   �_�.����㒒   �K��:G��$$   ��
vਉ�yIH   �e�nSO8S�>/	I   @���m���M�I �	   �.�v�M�gdw�1 Ύ   ��~�����5� p�$   ���G�b5�
�X5� ��^�R   x��es�t���*��[NR�vs��O
   �_�u{P�[U�UkE^�@c@�eM���~�������ސ   �^��q�>���ʼ    B�     	    B�     	    B�     _
  �eY6)��b�,�"�S�鲬n���}�jWm�z#!   ��Y6[/��2����,���(�'�b�Η����    Z�e�6�^���1��6��	   m�^m�}?m��l�������:  ���t2�c�tRN
Wx%��Y  8�r�bXk�!?@  @\��������  �U�j����C   �@�b@^�   �U�C:U�ݐ��C   �AӦ�p��ZKI   @\�VC:T/���   ��Vm7�s�bծ��=$   �͗u�/�6�|Y�^��I   @h]�=8��&��o�X�j xuU�   �uY��l�v:)6ʢ*�<��.���i���I    Y�e���]6Y��� ��<    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    �    !H    ��>>�]��    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/bg.png-23a59c2e9cba2223a50fa3fe41b70b25.stex"

[deps]

source_file="res://assets/bg.png"
source_md5="4ba8e7abbd3cfe3fe0d9172a7a57a0f9"

dest_files=[ "res://.import/bg.png-23a59c2e9cba2223a50fa3fe41b70b25.stex" ]
dest_md5="48153b5eb92b6273ed0ebf69a91e27c1"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      GDST�   �           �  PNG �PNG

   IHDR   �   �   Qj�  �IDATx����o���gf^��mB
��`�7i/j�H	I�`����J�(�5QHSU�Z�.JQ�Z�4Uӻ��J�B!j�P{�)6'1�g���z�S�����q���~��}gv��ѻ3�����X��ZaW`=�x hZ�f�H�e�@���,��8pq�;�<�n�b�e$>�0��8arg� G�ׁ@`��Md,��.��N`�u#���~�Y6�
�/��1��πn��(�r��p^��������wK�V4C(���*]Ȃ��M8_;	篤R���!�5�1�U`��8��4��ߚ��ł�)C([�^��ⵙp�E*�X�|�+ZM�����	絤��x��wXB���\��9�V�e]���S4%*�<U��\v'���G&�џ����虈�5��?[�z��G��[rR:O�7�h��l޹6�`]�M��NN�fS1���"OC<���Շ��8��$'G���f�@�A^��[�^���:��t�gHxZ9J6���p�#�R�.�灗J��V�ϴ��|��i�6���I��������mZ�'�+�b�X�~��<�i��X}�{+s���;��D�W{���2��g�+�/��^�JK*�s�#
��m��%e��f��n�qW,�����x_U�=kǨ�U͢P˳g��L�l&�C��X	/�"��r<�fL�'�L��gך1Zm+�>
�K*��9�)j���#�P���g�=c4ĝO.������X���Q[������g����yr��ҏ��43�]g��TEm�芴Nf���9kL���{�������U}<`[�s粈lkJ[>�v�N�cyh��bKcZ�)KL����ɹ �#��X�5�.�PC���N�΃��ݫ�v�˖���u��g�Jxy6�;��!���t��MuZU��v��� ��QRS"�Sz�`)�;9Es��Q��>5bcUv�J�W[�s��|�_
�ԒҪ���~��'�%�ғn˂a�7�8EhN��(�X����.��Q�q˂�k��D��c�C�{�+}0=�/b��Z$�X�L���b3�"f�E���)1S,b�X�L���b3�"f�E���)1S,b�X�L���b3�"f�E���)1S,b�X�L���b3�"f�E���)1S,b�X�L���b3�"f�E���)1S,b�X�L���b3�"f�E���)1S,b�X�L���b3�"f�E���)1S,b�X�L���b3�"f�E���)1S,b�X�L���b3�"f�E���)1S,b�X�L���b3�-�A����Q&��,�	�<O8cW,�Bz�9ϣ>05�?�Ӛ�` ��>�~Ԉ�3�y; )_������ѓV,���	�<���E�8;��������3>�VԈkY��I�.K�G��Y�9�	�.F�zw$9O�%���s~����9���H�l^��KQ6�Y��p�v��F��|�5��e)z{8ɰ���u��[8.��H�ݒ2x��r�N��X����-�s>o�W��J�x�?Ő{Uy��o��Q[���x��P�Å�8�t�*#���?f��?�b�V3��A��ؔǡ��p���208�G��p-j����j,�RJ�<~Pc9��
�d�?
����ғ���+5:�]d&��Wj�N�N%�eƪş��p̵�s�q�_�e�]����)���k��ǀ�
�Yl���W)���K��zj9��޲va"ξ�:zl+J�a7)�,\�L��<��9p��?�U�c��L���k-����W��b/��n��Ԇ�	W���w���8'G��=X�
�����{�s��C�՜OܺD���"?Ӽ��;�ݵ"j?�����6�eh�˰�¹8�<靌qj$�;#ɹ�K��𤶨�S�X>��Y�{�w��Hqt ES"`cU���S�JN�H�yR��~�2����@֧/�;��x��A)?�0���� ���i`?��[�� ��˨A��ځ'�ڜ?/�o���w��|�
\�9< �9�Órq��|�43(r�l�C����b�fs���;�ǀ+QC��Y���m�WK#�Ô�4B���F�K�ȫ�b�@��� / -�w	�Ք������rmP*�q5T��*���	?���fc��>3�{�' ���BC,�fʹV��~�%p#����C�:0Fxr�"���	氺�"��_2�3�I`:    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/buddy_green.png-bfedc100338b2ddd47d287e2c0286427.stex"

[deps]

source_file="res://assets/chararacters/buddy_green.png"
source_md5="c4528aa19c3ddcd0fed29ad83f2e2d2b"

dest_files=[ "res://.import/buddy_green.png-bfedc100338b2ddd47d287e2c0286427.stex" ]
dest_md5="41242cebadee472743731cb60c3f509b"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST�   �           �  PNG �PNG

   IHDR   �   �   Qj�  TIDATx���Ml\W�������v��Ci⸡�vAjY Qb�R�eE� ��(�U�����	���vWX� D�D�"(*q���v�&������Ɨ��ԓ��9�8N<�<?ɋ�y�#���{�(N����c���� ����{�n`;�ljWsB`x��S���W������~S]K��D@�����p.rc� ���p�Y�
�?,��d90�W���Nk���~�Z��tX��*,B�
<A�> ei���.0O��R�I}��K#J��Ǹ1e/1��<��R�R���A����������LCnꉗF����8�h��V*B�������Ix7(K�W�~��@ߪ�*��׏��
����������F����#��W����]�����<��&56@G�6Cs
�!����U�N���.�������^r�W�)�I��Yr�B?��yx�������-���n)�P1�����mܹŽ�������+�O ���}EQ|�{�G������z���$K^I���]���0x2����t�}ay 7�%�_Ep��pw'Ԅ��Y���[�����a�ŸE}X*,��g��ӧ��#�n8��46	�!c��ƀ{�s��+"�,Aim�Oޫ�T��M��Z�L����qW,,_><e{���[�J嫯u���b����Y8݊{�}��T�6��h}R���p�u�
U���%�,�!��:�X��R��	���Pe;�L���|�{x�G�5�T��ZwQy�'�#o��� �;hwݮ��FѶ	���PU3��܋\X"�����W��6��m���a�r����{H�V��:eC�IB϶PU'.��3��:w_6��������-�l׳��*�p��\X��;���I5��v`G��56h��Fלr��ח ����nK�����N�~)X���T�p?�&�ޒf������%mEh
�e�4և*:���}�6V�j��ܔ ����.��w�S	0����o�E�PX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E�1SX�La3�E���z7B�C��V,doLKd}��9˼��B������dzf��#���l�"� �xK�2k��d�~~3���LL�Us��M�W#�@𖌾�V͑J6z)Tq2��\���+k�$�D�W�rpmz$��eãk�(�L#�P�p:w�/���Q�.^{���d-��_a�v�K���y�x���3tf�BU/�rX���>y�r�O��Bφ���#��x�{������I%91����W?u>�/{�<��%�T��I���P�$��܋����PT��Sn#�kv�1����Y`"��p?����������Z�T��,�}���M?��0,���/���W�}���2���(y�
�)�k�p�T�Kp�uMI�bv���m�yx���(>X�x��<m�>��[,���06	�-W> �����?(��-�@x�������kg���4Y��7�؂�>O��@�%g?�3s��g+tm������좻3{�e!���3�>���.x���?+�������-��u�\��+����լ%�[�u�B?5��<��3��<�:���z�fhNA�j�P��(2�R�ı���n[�tƧ��5�͠�b�_7�@ht؇����m�T�E����}E.���O�
��Y�A���~i��A�«�p`� [E�r���<>�+�
�t�<�)��kr�i`/�	����0(P�>K801�[�w�4:@��$��NܝY��bA��n1�Eo�f�k���.�Arݍ������<��

��� vᦪ�,k�n���p; ��r|AKXr�MNQ��8���;�v�	h\�	���4n�0���Wx{l�������2]��    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/buddy_orange.png-633defc68295beb5b03cc018bfc2a3e8.stex"

[deps]

source_file="res://assets/chararacters/buddy_orange.png"
source_md5="5f5650bd19a19a855c6972b4bb624904"

dest_files=[ "res://.import/buddy_orange.png-633defc68295beb5b03cc018bfc2a3e8.stex" ]
dest_md5="783081c78b0d954e8b320ce2b24b467b"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDSTZ             �  PNG �PNG

   IHDR   Z     �^�  hIDATx��رoUU ���<h�+ՒL��4 qaq!,�\tb�o GFu�?@gpS�BX4n���m�,!$T���}����w��/�����缞|s�y�����Y4| �N G�7��A?�5��	�n ׀�G�L.=\ >�/����.��u˚�����sy+m�6��b���/��՝�g�W7�� 穚Mo5`���?S��z1'���n�9�4�#p0��au���;���{����ࢆ��;������w�fǩ��呂߀�M��-84V��`t������n����J��K]:kM[�f[O/|JC䲀鉒Cc;��ec-ki�b��c�a�n�v�n���J`��H�?96Yrx�Fެ ���M��|�?���F���L��x�ɑ����g>�j{�N׎jn���c�Vc��%կc_;uOTAը������~��F4�*������m=Ck�F%/�v�9�U�hO�O����Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��Cb�C�:��!�1t��CJ�I݀n/����zs�'%�X7by}��3���K/��\݈+��MV�̕�L݈�K=L�_��Q���Z7���c���v������>WK�
Щ5��e�-�_Vz�-v��-WJ�!�m��nn.t�w����N���ANe������ �����Y�+�?R���+.�u�ޫN+pw�Kgm�i���������������5�m����p6>^���2C���1�p?��at���ҳ��u�����6���>q��Jׁ�py3T��o�C��w��I��_N�[�ju�Mw�3u�I��TǓ�yn����P5�@�lK��у>N'����p�����p�x4�� ���0�d�    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/foe_pink.png-e60995b6dae118160c60211d1c9844ba.stex"

[deps]

source_file="res://assets/chararacters/foe_pink.png"
source_md5="03c6dc62a6083086bc149be794340df7"

dest_files=[ "res://.import/foe_pink.png-e60995b6dae118160c60211d1c9844ba.stex" ]
dest_md5="8647f53f3fb28e703ad1cc46b24301ae"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       GDSTw   )           �  PNG �PNG

   IHDR   w   )   ��  HIDATx����JA�'kV�UZ��"z���^X[PZ
�Tk�鏓�cL�F��y@q���~̜�Ƈ���h�X�
���Ƭ'Lz��.q�3��r�������S�"�&^���������2m�M�b[�̗��[��1����Mn�S��!��m�פ��'N���2�E���p%},�����ەJ�#.�_p;��q=��w2ت�y=�������[�J�)r�g4ܶ��z��w��m�t��=C�Q���ʧ��G�_�-1@��o[�p�y���@�]�[��*h�wMN�Mk���K��^���T?���hO��R�
�T?˅(�I��T��ۺj�(+�O��v�~n
QF������~.Q������~�
�Ta�*�T	]���:/ْT���s���n]�D�w�v��T}���������v-r��p�q���Ie:4�AG��k@S�y0���'�ҜT����q�����nQ*ũ�����c�so�Y^�ݑ����M&/鉮���������	���rO�E�S��':��T�,�{NW�iN��t��7�UK�ógϮ'�]%�C���f��T��    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/shadow.png-b0af508c613267ebbb0ca50fc671985d.stex"

[deps]

source_file="res://assets/chararacters/shadow.png"
source_md5="c6091db6083623c4c6ab6465e0ebd062"

dest_files=[ "res://.import/shadow.png-b0af508c613267ebbb0ca50fc671985d.stex" ]
dest_md5="08f85be340d072132f2821568d9e6987"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
                     DSIG    �   GDEF���w  ,  �GPOS�D�    atGSUB��  d�  OS/2h��  o�   `cmap�at�  o�  �cvt M� H   �fpgmvd�|   gasp    @   glyfhQt1  {� Yzhead	�|. ��   6hhea� �4   $hmtx70y �X  xloca[~� ��  �maxp�. �    nameM�[ �  cpost�� �  !prep�	�� $   �        �  D  H  J _  a e  g �  � �  � �  � �  � !! #% '+ -K MM O[ ^� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��  	
       "# %% (( +, .I LQ ST VV XX Z[ ]] `e gh jj nn pp rr xx zz ~~ �� �� �� �� �� �� �� ��  +E UU Ya   	+/ 00 1: ;; <? AB EE UU Ya       
 �� DFLT latn      ��    
  4 AZE  @CAT  LCRT  XKAZ  dMOL  pROM  |TAT  �TRK  �  ��      ��      ��      ��      ��      ��      ��      ��      ��  	   kern �kern �kern �kern �kern �kern �kern �kern �kern �kern �markmarkmarkmark*mark6markBmarkNmarkZmarkfmarkrmkmk~mkmk�mkmk�mkmk�mkmk�mkmk�mkmk�mkmk�mkmk�mkmk�                                                                                                                                         	       	       	       	       	       	       	       	       	       	 
  " < D L T \ d l t    f,B   
Jn� ��$^    \    �    )�    .   F�   F�   Hd   H� I�   OO     ����                          ��                          ���t                      ���`����������        ��                ��      ��                        ��    ��          ���� H�   N�N�    ���� H�   N�N�     ( H�    X � � � � � � � � � � � � &,28>DJPV\bhntz������������������(ft����$2p��*hv���$2DRdn������J|�� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� X�� X�� X�� X�� X�� X�� X�� X�� X�� ��~ ��~ ��~ ��~ ��~ ��~ H�~R�~ H��M��O��R��V��Y��Z��]��o��q��w��x��z��|����� H��M��O��R��V��Y��Z��]��o��q��w��x��z��|����� O��V��Z�� O��V��Z�� O��V��Z�� O��V�� H��O��R��V��o��p��q��v 
w��x��z��|��� 
������ H��O��R��V��o��p��q��v 
w��x��z��|��� 
������ O��V��Z�� O��V��Z�� H��M��O��R��V��Y��Z��]��o��q��w��x��z��|����� H��M��O��R��V��Y��Z��]��o��q��w��x��z��|����� H��M��O��R��V��Y��Z��]��o��q��w��x��z��|����� H��M��O��R��V��Y��Z��]��o��q��w��x��z��|����� H��M��O��R��V��Y��Z��]��o��q��w��x��z��|����� O��V��Z�� H��R��v 
� 
 H��R��v 
� 
 O��V��Z�� H��M��O��R��V��Y��Z��]��o��q��w��x��z��|������������������������������������ v��x��|����� O��V��Z�� v��x��|����� Z��[��h�� v��x��|����� H��R�� v��x��|����� O��V��Z��[ 
h 
p��v��x��z��|�������� O��V��Z�~[�~h�~ H��R�� Z�~ H��R��Z 
]��x��|����� H��R��Z 
]��x��|����� H��O��R��V��Z ]��p��v��x��z��|�������� X��H��O��R��V��p��v��x��z��|�������� H��O��R��V��Z��[��]��h�� H��O��R��V��Z��[��]��h�� H�~R�~ B�    
  $ * 0 6 < B H N T ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� B�    " N �|�L�L�V�fl"Dv����0>l�����	4 O��V��Z��[��h��v��x��|���������������������������������������������������&�� H��M��O��R��V��Y��Z��[��]��^��h��y��}������������������������������ k��m��o  q��s�8t��w��y�8z�$}�8��8�����~��~��.��.��.��.��~��~��~��~��.��.��~ m��o��q��w��x��y��{��|��}������������������������������������� H��O��R��V��Z��[��]��h������������ 
� 
� 
������� 
� 
� 
��������������������������&�� %O��V��Z��[ 
^ 
h 
m��p��q��s��v��x��y��z��|��}��������������������������������������������������� 
���
������ O��V��Z��[��h��v��x��|���������������������������������������������������&�� H��O��R��V��Z��[��]��h������������ 
� 
� 
������� 
� 
� 
��������������������������&�� H��M��R��Z 
]��m  o��t��w��x��z��|�������t��t��t��t��t��t������ ^��m��q��y��z��}�������������������������� 1H��K��O��R��V��\��`��k��m  p�tq��r��s�tt��v��x�jy�~z�j{�j|�j}���j��������j��t��~��~��������������~��~��~��~�����������j��������j��������~
�j���� $H��O��R��V��m��p��v��x��z��|�������������������`��`��`��`��������������`��`������������������� 
���
������ O��V��m��q��v��x��y��z��|��}��������������������������������������������������� q��s��t��z�������������`��`��`��`��������������`��`��� m�� %H��O��R��V��m��p��s��v��x��z��|�������������������`��`��`��`��������������`��`������������������� 
���
������ Z   Z��v�������������� Z��]�������������������� Z��o��q��v��w��x��z��|�������������� Z��]��x��|����������������������������� Z  ]��v����������������� Z�~������ Z�t]��v����������������� o��q��w��z��� (��~��~��~� (��~��~��~ Z�������� ]��o��q��w��z�������������������� Z�t]��v����������������� Z��v�������������� o��q��w��x��z��|����� 	O��V��o��q��w��x��z��|����� O��V�� H��M��O��R��V��Y��Z��]��o��q��w��x��z��|����� H��M��O��R��V��Y��Z��]��o��q��w��x��z��|����� 9\   >,@R  $  ��������������������                                                    ����    ��      ��  ������                                                          ��    ��                                                                              ��                                                                ��      �.                                                                         � � �                                    ����     
  ��    ��                ����������                          ���~  ���~    �~��                                                      ����  ������    ��  ����  �� 
                ������                       
        ��      ����    �t                                                                                                                   ��  ����                                                              ��          �j    ����    �t��      ���~�t�j        ���������t�����~                        ��      ��                                          ��         ��    ������  ���`        ��������      ����    ��  ����    ��          ��    ��                  ��                                ��     
    ��    ����    ���`        ��������      �~��    ��  ������              ��                        ��                               5   >�?(    �~                                       � � �                              ��      ������������������               � � �                                 � � �                                      ����                                  ��                                                       (          �� � � �                    �� 
      ��      ��        ��    ��  �� 
����     � � �                             3�   ?�A�    ����                              �j������������                      ��        ��                                                   ��                          ��  ��    ��                        ����  ��                    ��    ������                    �t    ��������  ������              ��        �`       (        �~ 
                                    ��                      �t    ��������          ��      �� ��       
����            ���� 
��                    ��  ����  ��          ��                  ��                       2$   A�A�    ��    ����    �� 2   BLB�    ��������������������                              ������                                      ��  ��  ����  ����                          �$�$�$�8      ���$�t�8�8�8                  ����                                                  ��                          ��                              ��������          ������        ������                        ������        ����                          �t�t�j��              ��                    ������������    ����    ��        ��        ����          ��                     0   AA    ��              ����          ��  ������ /�   2�A$     � � � /�0    � #  " ( . 4 : : @ F L R X ^ d j   �   �    
 �     � � p v | d d d � � d � p ��$*�����0��6��<B��HN��TZ��TZ��`f��lxr�~������� ��   �#   �d   �g   �?   �   �# �`# ��# �Q# �8# �:# �;# �x# �# ��# �E# �Z# �,# ��# �#   # �# �# ��# ��# ��B �2B �g 4 �   � A   M# >� �   P   P �   �  �   8  �   L K   K� K O   O �   E� �      -�-�   � % � � � � � P � � � � �      V  �  �  �  � �  �  � D J   & ,    2 8  >   ����	�	��	��	�	�	�	���	�	�	���	���	�	���	�	���	�	�	�	�	�	�	� 	�	�	�	�&	�	�	�	�&	�	�	�	�,	�	�	�	�82	�	�	�>2	�D	�J	�	�P	�\V	�bnthz�	��	�	��	��	�	��	���	�	�	��	�	�	�	��	�	��	��	�	�����	�	�	��	�	��	��	�	��	��	�	��	� 	�	����	�	����	�	��	�	�	�bnthz	�	���	�	� 	�	�	�	�82	�	�	�
	�P	�\V	��	��	�	�	�"	�	�"	�����	�����	�(4�.	����	�	�	�	�	�	�����	����	�	���:	�	�@	�F	�	���	�	�	�	�L	�	�	�	�R	�	�	�X	�	�	�	�^	�	�	�	�d	�	�bnjhzbnthz	�	�p	�	�	�	�v	�	�	�	�|	�	�����	�	�	���	�	�	��	�	�bnthz�	��	�	����	�	�	�	���	�	�	���	��	��	�	����	�	����	�	����	�	�	�	��	�	��	��	�	����	� ���	� ��	� 	�	�	�	�	�	��$�*�	��	�	�0<B6	�H	�N	�	��	�T	�	�	�	�Z	�	�	�	�Z	�	�`	�f	�	�	�	�rl	�	�	�x	�	�~	��	�	�H	�N	�	��	��	�	����	�	����	�	��	��	�	�������$�*	�	���	�	�	�r�	��	��	�	�	�	���	�H	�N	�	�	�	�	��	�	�	�rl	�	�	�rl	��	�			�		�			 	�	��	�	�	�	�rl	����	�	���	&	�	�	,�	2	�	����	�	�	8	>	D	�	�	�	�	J	�	��	�	P	�	���	V	� ��	\	� �$	&*�$�*	�	�	b	�	�	�	�	h	�	�	�	�	n	�	�	�	�	tl	�	�	���	�	�	�	z	�	���	�	�	�	�	�	�	�	�	�	�r�	� ��   �#   �d   �g   �?   �   �g 4 �# �`# ��# �Q# �8# �:# �;# �x# �# ��# �E# �Z# �,# ��# �#   # �# �# ��# ��# ��B �2B �K �# `   y ( ` j   j  �� k �� r   v 
 � T� ��  S   S � �� &� n �� �   � �   �Y � �   �� � 
 � ��  �   8 �   � K   K� K _ f   f t   r8 t 
 w � X   X R    � 
  �  �� 9   � �� < O   O O �   ��  � `� �   � � � S� �� �� �� _� _� �� w� �� �   � _ 
 R#  # D� O� B   � ] K# � K� �#    # U    
 U# # #�  # P� R � 1 � t    ���  ` 
 t# A   M# �# #    # ! � "# �#    #    -#  �    � 
  ��  ��  ��  �� B   B � 1 B# �  � .#  � � �# %�� V    ��  �  �    �  x  R� '   '# +    �� B# �� � U� U� � � C� "� �� ��� `# �� l   l#      #�$R   � % f l r x ~ � � � � � � � � � � � �  <  B  H  N `  T  Z � � � � � � � � � � � � � *`fl��r�x��~��������������������������������������������������� ��&�,��`fl��~�������������������� ����2���8����>����D����J����P��Vbh\nt��z�������������P���������P�����������������Vbh\n�������>����D����J�� ��   �#   �d   �g   �?   �   �g 4 �# �`# ��# �Q# �8# �:# �;# �x# �# ��# �E# �Z# �,# ��# �#   # �# �# ��# ��# ��B �2B �K �# `   y ( ` j   j r   v 
 � s   s �   �Y � �   �� � 
 � ��  �    � 
  � N   N �   � �   � 8 K   K� K O   O f   f  �� O� S' ;# A#  �# R   R � 1 H# � t    ���  ` 
 t# M# �#  �� M�      P ^   � % r x ~ � � � � � � � � � � � � � �  H  N  T  Z l  `  f � � � � � � � � � � � � �xlrx��lr~��lr���lr����r���lr���lr���lr���lr���lr����r���lr���lr���lr���lr���lr����rx��lr���lr���lr���lr���lrx��lr���lr���lr����������������������� ��&����,���2��8�D>�8�D>�8�J>�8�D>�PV\��PVb��PVh��PVn��PVt��PVz���Vt��PV���PV���PV���PV���PV���PV����V\��PV���PV���PVn��PV���PV\��PV������������������� ����,��������2�����������������������
����������������"����(��.�����4����:����@����F��������L����R����X��^�d��j�d��p�|v�p��v�p�|v���|v�p�|v��������������������������������������������������������������� ������������������������$���������*����0�������������������*����0����6����<����B����H�������������������6����N����T�������Z�`��Z�f��Z�l��r�`��Z�x��Z�l��~����~����~���������~���������p����p����p���������������������������������������������������������������������������������������������������������������� �&��,�2��,�8��,�>��,�D��,�J��P�V��\�b��\�h��\�n��\�t��z�b��\����\����\����\����������������������������������������������������������������������������������������������������
���������������������"���������
����h����(��.�4��.�:��@LRFX^�d��^�j��^�p��v�d��^�|��^����l����l����l��������������������������������������������������������������������������������� ����������������������$�*��0����0����0���0����0�6��0�<��B�NH�B�NH�B�TH�Z`f��Z`l��Z`r��Z`x��Z`~��Z`���Z`l��Z`f���`f��Z`���Z`���Z`|���`���Z`���Z`f��Z`������������������������������������������������,����������������� ���,�&2�,�&2�,�&2�,�&2�,�&2�,�&2�,�&2�,�&2�,�&2�,&2�,
&2�,8&2�,>&2�,�&2�,&2�,&2�,�&2�,�&2�,�&2�,&2�,&2�,(&2�,D&2�,&2�,"&2�,�&2JV\PbJVhPb�,(&2�,n&2@z�t�l������������������������������������������������������������������������������������������
�
�
�
�
"�
(�
.�
4�
�
�
(�
.�
4�
 �
:�
�
@�
�
"�
 �
F�L��R�X��R�^��R�d��R�j��R�p��v�|����L�������������������L������������������������������������������ ��   �#   �d   �g   �?   �   �g 4 �# �`# ��# �Q# �8# �:# �;# �x# �# ��# �E# �Z# �,# ��# �#   # �# �# ��# ��# ��B �2B �K �# `   y ( ` �� `� `� `�  `� `� `� �� �� `� �� `) `� .� j� `� `� �� c� �   � �� j   j �   � �� �� �� )� �� �    �� � �� r   v 
 � �� �� �� �� �� r�  �� �� �� �) �� �� T� �� �� �� 9   9 �   �� �� �   �Y � �  �    � 
  �  ��  ��  �  �)  ��  ��  ��   f�  ��  ��  ��  �� � B� N   N R� K    ��  � ~  �� O� �   � �   � �� �� �� �� �   �� � 
 � �� � �� 5� �� ��  �� �� �� �) �� �� �� �� �� �� �� �� �� �~ 8 \   \ �� \� `� \) X   X �� X� X� �� \� K� K K� K� �    F � � �� �� � �) �� ��  u� �� �� �� �� �� o   o �   � 	� =� �� �� f   f O   O �� �� O� O�  � Y� O� Y� s   s s� s� R   _ 
 R# �� R� R� R�  R� R R� �� {� R� z� R? R�  � \ R R� \� '   '# [� t    �z  ` ~#   A   M# �� M A� �� M� �z _ `# � B   � ] B# v� B� B �� k� B�  B� j� B� B? B� B� � L B� L� +    �� +#  �    � O� R� R� V    ��  �  ��  �    � 
  ��  �#  ��  ��  ��  �?  ��   e�  � �� ��  ��  ��  ��  ��  �#  ��     � �  �    �  x   �� �# U   U# �� U Y� _� R � 1 � R� R� �� f�� f � , f � �� \�  ���  ` 
 t# ��� ��  �   # O�   �� ?    # I�  � }� �  �    �N  �� {  ��  ��  
 # U� �� U? U� U�  #� _ �� U�    # l   l# �� �� l� :�    # �   F� z� � ��   ��  � �    # J�  �      >>   &    (   .   4   :   @   F  2 8 > D J P ��   �#   �d   �g   �?   �   ���  �#�C �h� �g� �?�� ��H ��   v    �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �  � � � � � � � � � � � � � � � � �# �`# ��# �Q# �8# �:# �;# �x# �# ��# �E# �Z# �,# ��# �#   # �# �# ��# ��# �� �`� �u� ��� �i� ��� �: �;� �x� �� ��� �O �Z? �, ��� �� ��            
 �K �# <�   v    |   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �  � � � � � � � � �# �`# ��# �Q# �8# �:# �;# �x# �# ��# �E# �Z# �,# ��# �#   # �# �# ��# ��# �,� �,� �, �� �� �,� �� ��  �������  �������  ��   & &   ( (  h �  � �   � � ! � � "PU +�� 1�� 2�� 4�� 6�� 8�� :�� =�� ?�� A�� C�� D�� F�� I�� J�� K�� M�� N�� P�� S U&& W  
��������  "HIJMOQRVXYZ[]^ehmpqsvxyz|}��������  "  H   J � E � � � � � ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ��� ����� 	  "���������������������������������&   � �   �
 %+ D-[ U^k �r� ��� ��� ��� ��� ��� ��
 � � � � � � � �!! �') �++ �-9 �;B �DF �ss �uu ��� ��� �  ���  HJKLMOQRUVYZ[\]^_`adefh  tw|   �  +/  1: <E UU Ya   ������������  +E  UU Ya   ��  �� �� �� �� �� �� �� �� ��  �� !�� "�� %�� B�� D O	
 V X Y _   `"# a%% c(( d+, e.G g  *HILMNOPQSTVXZ[]`abcdeghjnprxz~������������    H   J _ E a e [ g � ` � �  � � � � � � � �!!#%'+-KMM<O[=^�J  <?  AB   +/  1: EE UU Ya   +/  1: EE   0;  ;  Za   � 
                �� 
�� �� 	�� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��      �� ��  �    [         %  & &  ' '  ( (  ) =  > >  ? D  E H  J V  W X  Y Z  [ `  a g  h �  � �  � � 	 � �  � � 
 � �  � �  � �  � �  � �  � �  � �  � �  � � �� �� �� �� �� �� �� �� �� �� 	�� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� 	�� ��       �      %  ? D  W X  h �  � �  � �  � �  � �  � �  � �  � �  � �  � �  �         '- .L MM PU V[ ^b  cw x} 
~~ � !�� "�� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �       
 		               !! 
"# $$ &' )* ++ -- 
00 22 45 78 99 ;< => ?A 
CD FF 
ac dd ee ff ss zz �� #�� �� �� �� �� �� �� �� 	�� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� 

    &&  � I                    	 	   
                                                                                          
  e      %  ? D  h �  � �  � �  � �  � �  � �  � � 	 � � 
 �  
 
    '- .L 
MM PU V[ x} ~~ �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� 
�� �� 
�� �� �   
  
   
		     
      
!! "# $$ &' )* ++ 
-- 00 22 45 
78 
99 => 
?A CD FF ac dd ee ff ss zz �� �� �� �� 
�� �� 
�� �� ��    P � �  � �  � �  � �  � �  � �  � �      
    !& '+ -- .K LL MN OO PU 	V[ 
^b ck rw x} ~~ � �� �� �� �� �� �� �� �� �� �� �� �        		 

     
     !! '( )) -- ./ 00 11 22 33 45 67 88 99 ;< => ?A BB DD EE FF ss uu �� 
  S   %  ? D  h �  � �  � �  � �  � � 
 � �  �    .L x} ~~ � �� �� 
�� �� �� �� �� 
�� �� �� �� �� 
�� �� 
�� �� �� 
�� �� 
�� �� �� �� ��     		       !! $$ ++ -- 22 45 78 99 => ?A FF �� �� �� �� 	�� 	�� �� �� 	�� �� �� 	�� �� �� 	�� �� �� �� �� �� ��      �� ��   $   %  ? D  h �  � �  � �  � �  �   .L �� �� �� �� �� �� �� �� �� �� ��        ++ 45 78 => �� �� �� �� �� ��   J                          	 
             
    
 H F                                                                
               	                   ww ||  j #                                                         a           
d� DFLT latn ,     �� 
   
   ( : D N X b 4 AZE  NCAT  jCRT  �KAZ  �MOL  �ROM  �TAT  �TRK   �� 
     ) ; E O Y c  ��       * 2 < F P Z d  ��     ! + 3 = G Q [ e  ��     " , 4 > H R \ f  ��     # - 5 ? I S ] g  ��     $ . 6 @ J T ^ h  ��     % / 7 A K U _ i  ��     & 0 8 B L V ` j  ��  	   ' 1 9 C M W a k laalt�aalt�aalt�aalt�aalt�aalt�aalt�aalt�aalt�aalt�ccmp�ccmp�ccmp�ccmp�ccmp�ccmpccmpccmpccmpccmp$dnom,dnom2dnom8dnom>dnomDdnomJdnomPdnomVdnom\dnombfrachfracnfractfraczfrac�frac�frac�frac�frac�frac�liga�liga�liga�liga�liga�liga�liga�liga�liga�liga�locl�locl�locl�locl�locl�locl�locllocl
numrnumrnumrnumr"numr(numr.numr4numr:numr@numrFordnLordnTordn\ordndordnlordntordn|ordn�ordn�ordn�salt�salt�salt�salt�salt�salt�salt�salt�salt�salt�ss01�ss01�ss01�ss01�ss01�ss01�ss01�ss01ss01ss01supssupssups sups&sups,sups2sups8sups>supsDsupsJ                                                                                                                                                                                                                                                                   	    
                                                                                                                                                                                                                    0 8 @ N X ` j r z � � � � � � � � � � � � � �    �    �     � � � �     �    
    Pd    n    t    z    x    v    t    r    p    n    ��    �    �    �    �            L    Z b        H fP      b b        V P          > Z      H ,       <  
 ,  
   _ -^ .a 5` 7  
   [ -Z .] 5\ 7  � � �      � � �     �  � �[b �  � �[b �  �  �  �  �  �  �   . D P    � ��� ��� ��   � ��� ��  � ��  � ��  l v        Z l       b    $ .� T �� R  R       " (� � !� � � ! " W  W  �� � ���[bG��������W  �     �����W    +/  1: UU   ;=  ?D   V    �  �� �Hi  W  13  !  �   [   � �Ya    ��    ����  ��      �   h.   b  ��  �    �    h � � �.Ya���������V    h �.�V ��   �X   K�X  ^ 2H             �           CYRE �  �q�    �    #                        �   	 �                                             �����������������������������     & * > ? E H W Y [ a b h � � � � � � � � � � ����&�O � � � � �!'(.MOPV^cxy~���      # + g r � � � � � � � � � � � �-/<18Jdjfh!���\HM�  �����
y��_ �H��	������   � �L�������  � �������#���  .  5 8 J L N Q i k   v � � �LTQINSKPRJ 	z   � �  \    / ~H������-37Y����$(.16Du~�������/5:_cku��������������   " & 0 3 : < > D t � � � � � � � � �!!!!"!&!.!^!�!�!�"""""""")"+"H"a"e���        0 �J�������*07Y���� #&.15Dt~������� 06;bjr��������������     & 0 2 9 < > D t � � � � � � � � �!!!!"!&!.![!�!�!�"""""""")"+"H"`"d��� ��        �L              ���� �   ~       ) (        ���W  ��  ��    ��                                              ��        �������t�u�\�+�8  �@�E          ����������I�  �m�	� ��  ��    �����            � ���    HJLNP��      �  ���                      �  �  ��   (0Xbj����������� 6<  D��                  �    ��                 �        �  ��      ���   �����������������������������     & * > ? E H W Y [ a b h � � � � � � � � � � ����&�O � � � � �!'(.MOPV^cxy~��� ������ M���Q���H
�K�������        # 8 + . 5 Q J L N ' g v i k � r� � � � � � � �\ � � � � � � � � � � � � �-</1J8�Hjdfh�N�  �  �  � ! � $ � % � " � ( � ) � ; � , � 6 � < � - � B @ D C G
 F	 V T K U O I X Z  \" ^$ ]# _% `& c) e+ d* f, �F j0 ~D �L �Q �S �R �W �Z �Y �X �a �` �_ �w �t �e �v �r �u �{ �� � �� �� ��] x> �l A �G  �  � �I  �  � 4 � : � M S q7 E �T �U �g �s �[ �b s9 �K t: ��LJINSRTP-.1563,+74/2VX`�abcef�YZ[\]^_gh�����jklmnopqrstuvwxyz{|}~��������i������������������������������������������������������������� 	
�������� �!���"�#�$�%�&�'�(�)�*�+�,�-�.�/�0��2�31�4�5�6�7�8�9�:�;�<�=�>�?�@�A�B�C�D�E�F �} �z �|  �  �  �  �  �  �  �  � 	 � 
 �  �  � 7 � 9 � = � / � 1 � 2 � 3 � 0 � R P u; w= l2 n4 o5 p6 m3 y? {A |B }C z@ �i �k �m �o �p �q �n �� �� �� �������������!#������������������	������    %  P   7 C @
<8-! 0+ #!"&5463!!!&#"#"&54632#"&5467665#"&54638�*��J��j) ),ZHAT--";�G��>x�(,)FVP?3C$
$<*$��      �   +@(J  f =K  > L&##	+$#"&''!#"&547632'�8��9"$���<	��
�##�_�d����   �) "   . � ���3+  ��   �� "   3% � ���3+  ��   �� "    '3% �.� ���3+����3+ �� � �� "    '3% �<�   ���3+  ��   �� "    '3% �-�� ���3+����3+ ��   � "    '3% �7� ���3+����3+ ��   �� "    '3& �EG� ���3+����3+ ��   �� "   1& � ���3+  ��   �� "    '1& �.wz ���3+��z�3+ �� � �� "    '1& �<�   ���3+  ��   �� "    '1& �-!z ���3+��z�3+ ��   �� "    '1+ �7�z ���3+��z�3+ ��   �� "    '1+ �E?� ���3+����3+ ��   �) "   8 � ���3+  ��   �� "   +I � ���3+  �� � � "    <�  ��   �) "   -� � ���3+  ��   �W "   7 � ���3+  ��   �� "   94 � ���3+  ��   �� "   6p � ���3+    �
� 5 8 }@7')JK�)PX@'~ f =K >K  _   B L@$~ f    c =K >LY@66  6868 5 4&#&		+#"&&5476761''!#"&547632327763�&&!:"4	8��9"$@

я�k"9";+	
��
�##�_
-.	

md��   ��   � "   4� � ���3+  ��   �� "    '4� �.� ���3+����3+ ��   �� "   EF � ���3+      � ) , G@D+J  e
 e ] =K	 _  > L**  *,*, ) ($!$6"4	+$#!"&55##"&54763!2#!32##!%��d�V�#�����h�0�`x� � ���0�� ��   �) "   .0 � ���3+    d  �   ( C@@J e  ]   =K]>L!   '% (!(  5		+2&546332#!2654&##2654&##��Ch;5.DNAuJ���;GG;��FVUG��5_<1N`JDl<�:779���IC>B��  @��� ( 6@3 ~ |  _   EK _FL   ( '"&#'&	+&&546632#"'&&#"327632#W�ff�kLo9)N>N�MM�N`Xl�
j�on�k(.	#R�ST�RBW   �� @���) "    .p � ���3+  �� @���� "    2� � ���3+    @�� H J@G	J   ~   | | | _ EK ` BLGE?=:81/$$- 	+$32#"&5463232654&'&&5477.546632#"'&&#"327�Xm40%C,;N_�Wf�kLo9)N>N�MM�N`X�H.&02"n�fn�k(.	#R�ST�RB �� @���� "    1� � ���3+  �� @���� "    ,a � ���3+    d  �   ,@)  ]   =K]>L    5	+2&546332##726654&&##��q�bb�q��S�II�S��d�qq�d\L�VV�L��    ��  �  - <@9g ]=K	 ]   > L  -,+)%#"   $#6
	+ ##"&5#"&5463346336654&&##32##3��bb�q�22�S�II�S����d�qq�d&%�OL�VV�L��   �� d  �� " &  2N � ���3+  ����  �  '    d  �   /@,  e  ]   =K ]>L     !$!$5	+2&5463!2#!!2#!!2#!���p����<���  �� d  �) " *  .5 � ���3+  �� d  �� " *  3K � ���3+  �� d  �� " *  2L � ���3+  �� d  �� " *  1L � ���3+  �� d  �� " *   '1L �.�z ���3+��z�3+ �� d� �� " *   '1L �<�   ���3+  �� d  �� " *   '1L �-Gz ���3+��z�3+ �� d  �� " *   '1Q �7�z ���3+��z�3+ �� d  �� " *   '1Q �Ee� ���3+����3+ �� d  �) " *  8, � ���3+  �� d  �� " *  +o � ���3+  �� d  �� " *  ,& � ���3+  �� d� � " *   <�  �� d  �) " *  -� � ���3+  �� d  �W " *  7A � ���3+  �� d  �� " *  9Z � ���3+  �� d  �� " *  6� � ���3+    d��� @ G@D1J	~  e    c ] =K ] >L   @ ?!$!$5)&
	+#"&&5476767!"&5463!2#!!2#!!2327763�&&!:"4	�A��p���@

�"9";+���-.	

�� d  �� " *  5z � ���3+    %  P  )@&  e  ]   =K>L    $!$5	+2&5463!2#!!2#!#C��p������  @��� 0 >@;'J ~ e _ EK  _   F L   0 ."&#'&&	+ #"&&546632#"'&&#"3275#"&54633�i�k�ff�kLo9)N>N�MM�NTM����Wj�on�k(.	#R�ST�R2� �� @���� " ?  3� � ���3+  �� @���� " ?  2� � ���3+  �� @���� " ?  1� � ���3+  �� @�	� " ?   >I  �� @���� " ?  ,a � ���3+    d    '@$  e  =K>L    %#%	+2&54632!4632#"&5!#���0����[*��       P 1 5 ;@8	
  g  e=K>L  5432 1 0##$###$	+ ###"&5!#"&5#"&5463354632!546323!!5�0���0�|��*��]]]]F| �� d  � " E  1z � ���3+    d   �  @   =K>L    %	+2&54632#���[     d��'  ) 9@6 ~ _  =K _FL  )("   %	+&54632#&&5463232654632#�a_6;/<M>mF"��}��.R4&0R@��Fm= �� d  .) " H  .G � ���3+  ����  :� " H  3] � ���3+  ����  :� " H  1^ � ���3+  �� 
  &) " H  8> � ���3+  ����  C� " H  +� � ���3+  �� V   �� " H  ,8 � ���3+  �� V�  � " H   <  ��    �) " H  - � � ���3+  �� 6  #W " H  7S � ���3+  ����  :� " H  9l � ���3+  ����  H� " H  6� � ���3+    �� . ,@)J~    c =L   . -/&	+#"&&5476767&&54632327763�&&!:"4	@

�"9";+��[-.	

   ����  @� " H  E~ � ���3+    -��  (@%   ~ =K _FL    %$%	+&&5463232654632#�m=L<<M>mF
=mF@RR@��Fm= �� -��|� " W  1� � ���3+    d  n " &@#
 J  =K>L   " !*&%	+2&546326632#"'#�K�
�H���K	� ��WH� �� d�	n " Y   >�    d  i  @   =K ^>L    #%	+2&54632!2#!�j�b����� d  i) " [  .F � ���3+  �� d  i " [   03  �� d�	i " [   >�  �� d  i " [   �^      v & 9@6 J   ~   | =K ^>L   & $&%(%	+2&55#"&547746327632!2#!�Vz�j�b�V;�u ���  d  r ! .@+
J   ~=K  > L   !  %%%%	+ #"&5#"'#"&5463263T�!�)!�[�������S   d  �  $@!
 J  =K>L    %&%	+2&546324632#"&'#���L���#�[		D��  �� d  �) " b  .N � ���3+  �� d  �� " b  2e � ���3+  �� d�	� " b   >;    d��� 2 h�/JK�PX@  ~ _=K  _  F L@$ ~ _=K >K  _   F LY@   2 1%%&$&&	+ #"&'&546323266554&#"#"&54632663�D{u=`	06>a]Sd%[>S�`O��:8		>~dOnwXF�%�234  �� d  �� " b  5� � ���3+    @��Z   ,@)  _   EK_FL    &	+&&546632#>54&&#"3Y�dd�ts�ee�tU�LL�VV�LL�U
f�tt�ff�tt�f^Q�VV�PP�VV�Q  �� @��Z) " h  .| � ���3+  �� @��Z� " h  3� � ���3+  �� @��Z� " h  1� � ���3+  �� @��Z� " h   '1� �.�z ���3+��z�3+ �� @� Z� " h   '1� �<A   ���3+  �� @��Z� " h   '1� �-�z ���3+��z�3+ �� @��Z� " h   '1� �7�z ���3+��z�3+ �� @��Z� " h   '1� �E�� ���3+����3+ �� @��Z) " h  8s � ���3+  �� @��Z� " h  +� � ���3+  �� @��Z� " h   '+� �6�� ���3+����3+ �� @��Z� " h   ',m �6�� ���3+����3+ �� @� Z " h   <A  �� @��Z) " h  -& � ���3+  �� @��ZW " h  7� � ���3+    @��Zn  / :@7J � ~ _ EK _   F L   / .-%!&%	+ #"&&5466323265546326654&&#"3'3e�tt�dd�tqY++$׈LL�VV�LL�Ud�Qt�ff�tt�f1& 1N��Q�VV�PP�VV�Q�� @��Z) " x  .| � ���3+  �� @� Zn " x   <A  �� @��Z) " x  -& � ���3+  �� @��ZW " x  7� � ���3+  �� @��Z� " x  5� � ���3+  �� @��Z) " h  /� � ���3+  �� @��Z� " h  9� � ���3+  �� @��Z� " h  6� � ���3+    @��Z . > :@7"J~   |    d _ EL///>/=*/&$	+ 3277632#"&&547677.546632 6654&&#"3Z[�j
@

&&!:"4	i�Yd�ts�e�ȈLL�VV�LL�U�j-.	

"9";+		j�mt�ff�t��Q�VV�PP�VV�Q     :��Z $ / 9 n@76,+$	JIK�PX@_EK _  F L@! =K_ EK >K _   F LY@00%%0908%/%.$*$%	+ #"&'#"&5477&5466327632$&&#6654&'3--e�tQ�4PRTd�tO�4M	N�u�L�'b7U�L!�RPtY�Mt�f3/PRj�t�f1-L	N,P�V6a'� #��Q�V8b(�RG�� :��Z) " �  .| � ���3+  �� @��Z� " h  5� � ���3+  �� @��Z~ " h   '5� �6�� ���3+����3+   @��\ ) 6K�PX@
0/ J@
0	/JYK�PX@"  e	_EK
 _  > LK�PX@6  e 		_EK _EK
 _  >K  _  > LK�PX@4  e 		_EK _EK
 ]   >K _ FL@2  e 		_ EK ] =K
 ]   >K _ FLYYY@  31., ) ($!$A&"4	+$#!"#"&&5466323!2#!!2#!!$327&#"@�c6H*t�dd�t-JB�����r�{L�UJ88JV�L`f�tt�f��ьQ
Q
P�V    d  `   0@- e  ]   =K>L    &5	+2&546332###2654&##��JuAAuJ��DXXD��BvKIr@�oWDG\��     d  `  ! 4@1 e   e =K >L  !   %#&	+ ###"&546323654&##3�uAAuJ��DXXD��{:jECf8}�^��L;>Q��     @��Z  4 l@&	 JK�PX@ ~ _ EK `  > L@# ~ _ EK   >K` FLY@43'.&#%	+%#"''#"&&5466327'&547632654&&#"3%)d�t�dd�ts�e/,�F`c?L�VV�LL�UV)Cf�tt�ff�tO�4(-`dSpV�PP�VV�Q     d  i  & 2@/J  e ] =K  > L%#&&5#"#	+$#"'###"&5463322654&##i���JuAH>���DXXD�@��>pHGn�=M=BT��   �� d  i) " �  . � ���3+  �� d  i� " �  2" � ���3+  �� d�	i " �   >�  �� d  i) " �  8 � ���3+  �� d  i� " �  90 � ���3+    9��u 8 6@3   ~   | _ EK _FL   8 7$'+$	+&'&546763232654&'&&546632#"&'&&#"#��j@KhXZ|�IOVv)Q>L^Tlx�N�J
XG'6E<9Q	y[@]1FA-/;84FycHg3�� 9��u) " �  . � ���3+  �� 9��u� " �  2 � ���3+    9�u W K@HJ ~ | | | _ EK  `   B LOMIG@>31-,$$)	+$#"&5463232654&'&&5477&&'&546763232654&'&&546632#"&'&&#"u�a40%C,;NT�j@KhXZ|�IOVv)Q>L^Tlx�{s.&02"
T>'6E<9Q	y[@]1FA-/;84Fyc �� 9��u� " �  1 � ���3+  �� 9�	u " �   >�    d  � ; l� JK�PX@  g _ =K _  > L@' ~ g _ =K  _  > LY@   ; ;&&'4#&		+ #"'&&5463232654&##"&5477&&#"#"&546632`9AuJA&


'FVUG+
�D1,I)DxI?k>j�7cADl<IC>B�'D)��Do?)A"o   @��  ( ?@< ~  e _EK _   F L     ( '$#  "#%&		+ #"&&5463!.#"#"'&54763667!3��g\�bi�a&+S�NaSj�klE��JwGh�so�gd�k#MvA8
T�>CvKJvD    �  !@  ]=K >L    ##$	+ ###"&5#"&5463!k����y       � ( /@,e  ]=K >L   ( &!$##$!$		+ ##32###"&5#"&546335#"&5463!k�llnn����&� ��   �� " �  2 � ���3+    �� 7 9@6,
 J   ~  ]=K _ BL   7 5.$$-$	+ ###"&5463232654&'&&5477&5#"&5463!k�40%C,;N
���
".&02"y  �� �	� " �   >�    d���  !@  =K _FL    &&&	+&&54632326654632#L�S9eA>b7Q�\G~Q��-5T//T5��-PG   �� d���) " �  .V � ���3+  �� d���� " �  3l � ���3+  �� d���� " �  1m � ���3+  �� d���) " �  8M � ���3+  �� d���� " �  +� � ���3+  �� d� � " �   <  �� d���) " �  -  � ���3+  �� d���W " �  7b � ���3+    d��l� + -@*�   _=K _ FL   + *6&&$	+ #"&&546323266546332655463TK8Q�\_�S9eA>b70� BY�SPGG~Q��-5T//T5�&  �� d��l) " �  .V � ���3+  �� d� l� " �   <  �� d��l) " �  -  � ���3+  �� d��lW " �  7b � ���3+  �� d��l� " �  5� � ���3+  �� d���) " �  /o � ���3+  �� d���� " �  9{ � ���3+  �� d���� " �  6� � ���3+    d�(� 8 bK�PX@$   ~=K _ FK   _ BL@!   ~    c=K _ FLY@   8 7&&&$	+ 3277632#"&&547.5463232665463�^Q9

&&!:"]�R9eA>b7�-W�!()	

"9")"H}P��-5T//T5� �� d��� " �  4/ � ���3+  �� d���� " �  5� � ���3+      �  !@ J=K   > L    &&	+ #"'&54632663���" ��#� �Y!!���\  	  � ) uK�PX�% J�% JYK�PX@=K  > LK�2PX@=K =K  > L@   ~=K  > LYY@   ) (&'&'	+ #"&'#"&'&546326632663����������e@�����4��C  �� 	  �) " �  .� � ���3+  �� 	  �� " �  1� � ���3+  �� 	  �� " �  +� � ���3+  �� 	  �) " �  -. � ���3+    2  � #  @# J=K  > L$*$$	+%#"'#"&547&54632632�����
���T-��61��*��      �  #@  J=K   > L    ((	+ #"&55&5463263�
����
���a�����w   ��   �) " �  .� � ���3+  ��   �� " �  1 � ���3+  ��   �� " �  +8 � ���3+  �� � � " �   <�  ��   �) " �  -� � ���3+  ��   �W " �  7
 � ���3+  ��   �� " �  6_ � ���3+  ��   �� " �  5C � ���3+    7  �  %@"   ] =K ]>L    %4%	+2&547!"&7&63!2!2#!S
��J���� ]�� �� 7  �) " �  ." � ���3+  �� 7  �� " �  29 � ���3+  �� 7  �� " �  , � ���3+    >��e'  & 4@1J _HK _  > L  &%  %&	+ #"&55#"&&546636654&&#"3�}I#d:HuCHM2Q..Q22Q//Q2'IN�%+0HNNI�/1U55V11V55U1   �� >��e? " �   .  �� >��e " �   3  �� >��e� " �   #3  . � ����3+  �� >� e " �   #3   <�  �� >��e� " �   #3  -� � ����3+  �� >��e " �   #3  7 � ����3+  �� >��e� " �   #3  E9 � ����3+  �� >��e " �   1  �� >��e� " �   #1  .i � ����3+  �� >� e " �   #1   <�  �� >��e� " �   #1  - � ����3+  �� >��e� " �   #1  7z � ����3+  �� >��e� " �   #1  E1 � ����3+  �� >��e? " �   8�  �� >��e� " �   +;  �� >� e' " �   <�  �� >��e? " �   -�  �� >��em " �   7  �� >��e " �   9&  �� >��e� " �   6b    >���' : J X@U).J ~	~    d _ HK
_>L;;  ;J;ICA : 9'&%*&	+#"&&5476767#"&55#"&&546632632327763$6654&&#"3�&&!:"4	

#d:HuCHMM}I@

��Q..Q22Q//Q2�"9";+%+0HNNIIN�-.	

�1U55V11V55U1   �� >��e! " �   4�  �� >��e " �   #4�  . � ��̰3+  �� >��e� " �   5F    >��' 5 < L ^@[+	  J   ~ e
		_HK  _IL==66  =L=KEC6<6;98 5 4$&%%'##	+%3267632#"&'#"&55#"&&5466326632#$!&&# 6654&&#"3eiKA#e-9b%#d:HuCHMIy%!tHMp<��[M	RB�nQ..Q22Q//Q2�EV"&"%+0HNNIB::BDzO�PCCP��1U55V11V55U1   �� >��? " �   .�    Z���  & 8@5J =K _HK _   I L  &%  &&	+ #"&&546326636654&&#"3�uCHMM}I#d:Q//Q22Q..Q2'HNNIIN���+0�/1V55U11U55V1   >��' ' 6@3 ~ |  _   HK _IL   ' &"%#&&	+&&546632#"'&&#"327632#~GE|NvN

;&M`-Q4D*HlHNPGZgU6U0#	C  �� >��? " �   .�  �� >�� " �   2    >�' G K@HJ ~ | | | _ HK  `   B LFDB@;964.,$$,	+$#"&5463232654&'&&5477.546632#"'&&#"3276327P40%C,;NAe7E|NvN

;&M`-Q4D*n4".&02"LsEPGZgU6U0#	   �� >�� " �   1  �� >��  " �   ,�    >��e  & 8@5J=K _ HK _   I L  &%  &&	+ #"&&5466324636654&&#"3II}MMHCuH:d#�Q..Q22Q//Q2�8NIINNH0+�I1V55U11U55V1   >��[A 6 D L@I/2(!J � ~  h EK _   I L777D7C?=-(&#	+%#"&&546632.'#"'&5477&'&54763276326654&&#"3[G}OMyD?pGHp&OF%	!*0	Zf,�Q--Q3J^^J�KuBBuKKuAB;RjJC

;4/+d�_��+M00L+]JJ^   �� >��. " �   0`    >��� ( 8 F@CJ	  g =K _ HK
_ IL))  )8)71/ ( '#$#&$$	+ ###"&&5466325#"&54633546323 6654&&#"3�&I}MMHCuH:d#��&��Q..Q22Q//Q2���NIINNH0+�))��1V55U11U55V1     >��E'   ' 8@5   ~    e_ HK _ IL!!!'!&&'#"!	+ #!3267632#"&&546632$!&&#E��iLA"e.R�IE{NMp<��[M	RBFV
"G~PPGDzO�PCCP�� >��E? " �   .�  �� >��E " �   3  �� >��E " �   2  �� >��E " �   1  �� >��E� " �   #1  .Y � ����3+  �� >� E " �   #1   <�  �� >��E� " �   #1  - � ����3+  �� >��E� " �   #1  7j � ����3+  �� >��E� " �   #1  E! � ����3+  �� >��E? " �   8�  �� >��E� " �   ++  �� >��E  " �   ,�  �� >� E' " �   <�  �� >��E? " �   -�  �� >��Em " �   7�  �� >��E " �   9  �� >��E� " �   6R    >�?E' < C K@H0J   ~  |  |    e  c	_ HL===C=B,&$&"!
	+ #!32767676323277632#"&&547.546632$!&&#E��iL
!*0

&&!:"Ip>E{NMp<��[M	RBFV

""	

"9"" JwJPGDzO�PCCP�� >��E� " �   56    (��/'   ' ?@< ~  e _HK _   I L!!  !'!&$#   #"%&		+ #"&&5463!&&#"#"'&54766367!3d�IE{NMp<|iLA"e.X[��	RB'G~PPGDzOFV
"�+PCCP   
  y & UK�PX@_ =K _  @K >L@  g_ =K >LY@   & %$$##$#	+ 32###"&5#"&54633546632#Dff++9gB�J=�z�Gk;     >�e' & 6 G@DJ ~ _HK_ IK  _   B L''  '6'5/- & %&#''		+ #"&'&547632326655#"&&546636654&&#"3�}GFPH|*R41P0f@JuAF~P3Q--Q33Q..Q3'G~Q�O�K95	#%/[?17>G~PQ~G�/0U66V00V66U0  �� >�e "   3  �� >�e "   2  �� >�e "   1  �� >�e� "   :�  �� >�e  "   ,�    Z��[ $ -@*!J =K _HK  > L   $ #%&%&	+ #"&554&#"#"&54632663�n>WH*E' X2(<sQ��QS":$���� #  ����[ 6 ;@83Jg =K _	HK  > L   6 5$##$#&%&
	+ #"&554&#"#"&5#"&546335463232##663�n>WH*E'**�� X2(<sQ��QS":$��'''t #   ������[� "  1S � ���3+  �� U   �  "   ,7    d   �#  @   @K>L    %	+2&54632#���C   �� d  -? "   .F      (  ' 2@/ g  =K @K>L  '&!  $$%	+&&5463232654632#&54632#oC(& 'B(]!9##9!����C      (  # 7@4 J  ~   =K @K>L  #"  &&	+&5477632#"''#&54632#edGGNgII88����C   �� 	  %? "   8=   ��  8   % 7@4 _  =K @K>L  %$  
$		+&54632#2&54632#&54632##$$$�##$${�#$$##$$#�k��C �� U   �  "   ,7  �� U�  �  "   #,7   <  ��    �? "   - �  �� 5  "m "   7R      (  ' 7@4  ~ _=K @K>L  '&!  $$%	+#"&54&#"#"&54663&54632#�B' &(C(!9##9!����C �� U��  "   #,7   #.   ,V    	  $�   *@'   e @K>L    4	+&546332##&54632# ��O��y��C  ��   9 l�*JK�%PX@!~  d _   =K @L@~   g  d @LY@  9843%#  
$	+&54632##"&&5476767&&54632327763|''''`&&!:"4	@

|''''��"9";+��C!-.	

 ����  ? "   E}  ����� �  "   ,(   ��� �#  @ @K   _BL    %$	+&54632654632#H;L<lE�K;��Dl<    ���  * >@; J  ~   =K @K _BL  *)#!  &&	+&5477632#"''#&54632654632#edGGl;L<lEgII88��K;��Dl<     Z�� # WK�"PX@	"	 J@	"	JYK�"PX@ =K HK  F L@ =K HK >K   F LY�%%&$	+$#"''#"&546327632�2���<�,���i���   �� Z�	 "   >�    Z��+ # mK�"PX@	"	 J@	"	JYK�PX@@K  F LK�"PX@ HK @K  F L@ HK @K >K   F LYY�%%&$	+$#"''#"&546327632�2���<�,������    F  "  @   =K _>L    5&	+2&&54632332##�E&&/U5"��%0  F  "�  & 3@0   �� � `>L  &$   &	+&5477632#&&54632332##fba5E&&�ba�/U5��B%0  �� F  � "!   0�  �� F�	d "!   >z  �� F  � "!   � �    
  B & b@	 JK�-PX@   ~ =K @K ^>L@ �   ~ @K ^>LY@   & $&%(%	+2&55#"&54774632763232##�UaJ�T7�_��   Z��[( 5 V�2,JK�'PX@_@K  > L@ @K_HK  > LY@   5 4$%%%%%%		+ #"&54&#"#"&54&#"#"&546326632663�k=34C=35CH*3QZ7(rf��=?H8��=?H8���)&%*     Z��[( $ L�!JK�/PX@ _@K  > L@ @K _HK  > LY@   $ #%&%&	+ #"&554&#"#"&54632663�n>WH*E' X2(<sQ��QS":$��� #  �� Z��[? "(   .  �� Z��[ "(   2  �� Z�	[( "(   >�    Z�'[( 3 ��0JK�PX@$ ~ _@K >K  _   B LK�/PX@! ~    c _@K >L@% ~    c @K _HK >LYY@   3 2%%$$('	+ #"&'&54676323254&#"#"&54632663�m>7c@@]
-'~YFBTW4(AuJ�o�N65	�H\H8���"&   �� Z��[� "(   5I    >��e'   ,@)  _   HK_IL    &	+&&546632#>54&&#"3~FF~PO}GF}P3Q--Q33Q..Q3G~PQ~GG~QP~GZ0U66V00V66U0  �� >��e? ".   .  �� >��e ".   3  �� >��e ".   1  �� >��e� ".   #1  .i � ����3+  �� >� e ".   #1   <�  �� >��e� ".   #1  - � ����3+  �� >��e� ".   #1  7z � ����3+  �� >��e� ".   #1  E1 � ����3+  �� >��e? ".   8�  �� >��e� ".   +;  �� >��e� ".   #+;  6b � ��̰3+  �� >��e� ".   #,�  6b � ����3+  �� >� e' ".   <�  �� >��e? ".   -�  �� >��em ".   7    >��}�  . f�JK�PX@  � @K _ HK _   I L@# � ~ _ HK _   I LY@.-*%!&'	+ #"&&5466323265546326654&&#"3},%9F}PP~FF~P?60�Q--Q33Q..Q3!NJgP~GG~PQ~G& �0U66V00V66U0  �� >��}? ">   .  �� >� }� ">   <�  �� >��}? ">   -�  �� >��}m ">   7  �� >��}� ">   5F  �� >��e? ".   /  �� >��e ".   9&  �� >��e� ".   6b    >�e' - = B@?J~ _ HK _ IK  _   B L  :820 - ,&'&	+#"&&5477#"&&546632327763 326654&&#"&&!:"4		P~FF~PO}GKA@

��.Q33Q--Q33Q.b"9";+G~PQ~GG~QS�"-.	

=U00U66V00V6  >���( " + 4 �@21)( JK�PX@_@K _  F LK�'PX@_@K _   FK FLK�-PX@"HK_ @K _   FK FL@"  �HK_ @K _   F LYYY@,,##  ,4,3#+#* " !*$*		+ #"&'#"&5477&546632763&#6654'3v;6F}P5[#?

@6F~PhJ9
��Q./?3Q-��-@(;KbP~G?	
AIcQ~G<8
`0V6?,$��0U6=-��$   �� >���: "H  .�� 	�����3+ �� >��e� ".   5F  �� >��e� ".   #5F  6l � ����3+    >��
' , 3 C Q@N%J   ~    e	_HK
_IL44--4C4B<:-3-2$&$'#"!	+ #!3267632#"&'#"&&5466326632$!&&# 6654&&#"3
��iLA"e.M{#"wJP~FF~PIv""tHMp<��[M	RB�tQ--Q33Q..Q3FV
"C;;CG~PQ~GB;;BDzO�PCCP��0U66V00V66U0    Z��'  & 8@5
J _HK _   IK BL  &%  %&	+ #"&'#"&546636654&&#"3�HCuH:d#I}M2Q//Q22Q..Q2'INNH0+���NI�/1U55V11V55U1   Z��  , ?@<
J =K _HK _   IK BL  ,+%#  %%&	+ #"&'#"&546326636654&&#"3�uCAuJ=e"l;Q..Q33Q--Q3'GPP~G:4�����8=�/0U66V00V66U0  >�e'  & 8@5J _HK_ IK   B L  &%  %&	+ #"&5#"&&546636654&&#"3�}I#d:HuCHM2Q..Q22Q//Q2'IN�8+0HNNI�/1U55V11V55U1   Z  �)  �K�PX� J�JYK�PX@  _@K >LK�'PX@   ~ _@K >L@   ~ @K _HK >LYY@    %%#	+ #"'&#"#"&54632663�<	
(HX2X2)  B8���2#(  �� Z  �? "P   .�  �� Z  � "P   2�  �� �	�) "P   >(  �� Z  �? "P   8�  �� Z  � "P   9�    6���' 5 6@3   ~   | _ HK _IL   5 4#'*#'	+&'&54763232654&'&546632#"'&&#"#�x"L+9?>J�:^5Ag8(.;85m[2aD*"& )%y1D"*%N>.K+ �� 6���? "V   .�  �� 6��� "V   2�    6��' T K@HJ ~ | | | _ HK  `   B LHFCA:8.,)'$$&	+#"&5463232654&'&&5477&&'&54763232654&'&546632#"'&&#"D40%C,;N5[L+9?>J�:^5Ag8(.;85m[VO#.&02"'& )%y1D"*%N>>W   �� 6��� "V   1�  �� 6�	�' "V   >�    &   @ 4@1 ~  _   =K _>L   @ ?:8(&" &	+2&546632#"&&543232654&'&&54676654&#"#C9d=:Y2*,2Z;!F.-*/ "#;20@:\40S3!,%(C25S.-,
3) 1"7'!("*0>2��   <  Q  @  _   =K>L    $&	+2&546632#"#Y9gB8D�Gk;J=�	    n� ( UK�PX@ �_@K _   > L@ �g _   > LY@   ( &$##$$4	+$##"&&55#"&546335463232##33U!1Q...UU, "d3X7����(6      n� : nK�PX@' �	
g_@K

 _   > L@% �g	
g

 _   > LY@   : 853!$##$!$$4	+$##"&&55#"&546335#"&546335463232##32##33U!1Q.....UUUU, "d3X7MT��TM(6 ��   �� "^  0� n ��n�3+    �p� K �@
 	K	JK�PX@. � 		~_@K 	_ 		>K  _   B L@, � 		~g 	_ 		>K  _   B LY@HFB?<:641/,*&$$$%
	+#"&5463232654&'&&547767&&55#"&546335463232##332+@0%C,;N
%,..UU, "!..&02"
W5����(6"   �� �	n� "^   >y    O��P$ $ L�
 JK�/PX@@K  _  > L@@K   >K _ ILY@   $ #%&%%	+ #"&55#"&&554632326654634 X2En>WH*E'$�B #<sQ��QS":$  �� O��P? "c   .  �� O��P "c   3  �� O��P "c   1  �� O��P? "c   8�  �� O��P� "c   +>  �� O� P$ "c   <�  �� O��P? "c   -�  �� O��Pm "c   7    O���� 2 e�JK�/PX@�   _@K _>L@"�   _@K >K _ ILY@   2 1"%&%#		+ #"&55#"&&55463232665463232655463�H8 X2En>WH*E'"� AY�j #<sQ��QS":$&�� O���? "l   .  �� O� �� "l   <�  �� O���? "l   -�  �� O���m "l   7  �� O���� "l   5I  �� O��P? "c   /  �� O��P "c   9)  �� O��P� "c   6e    O���$ E ?@<69J~    d@K _ IL   E D&%&/&	+#"&&5476767&&55#"&&554632326654632327763x&&!:"4		 X2En>WH*E'@

�"9";+ #<sQ��QS":$�B-.	

�� O��P! "c   4�  �� O��P� "c   5I     !  @ J@K   > L&(&	+ #"&'&5476326632�	�	��
	
�A!�
��w       �# ' '@$$ J@K  > L   ' &&&&'	+ #"&'#"&'&5432663263��bg�*lfZn&#�Dk���*��Y��X.  ��   �? "y   .  ��   � "y   12  ��   �� "y   +U  ��   �? "y   -�    &  # #  @" J@K  > L$*$#	+$#"''#"&5477'&546327632��������>������ž   
�#  @ J@K   B L$-%	+ #"'&5477&5467632632��
d�	��
�P��	��k �� 
�? "   .�  �� 
� "   1�  �� 
�� "   +�  �� 
�# "   <  �� 
�? "   -k  �� 
�m "   7�  �� 
�� "   6"  �� 
�� "   5    7  �#  %@" ] @K ]   > L    2$2	+$#!"547!"543!23�/��/	�//U/	���^///v///���� 7  �? "�   .�  �� 7  � "�   2�  �� 7  �  "�   ,�  �� 
  � "   o  �� 
  � "   #o   #�   ,  �� 
    "   #o   !�    
  " ) 7 |K�PX@, 		~ _ EK		@K  _
@K>L@* 		~
  g _ EK		@K>LY@**  *7*61/ ) ($##$##$	+ ###"&5#"&5463354632#"&'&&#"36#"&5463Fg++��HW6!�g��z�t�0&,��C�  
  } ; r@
0JK�PX@$ _=K_@K
		 _  > L@"	g _=K
		 _  > LY@   ; 9#$$##$#%4	+$##"&&5&#"32###"&5#"&5463354663263233d&+E&&39ERR++3dH.9d/U5�	I>�z�Bl?��%0     (��    eK�'PX�
 J�
JYK�'PX@  c _YL@   �  g _YLY@     #&
+ #"&7#"&&54663654&#"3'[4+@8[44[8,99,+::+4[8�+4[88[4��:+,99,+:    (��   )@&c  _   YL    &
+&&546632#6654&#"3�[44[88[44[8,99,+::+�4[88[44[88[4b:+,99,+:    �   +@(J  f K   L&##+$#"&''!#"&547632'�8��9"$���<	��
�##�_�d��  d  �  " 6@3 e ] K ]    L  "!   $56+ #!"&5463!2#!3654&##3�uAAuJ������FVUG���9fADl<����ICCC���� d  �      d  h  @  ]   KL    $5+2&5463!2#!#��������� d  h) "�  . � ���3+    d  m�  %@"�   ] K L    %#%+ #!#"&5463!5463P��m�����~  �NA  ! 2@/!J  T K^ L     "%#%+$#"&55!#"&5546336323!!$��"$����\�~~��##�r   d  �   /@,  e  ]   K ]L     !$!$5+2&5463!2#!!2#!!2#!���p����<���  �� d  �) "�  -� � ���3+  �� d  �� "�  +o � ���3+    *�� < 1@.;J e	K   L53#,"#$
+$#"&'##"&5##"'&547&547632346323632�ff����bb���=	N��*��D&����B����   7��` > A@>>J ~ ~  g _ K  _    L("$45#'%+ #"&'&547632326654&##"&546332654&#"#"'&&5476632[IOW�h<4R/TCB36GQEh>	)~THr@B0�bOAl?@5	",&E,<KE7:;J:C4[7:X    d    $@! JK   L    &%&+ &5#"&546326632#��"�6��
���X�[ �� d   "�  Y� � ���3+  �� d  ) "�  - � ���3+    d��� % '@$$J   eK   L"%#$+$#"&'##"&546323632���kg�A	N�����B����   �� d���) "�  . � ���3+      �  @ J K   L&&#+$#"&'#"&547632���"$<
A��
�##�_  �� d  r  a  �� d    E    @��Z   ,@)  _   K_L    &+&&546632#>54&&#"3Y�dd�ts�ee�tU�LL�VV�LL�U
f�tt�ff�tt�f^Q�VV�PP�VV�Q    d  �  !@  ]   KL    %5+2&5463!2#"&5!#��T��[}�� �� d  `  �  �� @���     ��   �  �   ����� ' j�"JK�
PX@ ~K  _    LK�PX@K _    L@ ~K  _    LYY�$)"'&+ #"'&&54763232677&547632632���$c9.*9
������JQ		3.��7�   ������� "�  YP � ���3+    @  2  & -  @-,#" J K    L.&+ #"&55.5466754632654&'2Q�_`�RR�`_�Q�rii�}}g7�P	)(	Q�PP�P	()	P�OXt�tW�tWVt�U�� 2  �  �    A  � # +@(
J   gK    L   # "%%%%+ #"&5#"&55463232665463�#oE��[k=_5�[&+����x{5#
   d�NH   )@&   TK^ L     #%#%+$#"&55!"&54632!46323+���4\�~���}��     d  �   %@"  K^L     ##%+2&54632!4632!4632#!�,,�����}��}�[    d�N\ ) -@*   TK^ L   ) (##%#%	+$#"&55!"&54632!4632!46323?��,,5\�~���}��}��  d�N�   )@&  �K  ^   L     %##%+ ###"&55#"&54632!463�����[~~���}     d  �   0@- e K ^    L    %6+ #!"&546323654&##3�uAAuJ���FVUG���<jDGp?����NHHH��       B  " 6@3  e   ] K]L  !""  #4#+ &5#"&5463!232#!%2654&##(� ��JuAAuJ��FVUG�y�<jDGp?`NHHH��     d  P  " + ;@8 eK	 `   L##  #+#*)'"!  %6
+ ##"&546323 &54632#$654&##3�uAAuJ�����VUG���<jDGp?��� ��[`NHHH��      �  & 8@5J e K _   L  &%$"  &&F+ +"&'#"&5476323654&##3%uAAuJX��"$o�FVUG�{7�<jDGp?A��
�##����NHHH��   d  � & / >@;  e  e  K
`	L('  .,'/(/ & %6##%+2&54632!463232##"&5!#%2654&##���JuAAuJ��O�FVUG����$�<jDGp?*��`NHHH��   �� 9��u  �    @��� 0 ;@8 ~   ~   e _ K _ L#$##'&% +$32#"&&546632#"'&&#"!2#!327�l�k�ff�kLo9)N>FxQ��	P|G`X�Wj�on�k(.	#CtHKyEB    ?��� 0 A@> ~ ~  e _K  _    L   0 /##$#"%&	+ #"'&5463232667!"&5463!.#"#"&5467663��ff�k�lX`G|P	��QxF>N)9oLk�no�jWBEyKHtC#	.(  �� d   �  H  ����  C� " H  +� � ���3+  �� -��  W      > + 3@0(J  g] K   L   + *$4#%%%+ #"&554&#"#"&5#"&5463!2##663��VfSj��!e=����yzB4��y�%(  d��h   0 nK�PX@!  e _K	 _   L@)  e K _K K	 _    LY@!!  !0!/)'   %#&
+ #"&&'##"&546323>36654&&#"3V�bb�qh�c��
d�fS�JJ�SP~GG~Pf�tt�f[�j�����g�X�=Q�VV�PP�VV�Q     K  p  % 3@0J   e ]K   L  %#  "%+ #"&55##"&5477&&546633#"33S��
�LXAuJ�4�FVVF��[����pLGp?`NHCK   ��� 1 �@
.JK�PX@"] K _K  _   LK�)PX@&] K _K K  _    L@$ g] K K  _    LYY@   1 0$4#%&"&	+ #"54326654&&#"#"&5#"&5463!2#!663+vCQ�C22/P0,I*3S-����+S53F~PV�N335]75T/��y�      � & / >@;e	 e K
 ^    L''  '/'.-+ & %$##$#6+ #!"&5#"&546335463232##3654&##3-uAAuJ��ii���FVUG���<jDGp?EEc��NHHH��   *��� ; > :@7>$ J  ~ ] KL  =< ; :761/$+ &5"#"'&54677667&54763!2#"&''&&##!�IP!uc%iQ� 	�Ph%cu!PJ����*3=��IH	��HI�		�=3���� �� @��Z �      �  >� JK�/PX@K    L@K K    LY@    '++ #"&'&5463263����#�5_++�������   ��  h $ -@*g   ]K L   $ "$##$!$+ #!32###"&5#"&54633463!L����FF����&%    d��� + �@
(JK�PX@! ] K _K  _   LK�)PX@% ] K _K K  _    L@# g ] K K  _    LYY@   + *$5$%"&+ #"54326654&#"#"&5463!2#!663�vCQ�C22/P0cRJU���,T53F~PV�N335]7Z\%����   *�M- B A@>9J
e 

c	K   L   B A<:31#,"#+&55#&'##"&5##"'&547&54763234632363232#��ff����bb���"�~N��*��D&����B�����  7�N` F C@@C J ~ ~  g    c _ L("$45#+&+$#"&55&&'&547632326654&##"&546332654&#"#"'&&5476632`5`=O�h<4R/TCB36GQEh>	)~THr@B0@[�`B{u?/	",&E,<KE7:;J:C4[7:XbO  d�N� , 9@6*J
I  e   cK L   , +"%#%+$#"&55#&'##"&5463236323���kg��%\�~		N�����B����    d��� 7 9@6,6	J  e   gK   L%3%#6$+$#"&'##"&55##"&546323546332632���88��A	<Vh�����qY*����    �� * -@*)J   e _K   L"4##$+$#"&'##"&5#"&5463!23632��k�'g�@	N��y��B����   d�Nu ) 3@0   �  eK`L   ) (#%##%	+$#"&55#&&5!#"&54632!46323X@�0�>\�~*�������    d  P $ -@*  e   _KL   $ "%##$+ #!#"&5!#"&54632!463!4���b���*�����   @�N� 0 4@1J   ~   |  c _ L&#'*) +$32#"&55.546632#"'&&#"327�Uf`�Yf�kLo9)N>N�MM�N`X�Dxwn�gn�k(.	#R�ST�RB   ��   �  �      � * /@,' J  eK L   * )%$##$%+ 32###"&55#"&54633&5463263�
�RmnT�
������v��w   A�N - 7@4J   �  gK` L   - ,&%%%#%+$#"&55#"&5#"&5546323266546323�@#oE��[k=_5?\�~&+����x{5#
��  A  � 4 :@7-$
J ~   gK    L   4 39%9%+ #"&5##"&55&&554632546332665463�X7��MZN_�[ )dc����oz	xx?/
   d  � # +@( J  g K   L   # "%&%%+ #"&554&#"#"&546326632�[k=_5#oE����x{5#�����&+ �� d   �  H  �� *�� "�  Y � ���3+    A�N� - 8@5 J  g  cK    L   - ,%%#%#+ ##"&5546335#"&55463232665463�6#oE��[k=_5�[
~��&+����x{5#
   ��   � "�  YQ � ���3+  ��   �� "�  +I � ���3+  ��   �    �� d  � "�  Yw � ���3+    @��� ! ( ?@< ~  e_K  _    L""  "("'%$ !  ##'&	+ #"&'&54763232667!"&54663!&&#�[_�hM�*"RAIsG	��$Z�dm� 	�mg�tr�e51!@sL#l�g\�|z�   �� *��� "�  + � ���3+  �� 7��`� "�  +< � ���3+  �� d  � "�  6� � ���3+  �� d  � "�  +� � ���3+  �� @��Z� "�  +� � ���3+    @��Z   ! =@:  e_K _    L  !   &	+ #"&&54663!.#667!3@�ee�tt�dd�tN~P
L
P~NN~P
��
P~Nf�tt�ff�tt�f^BvKKvB��CvKKvC�������� "�  6o � ���3+  �������� "�  +H � ���3+  �������) "�  /' � ���3+  �� A  �� "�  +` � ���3+    d�Nh  +@( �   ]K _ L    #%!$+ #!32#"&55#&&5463!L��>@����~�  �� d  P� "�  +� � ���3+  �� @��Z  �  �� 	  �  �    >��e'  & 4@1J _K _   L  &%  %&+ #"&55#"&&546636654&&#"3�}I#d:HuCHM2Q..Q22Q//Q2'IN�%+0HNNI�/1U55V11V55U1     A��^>  - 6@3J � g _    L     - ,&$  )&+ #"&&576677632663654&#"3�p?DyMO}G���	˸pG6^^J3Q--Q3�AuKKuBBuKqz�;S]U�:A�W^JJ]+L00M+    Z  >#   ( 9@6J  e ] K ]    L   ( ''!'E5+ ##"&566;2&&##3265654&##330V6��F\(#&�� !22(��E,-F(�Q?&=�"�'��'!*�  (���' 4 6@3   ~  |   _ K _L   4 3")($++&&54676654&#"#"'&&5476632327632#�d8njB2=-$E

nAXs�L>;:j("vA'F-AQ&!!
%-QHt*)!"+"*�� (���? "�   .�    Z  ��  %@"�   ] K L    %#%+ ###"&546335463������j�~  �� >�e'     >��E'   ' 8@5   ~    e_ K _ L!!!'!&&'#"!+ #!3267632#"&&546632$!&&#E��iLA"e.R�IE{NMp<��[M	RBFV
"G~PPGDzO�PCCP�� >��E? "�   -�  �� >��E� "�   +4    #���$ ; 6@3, J  eK
	L   ; :,"#,"+&55##"'&5477'&54763235463237632#"''##oD�
��
�JK�
���E����Ϋ����ݹ    +���( < A@><J ~ ~  g _ K  _    L'#$44"'%+ #"&'&54763232654&'#"&546336654&#"#"'&5476632�?9c=Eo&9V6B/#98 "85+F!l:<_66+D./N,*"
2/% ((!&#,*F**=
    O��P$ $ L�
 JK�/PX@K  _   L@K   K _ LY@   $ #%&%%+ #"&55#"&&554632326654634 X2En>WH*E'$�B #<sQ��QS":$  �� O��P" "�   YF  �� O��P? "�   -�    Z��&# $ '@$#J   eK   L"%#$+$#"''##"&5463237632&�AL�
��;ݹ���
��   �� Z��&? "�   .�    #  ("  @	 J K   L($%+$#"'#"'&5476632(
����5r��
�!�A    Z  �# ! .@+
J   ~K   L   !  %%%%+ #"&5#"''#"&5463263��� �� #�C?�##������+   Z  W#  '@$   eK   L    %#%+ #"&55!#"&54632!5463<��5#�C�����  >��e'   ,@)  _   K_L    &+&&546632#>54&&#"3~FF~PO}GF}P3Q--Q33Q..Q3G~PQ~GG~QP~GZ0U66V00V66U0  �� Z��[( (  �� Z��' M  �� >��'  �  �� Z��[( '   ���( ) S�#JK�/PX@ ~K  `    L@ ~ K K  `    LY�&)"'&+ #"'&&5476323277&54676326632�%o='"=; �	��	��Sc�I�	��l   �����" "   Y    >��  ( 1 B@? K_
K	 _  K L))  )1)10/('!   ##+ ##"&55"&&5466354632"326654&&#|FF}OO}FF|Pf3P--P3�P--P3'H~PP}H��H}PP~H��Z1U66U00U66U1��   �� &  # ~    -  �# ! +@(
J   gK    L   !  $%%%+ #"&55#"&55463232655463�M.hk�9I#�C��uLL�&�   O�N�$ , Z�JK�/PX@   SK_L@   SK K_ LY@   , +%%&$#%+$#"&55#"&'#"&&554632326546323�(*X5Fm>YFBT*V�~!##&AuJ��H\H8�e     O��P# 6 Z@

 JK�'PX@K _   L@K   K_LY@   6 5%%%%$%%	+ #"&55#"&'#"&546323265463232654634H+<ZS6Wk=34C=34D#�C"&8439rf��=?G8��=?G8    O�N�$ ? h@
JK�'PX@   SK
	_L@    SK K
	_LY@   ? >%%%%%$$#%+$#"&55#"&'#"&'#"&5463232654632326546323�(*I+<ZS6Wk=34C=34D*V�~!##'8439rf��=?G8��=?G8�e  &�l�#   )@& �K  ^   L     %#%#+&55#"&54632!4632###����a��v��Ca   Z��H#   6@3 J  e   K_L    #&+&&5663232#6654&##3p=�Ah;=pJATH:�R>	6cCp.U:;]4^9525U7I    ���#  # 6@3 e ] K _    L  #"  4$%+ #"&&57#"&5463323654&##3{:f@Ai<z��7FE8�I7�a\>]2:e>�p��9525U7I  Z���#    + n� JK�PX@  e  K	_L@!  e  KK	_LY@!!  !+!*'%   #&
+&&5663232#$&54632#$654&##3�h:�av|eU��E@5�G8
9d@pdY`m
��CU8634U8H    #  "  % 3@0J e K  _   L  #"!  (&&+ #"&&'#"'&54766323&##265r_57a;',
���;�n>0~^N@�0V78Y2
X��
�!��:�+9   Z���# & 1 x�JK�PX@$   e    eK
_	L@(   e    eK K
_	LY@''  '1'0-+ & %##%#+&&55!#"&54632!5663232#6654&##3~g:���<_5:hB9I>0�E7
9d@����p0V7;^4_>0-:U8H  �� 6���' V    >��' . ;@8 ~ ~  e _ K  _    L""$"#&&$+$#"&&546632#"'&&#"32##327632HlO~GE|NvN

;&C\��_FD*nCHNPGZPDDU#	   >��' . A@> ~ ~  e _K  _    L   . -#"$""&&	+ #"'&5476323267#"&54633&&#"#"'&54763Z|EG~OlH*DF_��\C&;

Nv'GPNHC	#UDDPZ �� U   �  "   ,7  ����  B� "   +�  ����� �  "   ,(     ��o 5 9@62Jg	  g K   L   5 4$##$#%%&
+ #"&554&#"#"&5#"&546335463232##663�m>YFBT??��W4
AuJ��H\H8�!--�"&   Z��U'  / :@7  e _K	 _   L     / .(&  %#&
+ #"&&'##"&5463236636654&&#"3�}GF}PJvJps�k3Q--Q33Q..Q3'G~QP~G<lG���dz�/0U66V00V66U0     A���#  & 7@4 J   e ]K   L  &$   "%+ #"&55##"'&5477&&546633#"33�^�e4>3Z9�1|);;)|#�B���R85T1_4')5    �� : C@@7	J	g
	 	g K K  _    L   : 9$##$#%&"&+ #"54326654&&#"#"&5#"&546335463232##663�wCKx>22*G*.R3BT??��W4�V�[u�i33P�V@k?H8�!--�"&    ��K & 1 D@AJg	 e K
 _    L''  '1'0-+ & %$##$$&+ #"&&5#"&546335663232##3654&##3�_5:hBAg:>>���%I>0�E7�0V7;^49d@��p��>0-:U8H    #���# 6 9 c�9! JK�"PX@  ~ ] KL@   ~ ] KKLY@  87 6 5.>%+ &55#"'&5477667'&5463!2#"&''&&'##r<H@0gT�
�
�Pd0@H<���*)�			z=4��4<z
	�)*�Ӡ  �� >��e' >    
  +$  !@ JK    L    (,+ #"&'&547632763
~!��\7Z$

+'��"�
���    �# $ -@*g   ]K L   $ "$##$!$+ #'32###"&55#"&546335463!���##����   Z�<# / ?@<,J g ] K K  _    L   / .$5%&$&+ #"&546326654&&#"#"&5463!2#'663�m><lE'>")H.A#�K#VI�ST�J3Z95T/���    #�N"$ C D@A:J �
e	K 

 `   L   C B=;42#,"#+&55#&''##"&55##"'&5477'&5476323546323763232#��ED�
��
�JK�
�q-�~	ݹ����Ϋ�����    +�N�( C C@@@ J ~ ~  g    c _ L'#$44"*&+$#"&55&'&54763232654&'#"&546336654&#"#"'&5476632�0U6^<9V6B/#98 "85+F!l:<_66+3?vI/w{7
2/% ((!&#,*F**=

D.     Z�NV# + 6@3)J  e   cKL   + *"%##%	+$#"&55#"''##"&546323763239�U`�
��V�~ݹ���
��   Z��N# 7 :@76J+I  e   gK   L&3%#5$+$#"''##"&55##"&54632354633237632N�00�
��;�LP���KK�
��    ���# ) -@*(J   e _K   L"4##$+$#"''##"&5#"&5463337632��A��L�
��;ݹ���
��   Z�N�# ) 0@-  e   cKL   ) (#%##%	+$#"&55#&&55!#"&54632!546323�4��5+V�~������f   Z  P# $ -@*  e  _  KL   $ ##$3%+2&54632!5463!2#'#"&55!#u#�������m��  >�N' / 4@1 J ~ |    c _ L"%#&*(+$#"&55.546632#"'&&#"3276326MDi:E|NvN

;&M`-Q4D*n3~}
LuGPGZgU6U0#	  �� �*" l    '�$# ) /@,J  fKL   ) ($%$%$#+&55#"&54633&5463263232###ti���!�it���	��Z�e�   -�M[# , 4@1J  g   cK L   , +%$%%3%+$#"&55#5"&55#"&5546323265546323>4M.hk�9I+U�~��uLL�&��e   -  �# 3 7@4,#
J ~   gK    L   3 28%#8%+ #"&55##"&55#"&5546325463326655463�%2hko(/#�C�
KD�uLL�XV"�   �� Z��[   �� F  " !  �� #���" "�   Yv    -�N�# + 4@1J  g  cK    L   + *$%#%#%+ ###"&5546335#"&55463232655463�1(M.hk�9I#�C~�~�uLL�&�  �� >��e" "�   YC  �� >��e� "�   +;  �� >��'  �  �� >��E" "�   Y<    (��/'   ' ?@< ~  e _K _    L!!  !'!&$#   #"%&	+ #"&&5463!&&#"#"'&54766367!3d�IE{NMp<|iLA"e.X[��	RB'G~PPGDzOFV
"�+PCCP �� #���� "�   +n  �� +���� "�   +   �� O��P� "�   6e  �� O��P� "�   +>  �� >��e� "   +;    >��e'    =@:  e_K _    L    &	+ #"&&54663!&&#67!3�}GF}PP~FF~PE_]^EE^��_E'G~QP~GG~PQ~GZRDDR��SDDS ������ "   6"  ������ "   +�  �����? "   /�  �� -  �� "
   +    (�H�' ; 4@1 J ~ |    c _ L")($.)+$#"&55&&54676654&#"#"'&&5476632327632�X4O`njB2=-$E

nAXs�L>;:j({&��	R<AQ&!!
%-QHt*)!"+ �� Z���� "   +�  �� >�e' O  ��   �# y    Z  �#  @  ]   @K >L#$1	+63!2#'#"&5Z#��m�    �   +@(J  f )K  * L&##+$#"&''!#"&547632'�8��9"$���<	��
�##�_�d���� d  �      %  F  @  ]   )K*L    $5+2&5463!2#!#C��z�����   � �   d  �   /@,  e  ]   )K ]*L     !$!$5+2&5463!2#!!2#!!2#!���p����<���  �� 7  �  �    d    '@$  e  )K*L    %#%+2&54632!4632#"&5!#���0����[*��     @��Z   - =@: e  _   1K_2L     - +'$  &	+&&546632#>54&&#"3&&5463!2#!Y�dd�ts�ee�tU�LL�VV�LL�U�$��
f�tt�ff�tt�f^Q�VV�PP�VV�Q�  d   �  @   )K*L    %+2&54632#���[   �� d  n  Y      �  @ J )K  * L&&#+$#"&'#"&547632���"$<	D��
�##�_  �� d  r  a  �� d  �  b    7  �   ) =@: e   ])K] *L  )'#   4	+ #!"&5463!#!&&5467!#!"&5463!���28�i �d��2����    @��Z   ,@)  _   1K_2L    &+&&546632#>54&&#"3Y�dd�ts�ee�tU�LL�VV�LL�U
f�tt�ff�tt�f^Q�VV�PP�VV�Q    d  �  @ ] )K  * L%5!+6#"&5463!2#"&5!�$�D��[}��  �� d  `  �    A  � " @  ]   )K ] *L4'$5+&5463!2#!%2#!"&547?���Y�%���
�-�,�   ��   �  �      �  #@  J)K   * L    ((+ #"&55&5463263�
����
���a�����w     ;���5  & - oK�PX@!
g	  g _ 2L@& W
g	  g _ OY@''  '-'-,+$#"!  ##+ #"&55.5466754632  654&'��VT�uu�TV�s������񍍃�Y�aa�YY�aa�X&&�8��s� �ts���   �� 2  �  �    d  D + +@(  g)K *L   + *#%#	+ #"&55&&55463246326655463'����ikki�}����}��Rq��?qR�    @  2 9 *@'6
J  _   1K]*L$;+4'"+663232##"&554676654&#"##"&546335&&5@[�tt�[og��XL����LX��go(�SS�ji�)$h
+tOt��tOt+
h$)�i  ��   � "H  W�� 	�����3+   ���_  � "L  W�,�� 	�����3+ ���_   "N  W�,�� 	�����3+ ���_   � "P  W�,�� 	�����3+ ������Z "V  W�h�� 	�����3+ ���-  � "[  W���� 	�����3+ ����  2 "_  W�r�� 	�����3+ ����  C� "P  +� � ���3+  ��   �� "[  +8 � ���3+    d�7o / )@&('& J  c  )K *L($/&"+46326632#"&54632677#"&5dK��
	3J:+8v�H���K	� ��	v.(kDH�    >���'   / uK�/PX@#J@#JYK�/PX@ _4K _  - L@ ,K _ 4K _  - LY@!!!/!.,$&%#+$#"''#"&&5466327632$67.#"3�%5;V>HyHBzOTs$/!X^��['<E-1M*-N.6	#�;J+G~PLKKKp!��_XMU2W34W1   Z�z  6 9@6
J  e  _   )K _ -K .L$43%%+#+46632#"&'#"&532654##"&546332654&#"Z8nOc�+'PIBuHKUb4U0UN�H3B<L8V?JtCge-Gt=Hm<4$���V,T?�?/==`J�    �*"  4� JK�PX@,K   . L@   �,LY�&)(+ #"&55&5476326632�����
�J���
��t   >��d  . ;@8J ~  ]   )K_-L  .-'%  $=+&&54667'&&5463!2#!#>54&&#"3�}B6gF�����J?L~J4Q--Q33Q..Q3J~KAuL��@v@V}BZ0U66V00V66U0  M��5' 9 G@DJ ~   ~ e _ 4K   _ -L   9 74%)'"$	+6327632#"&&547&54632#"&'&&#"332##�6G=cNwRMg1UKwrOwN::L<1gg�# &+++F(W&QI\)))$!  4� - /@, ] )K _ -K  . L (& --+#"&5467654&'&&54677!"&5463!2TN'.��kYw��t�n]�YPYG�9"yfe�Uq�h�K�	Q??^	     Z�[( $ T�!JK�/PX@ _,K *K   . L@ ,K _4K *K   . LY@   $ #%&%&+ #"&54&#"#"&54632663�n>WH*E' X2(<sQ�!�QS":$��� #  > w    =@: e  _   )K_*L    &	+6&&546632#.#" 67!3��?L�PP�L?�]�6Q./R6j��iJh�m��SS��m�h�Xr55rX��y��y   O  L#  @   ,K _*L    5&+2&&54632332##�Q., "!3X7/��(6�� Z��+      
    @ J )K  * L*&#+$#"&'#"&547'&54632���U(=
i����
�_   Z�Q$ ) X�%JK�/PX@  ,K _*K.L@  ,K *K _ -K.LY@   ) ($%%&%+&5463232654632#"&55#"&'#w*D&GP>T-O����-@ LA�B@!�      "  @ J,K   * L&(&+ #"&'&5476326632�����
�A!�
�z�     >�, @ D@AJ ~  g ] )K` -K   . L   @ ?4:4 )4	+$#"&5467654&'&&5467&&54667#"&5463!2332##"&YGN18��ME@=*M0��#��EAe6[iS^J�?^	9! ghA`M8'G-?E/7A<?8    >��e'   ,@)  _   4K_-L    &+&&546632#>54&&#"3~FF~PO}GF}P3Q--Q33Q..Q3G~PQ~GG~QP~GZ0U66V00V66U0      �# ' %@" ]   ,K _*L##43$1+63!2##332##"&5##"&5#"&5Xi#"JX�`	��*4mU�j��� Z��' M    >�%' + 9@6 ~ _ 4K _ -K  . L &$  +++#"&5467654&'&&546632#"'&#"hN'.��I~OyN

1LPdacYPYG�9"��[�CZ4c]cRQ??^	     >���#  ( .@+  ],K_ -L  ('!  &$+ ###"&&5466;! 6654&&#"3�s #F}PP~FF~P-��Q--Q34Q-.Q3#%^5P~GG~PP}E�30U64T0.T66U0    #  !@ ]   ,K _ *L$43$1+63!2##332##"&&5#"&5��, %!1Q.�	��(63X7     Z��P$  @  ,K _ -L%%%"+4632326554632#"&5ZOFFO�ss���RRRR�� ww  >��  & - B@? �_
4K	 _  -K .L''  '-'-,+&%!   ##+ ##"&55"&&54663546326654&'6�EE�bb�EE�bffhhf�hhf'G}RR|G��G|RR}GwwPnWWmmWWn�u     #�# #  @" J  ,K.L*$* + 32#"'#"&547&54632���������#������;9��  Z��� - 0@-& J �,K  -K .L   - ,)&#+ #"&55.5463246326655463�DyMMyD_EE_$� Lm:��:mL �KTH��TK�    H��N# = .@+6J   ~  ,K`-L$()%%)$+67663232655463232654&'&54632#"&'#"&&5H<.(;?6@@6?;(.<7a?EPOE?a7X�&>nD@VD;��;DV@Dn>&�gNn954459nN�� O  LW "r   V$   ����  L� "r   +j  ����  sg "r   X�d  �� Z��PW "~   V �  �� Z��P� "~   +6  �� Z��Pg "~   X0   �� >��eW "x   V �  �� H��NW "�   Vn  �� >���[ "j  V �  ���3+  �� M��5W "n   V �  �� Z�[W "p   V �    Z�E+ . M@	*)
 JK�PX@  ,K*K .L@ 4K   ,K*K .LY@   . --%%+2&546327632#"&54676654&''#u���;26]9356Qf8�����>]42M** NVl.�    2     ,@)  _   =K_>L    $	+2&54632#6654&#"3�}}rKl88lKCEFBCEFBι��^�yy�^h��������   #  %  (@% J   ~ =K>L    '%	+2&5#"&54677632#�I�b8�Z  A   ( .@+   ~   _ =K ]>L   ( &'%%)	+2&547654&#"#"&546632!2#!^?C:%>#>kCCe73&���LH5AN'B&Cl>:kH,_+��     7  * = G@D6J ~   ~   g _ =K _>L   = <%%%$%%%		+2&&5463232654&&#"&546326654&#"#"&546632#�uB*I,CP$?&5!@2&?%<h@:`7D3LJBoA?mD)E)JA)E'2,<29]53X66OkI@h;       e   3@0J  g =K >L    &##$	+ ###"&55!"&5476323#I<��
<��~~��4K��    A  > / 8@5   ~   e ] =K _>L   / .!$56%%	+2&&54632326654&&##"&5463!2#!32#�uB(E++F((F+�N��tGuCCuGCtH+F((F++F(�CuGGuC   A    # 0@- h =K _   > L  #"  '&	+ #"&&5476323654&#"3qk<<kDEk<&��=NN>=NM>�=lEDl==lDM<z��RAASSAAR    "    @   ] =K>L    4%	+2&547!"&5463!2#{	��}��T�]   < 	  ' 5 0@-J  g _ EK  _   > L%$$(,%	+ #"&&5467&&546632&32654&#"&#"32665�9<iAAj<92#'4[97Y3'#�9**88*+8�J89J"<%%;"�e?Do@?mD?gN.8[43Z8/Ni>A.,9;.��OQ=(C'(E)     -   # #@    g _ =K   > L$%&%#	+ #"&5477#"&&54663232654&#"&��Dk<<kDEk<��N>=NM>>N�<���=lEDl==lDASSAARRA     2��a�  # / B@?J    g g_FL$$  $/$.*)#"  *		+&5467&&54632#654&#"654&'"3�Z5%#K55J#%5Y>%%&&
E8):	$',;;,'$
:(8E�        -�A ) 2@/ e    c ] =K @L   ) ($54$$$	+#"&5463232654&##"&5546332##3�HR=<I""%"I��*�M4<JD6  �?    {.  %@" J   � ]=L    %'	+ #"&547#"&54633�~��	��

  !� �  (@% J   ~_ QL    (%
+&55#"'&54677632#�o
 ��		%4��     (�K % +@( ~   a _ YL   % $$$)4
+ ##"&5477654&#"#"&5463233��%LA>I`}��$<JF7+a   -xS 5 A@>J ~  g    c _YK TL   5 4$$$$$$*	
+#"&5463232654&#"&54632654&#"#"&5463�J &)T=AT!$ #Q;B3-
6#4DF70B   x{   5@2J  _TK_ YL    $#&#
+&55#"&547763232###'5���(cx7��7���   ��  �  @   =K >L& 	+ 32#"&547�
�:��L� �� !  > "�   #� �  ���~ 	���~�3+ �� !��� "�   #� �  �m�~ 	���~�3+ �� -��( "�   #� �  ���~ 	���~�3+ �� !��� "�   #� �   ��  �� -�� "�   #� �   ��  �� -��  "�   #� �   ��  �� ��� "�   #� �   ��    &�^ 2 ]@ . JK�
PX@  o  g =L@ �  g =LY@   2 1$''%	+&5477'&&54632'&546327632#&''#f(2 '' 3)�.		/ 23     ���  @ �   = L    '	+&'&54632#r��$.O�	�
  ) ��  @   W   _ O    
$	+&54632#F)))()))))    IC�  @   W   _ O    %	+&546632#�I#9!!:"!:"I4":!":!!:" �� �� �# &��o��  � �o�3+  2�S � {  @  W _   O    %	+6#"&54676654&'&&5463�(%6
%{4.)^?$     (  � �   # /@,  _>L  #"  
$		+2&54632#2&54632#2&54632#Q)())�*))*�)()))*)()*)))**)     2   �   ,@) _   =K _>L    %	+6&54632#&54632#b))))����())(�� 2   "�   � �    d� �$   ,@)   _@K_ BL    
$	+#"&5463#"&5463�))))$())(���     -  � J N X@U;	
 	!Je

=K  	]		@K>L  NMLK J IDB?>9753!$%##$!$	+ ##32###"&5477##"&5477#"&546337#"&5463376323766323#3�!C@!H!�  EMJQ!
, �!<���'�������2��	�T�  ����D����� 	� ���3+     2�� � {  @   _FL    
$	+&54632#[)))())))  &  � ' 3 6@3   ~  |   _ EK_ >L(((3(2.,%$!	+ &#"#"&546632#"&5467>5#"&5463�D9GI=pI@g:":.*(&'j))))wHMBEl<7c?6Q?%@*\" *<*�G))))    #�P�m  3 =@: ~ |   g W ` P  *(  
$	+&54632#32654632#"&&546676654632�*)()�D9GI=pI@g:":.*(&'�*)()�HMBEl<7c?6Q?%@*\" *<*  % �   +@( J _  =L    %	+&5'4632#"&''4632#�
	�		%����   % �  @ _   =L    %	+&''4632#@		%���� �S �# "�  � o ��o�3+  %���  @  �   = L'!	+ 632#"&547]��-��
�    ����    &�dD@   U   ] M    4	+� D&5463!2#!��+f �����   "�� ���� 	����3+ �� ) �� �    $�h % 5@2 J    g _ =K _BL   % $($#$#	+554#"&5463255432#"32#�<<�=  =��==�=�E+)F�=  �c % 5@2
J   g _ =K   _BL   % $$#$($	+&546325547&554#"&5463232#"#;=  =�<<��=�F)+E�=��==�  A�A  %@"  ]   =K ]BL    !$5	+&546332##32##_�dd�����   �   (@% ] =K  ]  B L 
 	+"&54633#"&546332#4dd��(�q   #� �  @   =KBL    (	+&'&5476632#�	qqi64�����
��i�k  � �  @   =KBL    -	+&5476654'&'4632#746iqq	�k�i��
���� �� ��D  @   U   ] M    4	+&&5463!2#!��W�  �� ��D  @   U   ] M    4	+&&5463!2#!��x�  �� ��D  @   U   ] M    4	+&&5463!2#!��@�   $ �hD  @   U   ] M    4	+6&546332##A���   �� $ �hD �    %  �"  - +@(' J  @K>L  -,"   )	+2&''&5477632#2&''&5477632#�lm dd�lm"dd�
�����
��
     %  �"  - +@( J  @K>L  -,#!  *	+2&5477'&54632#2&5477'&54632#Cdd"ml�dd"ml	����	��
�
�     %   �"  @ J   @K>L    )	+2&''&5477632#�lm dd�
���  %   �"  @ J   @K>L    *	+2&5477'&54632#Cdd"ml	������ �D? i "��  � �     !$F  ) )@&	 J  �t  )(  %	+&546632#2&546632###%3$|#%3$!3("aG7%!#3("aG7%!#      ! F  ) "@  �t  )(#!  ,	+&547654'&54632#2&547654'&54632#0$3%#}$3%#!#!%7Ga"(3#!%7Ga"(3    2! �F  @	 J   �t    %	+&546632#U#%3$!3("aG7%!#  2  �%  .K�$PX@   �EL@
 �   tY@
    ,	+#"&&5463�$3%#%#!%7Ga"(3      � �  @	 J   �EL    %	+#"&547654'&5463g#%3$3("aG7%!#    .�D � i  @	 J �   t    %	+6#"&547654'&5463�#%3$i3("aG7%!# �� � �#� o � �o�3+  �� �S �# "�  � o ��o�3+  @���� 8 r@JK�PX@' n   ~   |  c _ EL@& �   ~   |  c _ ELY@
&#'.) 	+$32#"&55.5466754632#"'&&#"327�[q]�TT�];_1)N>N�MM�N`X�I8;o�dd�o?<((	#R�ST�RB   >��� 7 @ X@U".:/  J � ~ |  � _ HK  `   I L5"%,#+#$	+$#"'#"&5477&&5466327632#"'&'327632$&#"Hl,.	!<DE|N-)

�D*��"M`nCSX$}MPGRS.��	#	eMOgU  @���P 8 B R@O'<3;4 
J �   ~   | � _ EK _ FL&%,$+$% 	+$32#"'#"&5477&&54663276632#"'&'327$&#"�l�63Vef�k:.�!#`X�*F;�,N�M�W4
35�on�k'	&	��	B��*,R�S  - ��G 3 ? J@G#	0,J	 g  c _ HL44  4?4>:8 3 2#.##.
	+6&5477&547'&546326327632#"''#"'#6654&#"3P##)/.( $"+.*,�56%%65&�#,..(# #&10( #!�6%'56&$7  +��KU = D K >@;A9*"J@:K J � � �   � FL+/&	+$#"&55&&'&5467632&&546754632#"&'&&' 5654&'K=f=Y�Z:j{�dJc#
?0hx�`9I;G�F>>�_6?>L@	!,sUVl	00C;'/�s\9C�<1�#A30H��  7  z$ ( 8 F ��IK�%PX@-  g  g 
g EK

	^ 		>	L@- �  g  g 
g

	^ 		>	LY@99))  9F9D@=)8)71/ ( '#$#&$$	+ ###"&&5466325#"&546335463236654&&#"3#!"&5463!]@oEHtC>lC.b���H))H,,I))I,��s����EqAAqEDo?2%~��)H,,G))G,,H)z  �� N �K�PX@; ~   ~ e _ EK
]	@K _ FL@9 ~   ~	
g e _ EK _ FLY@MKIGCA=;75#'#$$$#% 	+$32#"&&'#"&54633&547#"&54633>32#"'&&#"!2#!!2#!327�l�V�lP?@Tk�SLo9)N>R�$V��.��"�V`X�WF|QMuB(.	#[K$QcB    �� ' 3@0 g _ =K   _BL   ' &$"$"$"$		+&546327#"&546335432#"32###���bb�������a�     3  � - 7@4  e  g ] =K	>L   - ,$!$!$3$#
	+2&55#"&54633463!2#!!2#!32###�33��v���a��Sa     @���� @ �@7 JIK�PX@) n ~ e    c _ EL@( � ~ e    c _ ELY@   @ >"&#'.*		+ #"&55.5466754632#"'&&#"3275#"&54633�Xq]�UU�]:]1)N>N�MM�NTM����I79o�ed�o?=((	#R�ST�R2�     A��� ( R `@]9J   ~ 		~ 
 e 
	
	e _ EK _ FL))  )R)PLIEC?=43/- ( &%'$#4	+&5463!254&#"#"'&547663232#!32676632#"&547#"&5463!2#!P9lM@AW+zZFrA;H��ARP?^�e~�BI���n8;/-AF0Y;R)x80.59.L]aYK$     p 3 0@-!	 J h=K  > L$%&#$#&$	+%#"'#"&5#"&546334632663232##b
�H88K��SWH�Y��K	�        S �K�PX@9 ~p	g
g _ =K  ^   > L@: ~~	g
g _ =K  ^   > LY@   S RONLJFDCA$$%&$"$'6	+$#!"&547667#"&546334'#"&54633&&546632#"&'&&#"32##32##36763�$��4767d@hD	)#2@�xx|�
�	H	5Q, "58\6Z	"@0-C2RJ+  
  H I [@X6*"B7J ~ | | || =K  ^   > L   I H(+%**%5		+ ##"&5#"'&546775#"'&546775463276327632326763,
KuE�)	C)	
C���

!	�]@\1=!KxC
<
�{.
6<.
6��]J.     d��� , $@!,$J _ =K  F L)))&	+ #"&54&'#"&5#"&546754632vAUHIV�w�GrI�z}Ja�>�`I���m�          9 1 4 7 D@A37 J
	  g=K>L22  652424 1 0##$###$	+ ###"&'##"&5#"&546334632346323!'#+��11��+�G�������		S��1.��.�ҫ�F�     � % + 1 wK�2PX@(
 
e ] =K	  _HK >L@&	 
 g
 
e ] =K >LY@,,  ,1,0/.+)'& % $3$###$	+ #####"&5#"&546335463323!!&&##67!3�!DoE�!!�DmE!�M,S:��S
�Ӕ1@d8���7dA8D��D8|      � 8 > E K Y@V	g
  g e ] =K >LFF  FKFJIHED@?><:9 8 831"3$!$##"$	+ #####"&5#"&546335#"&5463354633232##3%!&&##!654'!67!3�.�W�!!!!�U0  �MB(�/�ҾC���JV�{2lVJ	x"��"@   
  t / 8 =@:	 g  g 

] =K >L  8620 / .3$!$##$!	+32###"&55#"&546335#"&5463346332#'32654&##���;;;;�JuAAuJ��DXXD�;PP;jBvKIr@`WDG\    (  � : �.0+ ###"'#"&54633267#"&54633&&##"&5463!2##3�"M<��QQ7P��N2Qqb))Y:W��(0('-!3  &   A K�PX@/ ~  p  g _ =K 	^
		>	L@0 ~   ~  g _ =K 	^
		>	LY@   A ?$$$$&&$&	+2&54767#"&54633&&546632#"'.#"32##3767632#!f3* 7]6;a!

**060~w�	
$��ykCB)7]6--(=1>jd`	H       �  $ 4@1e ]   =K >L  $"  4	+&5463!2#!###"&5#"&5463!*��,���T�;�       � B P@M9/.$J ~ | |  ]=K HK >L   B @')$		+ ##76327632#"&55#"&546775#"&546775#"&5463!k�rrrrtttt��[��[�    <  v < ? B E �K�PX@>EB J@>EB JYK�PX@ 	  f
=K>LK�2PX@$	  f
=K =K>L@' ~	  f
=K>LYY@ ==  DCA@=?=? < ;7532#%$###$	+ ###"&'##"&'#"&54633&546323663236323!'#%#[:IEyFN-KNpKLnI,'G)��,-bO(�M(���0��0&��A��L"-����F���    � < >@;9 	J  ee
		=K >L   < ;64$!$##$!$%	+ 32##32###"&55#"&546335#"&54633&5463263�
�4nnnmmm3�
����2]]2E��w    -��� I �90+ 32676632#"&&5467#"&5463!6654&#"#"'&547663232#!RV)hK@i�`J�NI;K<SDE[,�]JuD'%Y�E"8 7@6'	GX1bE!>Z;8;/-AF1]@+Z    2 ��  � 0+6&54632#sAB-.BA/�B./BC..B   �� %��� �    & o�H   ) 
�  0+&5463!2#!&5463!2#!&5463!2#!BN��N��N�����    & ��m  ,@) W  e _O    $##$#	+6&55#"&546335463232###����������   &(��  � 0+&5463!2#!Cr��(  % ��# # &@#  J _  @L   # "*$*	+6&5477'&546327632#"''#Bqqopppqq�qppppqqq     % ��#   % :@7 e c _   @L  %$   
$		+&54632#&5463!2#!&54632#�####�)��{####�$###��$###    & ���   /@,   e U ]M    4	+&5463!2#!&5463!2#!BN��N����    &  �� 4 � 0+2&5477#"&546337#"&54633763232##32###�#>_&��.&%?^&��-
	sy�'ty�   & J�m  @ J   W  _   O*%	+ #"&547%%&54632��� -��qv����    & J�m  @ J   W  _   O(#	+$#"'%&547%632� ��q��-�����   �� & �� &� N�  �� � �N�3+����3+ �� & �� &� N�  �� � �N�3+����3+   &  �m  - 8@5  e g ]	>L     - +'$  $##$#
	+6&55#"&546335463232###&5463!2#!������s���������� ! ��# &  o  � � �o�3+���ư3+     !.�� & a�dDK�PX@  W   g _O@" ~  W    g _OY@   & %#$)#	+� D &'&#"#"'&&54766323276632#..*
	C'+
&?.!#	

/   &(�#  @ �   ] @ L    4#	+ &55!"&5463!2#���r(a�     ( Z��  ' 3 
�,(  0+ #"&'#"&&546632663 654&#"3 654&#"3S[44[8-NN-8[44[8-NN-� 99,+::+X99,+::+�4[88[4##4[88[4##��:+,99,+::+,99,+:   d  �  � 0+ #"&54&&#"#"&54663�S9eA>b7Q�\G~Q�-�5T//T5�-�PG   '���l & � 0+&546323276632#"'&&'&&#"#oHJG/5H
	
IH0f?/!�/@@.!
	�0@�� @  2 _      �   +@( J   )K^*L    '+2&5476632#!%2�������a	h��  "��  � 0+&5463!2#"&5!#@�U���q\��     #�� ! �
 0+&547&5463!2#!!2#!Ba���[5������������   )  �K  � 0+2'&546326332###��eD J*��'���7    O�P$ ) X�
 JK�/PX@@K  _  >K BL@@K   >K _ IK BLY@   ) (%%%%%	+ #"&55#"&'#"&5463232654634N,0SYFBT$�B!$-(����H\H8   "  M  / �&  0+2&&546632&&#"#"&54632#>54&&#"3�KK�K\G�P/!Y>^�`L�I/P..P/0P..P0KKK�K5O`'`�^�LJh/P./P//P//O/   (  �m  � 0+2&54632!2#!E����,     A   + ; G Y@V
g  	g  _  =K		`>L<<,,    <G<FB@,;,:42 + *&$  &	+&&546632#&547632#654&#"3 &&546632#6654&#"3�\66\65\66[6R��d9:')99)`[66[65\76\6(::((99(~6\55\77\55\6����U�9((::((9�6[66[65\66[6f9((99((9          + ; K W c o@l
g

g  _  =K`	>LXXLL<<,,    XcXb^\LWLVRP<K<JDB,;,:42 + *&$  &	+&&546632#&547632#654&#"3 &&546632# &&546632#$654&#"3 654&#"3�\66\65\66[6R��d9:')99)`[66[65\76\6�[66[65\76\6�f::((99(�::((99(~6\55\77\55\6����U�9((::((9�6[66[65\66[66[66[65\66[6f9((99((99((99((9    "�c��  � 0+&5#"&5477632#"''#�>��?�t>��>��     ( E��  � 0+$&5477!"&5463!'&54632#�?��u?��E>?��    "�c��  � 0+''&5463246327632#��>?���?t��?�     ( E��  � 0+6''&5477632!2#!#���?u��?E��?>     ' E�� - � 0+6''&5477632!'&54632#"&5477!#���?�?��?�?E��??��>>  "�b�� - � 0+''&54632#"&5477632#"''7632#��??��>>���?�>��>�?�   "�d�� - ; �2. 0+''&54632#"&5477632#"''7632#&5463!2#!��??��>>��)���>t>��>��>��    (� A Q ]@Z
	J ~  g  _   =K 		_ HK

_ FK _BLBB  BQBPJH A @#&&%&%&&	+&&546632#"&55#"&&546632326654&&#"3267632#6654&&#"3�灁瓓�4\;8Fi6NzEGQQ�G")g�uu�gg�u(]!>oF3P,,P33P,,P3�瓓灁�\�Q<3-4BG�QQHG�Q�57a=u�gg�uu�g	*L,P33P,,P33P,  -��� - : F g@<!,"JK�PX@ ~ _ EK  _  > L@" ~ _ EK   >K _ FLY@	,.),%$	+$#"''#"&54677'&546632763276674&#"'3267�n8{K`tRU4F0T45T09E�PRo�n1"5.+71�:==98Y2:n@Fh[?kD4HS/N,.Q19W7�UWo�'?&(63$51���
.T-8934  -  $  0@-J   ~ ] =K>L    (6	+ &5.5466332#"&5##4T14[8�MK7Y48\4��t��    %�� > J \@Y8	J ~   ~  	g	  	g _ =K _
BL??  ?J?IEC > =$$%+$$%	+&&5463232654&#"&&547&&546632#"&54&#"32#654&#"3�^7;)(<<(7^7C$7^77]8<((<:*7^7DD8]7(<<();;)�8^7);;)(;7]8SE$H,7]88]7(<;)*:7^7WAAV7^8�:));;)*9  -  :   F h�dD@] ~ |    g  g 		gW_
O     F E?=;9530.(&  &	+� D &&546632#>54&&#"3.546632#"'&&#"327632#I�ih�lj�ij�iR�ST�TT�TS�U;k=;iCcD

0@MQ@8!
=\g�mj�ii�jl�gRT�TT�TT�TT�TB?pFGp?PXGFY	;  -  :   = F c�dD@X=J~
 g  		g  e  W _   O  FD@>850.+)&$  &	+� D #"&&546636654&&#"37#"&''###"&546332'32654&##�ij�ik�ih�lR�ST�TT�TS�U�\	?cH]*$�E$++$Ei�jl�gg�mj�i�ET�TT�TT�TT�T�
���R@*C2+$$(    �� " 9 �,# 0+ 32#"&55#"&''#"&546327$###"&55#"&54633�X
V
xt��UV�����
	������  �����  3 C P @
ID:4 0+&547632#&&546632#"'&#"327632# &&546632#>54&#"3���@]66]7F1#,2FG1''0D�]77\77]77]7!8 F31GF2��.�7]66]7%	F22F	%��7]77\77\77]7R!8 1GF22G    %s�   8�dD@-    gW_O    &	+� D&&546632#6654&#"3�[66[66\66\6(99((99(s6\55\76\65\6f9((99((9   �� �  @   =KBL    %	+&54632#����o    G� �K   *@'   g _BL    %	+&54632#&54632#d�M���~N��    &��  )@& =K  ]@KBL    $##$#	+&5#"&546335463232###������u����      l % 0 �,&0+327632#"&55#"'&5477463276654&#"�	;+5H	dH56K�3r�
	)H5P*
�6HH67Q
    &�� 1 9@6 =K]@K ]  >K
		B	L   1 0$!$##$!$#	+&55#"&54633#"&546335463232##32###�����������W�����    d  �  + 7 E X@U		Jg 		e  _  =K
>L88,,  8E8C?<,7,620+*$"  %%%	+2&546324632#"'# &&546632#6654&#"3&5463!2#!���M#]66]76]66]6(:;'):9*�-������Z/��x7]66]77]66]7g;((;9*):�     '  J#  $ �  0+2&&546632#!327632#5&#"�~JJ~JH~K��1D>.Kgs0CE0J~IJ~JI~KM,'BDL--L  %��  '�dD@ J   �t    &&	+� D&5477632#"''#B��kk�����   7 �  @ J �   = L    '	+&54776632#7&87	|
	v    "7>  ! ,@) J �  = L  !   '	+&54776632#2&5776632#<&8'77	|
	v|v     3# �W  @   � t'$+776632#"&53MQ^��   �� ���  @  �   t'$+#"&54776632�MQS��   �kw���   2�dD@'  W  _ O    
$	+� D &54632#2&54632#��#$$$�"#$$w#$$##$$#    �|��   &�dD@   W   _ O    
$	+� D&54632#�''''|''''   �y��?  �dD@   �t    &	+� D''&54632#rbayab  �"y��?  �dD@   �t    &	+� D&5477632#�bayba  ��i��?  ! 2�dD@' J  �t  !   '	+� D &54776632#2&5776632#��&8'7i	|
	v|v �/���   @	 J �   E L    	+5467667654'&&54632#�#/?�."-`A  ��g��  '�dD@ J   �t    &&	+� D &5477632#"''#��poOOgII88 ��q��  '�dD@
 J  �t    $&	+� D''&546327632#�pOOoqJ55J  ��]��  .�dD@#  � W _O    $$%	+� D&&5463232654632#�K,*$,J,]!9##9! �J��!   8�dD@-    gW_O    
$	+� D&54632#6654&#"3�<<//<</J<//==//<8  �Ln��� & a�dDK�PX@  W   g _O@" ~  W    g _OY@   & %#$)#	+� D&'&#"#"'&&54766323276632#�.*
	C'+
&?n!#	

/   �?����  &�dD@   U   ] M    4	+� D &546332##�[���  ��Y��m " ;�dD@0J   ~�   W  _   O   " !%$+	+� D&554776654&#"#"&5476327#�(	):6DrY(		!?0W !  ��i��?  ! 0�dD@% J  �t  !   '	+� D''&&54632#2''&54632#�7'u8&iv|v	
|	 ��]��  /�dD@$  �W_ O    $$%	+� D#"&54&#"#"&54663�J,$*,K,!9##9!    �=s���  &�dD@   W   _ O    %	+� D&546632#�(%6
%s4.)^?$    �����  &�dD@  �   W   _  O&% 	+� D326554632##�0#=&0#& ,H)  �J� ����  &�dD@   W   _ O    
$	+� D&54632#�''''�''''   ���w�%����+ �� 	� ����3+    ���	����  9�dD@.   ~   g W _O    ##$$	+� D&5463232654#"&5432#�N
K:<JI9�)&

)#:-08   ����� 6 & 9�dD@. J  �   � W `P   & %,$$	+� D&5463232654&'&&5477632#�N
+40%C,�2")".&0  ����� 4   8�dD@- J   � � W `P     $(	+� D&&547676323277632#�:"4	@

&&�"9";+-.	

 ����������3 �� 	� ����3+   ���m�S����6 .�� 	� ��̰3+    ���o  &�dD@   U   ] M    4	+� D &5463!2#!�#B��    ����e  &�dD@   U   ] M    4	+� D &5463!2#!����.    �ot�� ' �K�PX@ ~ c   _ = LK�PX@" ~   p c   _ = L@# ~   ~ c   _ = LYY@   ' &$(#	+'&&#"#"'&&547632327632#�+	
		)=$-t)

I
!  ����� U ��   cc�  &�dD@   U   ] M    4	+� D&546332##<��c    3G �  �dD@   �t    &	+� D&5477632#PbaGba   ]d  .�dD@#  � W _O    $$%	+� D&&5463232654632#�K,*$,J,]!9##9!  ]c�  '�dD@
 J  �t    $&	+� D''&546327632#�pOOo]J55J   �3 6 & 9�dD@. J  �   � W `P   & %,$$	+� D&5463232654&'&&5477632#dN
+40%C,�2")".&0   Ic�  '�dD@ J   �t    &&	+� D&5477632#"''#<poOOIII88   @f��   2�dD@'  W  _ O    
$	+� D&54632#2&54632#c#$$$�##$$f#$$##$$#  \ ��  &�dD@   W   _ O    
$	+� D&54632#F)))(\))))    #G �  �dD@   �t    &	+� D''&54632#�baGab   '7C  ! 2�dD@' J  �t  !   '	+� D&54776632#2&5776632#A&8'77	|
	v|v   b���  &�dD@   U   ] M    4	+� D&546332##~���    #� 4   8�dD@- J   � � W `P     $(	+� D&&547676323277632#:"4	@

&&�"9";+-.	

   J �!   8�dD@-    gW_O    
$	+� D&54632#6654&#"3Z<<//<</J<//==//<8   !n�� & a�dDK�PX@  W   g _O@" ~  W    g _OY@   & %#$)#	+� D &'&#"#"'&&54766323276632#..*
	C'+
&?n!#	

/ ���#w �g X��      3u �W  �dD@   � t'$+� D776632#"&534
8	�ow   3u �W  @   � t'$	+776632#"&534
8	�ow   @wg   ) 4�dD@)J   WW_O$$$$'$+� D776632#"&5&632#"&5$632#"&5� �$$$#W#$$#�w	u$$$##$$##    �Zk��"  @K�-PX@ c   L@  � W _OY@    $$%+ &&5463232654632#��S/4''4/S3k#>%""%># ����]��� "3� .�� � ����3+  ����]��� "3� -�� � ����3+  ����]�� "3� 7�� � ����3+  ���k]��� "3� E�� � ����3+  ���8g��� "1� .�� � ����3+  ����g��� "1� -�� � ����3+  ���Cg��� "1� 7  � ����3+  ���hg��� "1� E�� � ����3+      ��>�q_<� �    �-�L    ��z�����            q�  ���               Zq %    %  %  � � � � � � � � � � � � � � � � � � � � � � � � � � � � d	 @	 @	 @	 @	 @	 @ d�� d��� d� d� d� d� d� d� d� d� d� d� d� d� d� d� d� d� d� d� d� dq %	 @	 @	 @	 @	 @	 @g dg g d0 d� d0 d0��0��0 
0��0 V0 V0 0 60��0��0 0��r -r -� d� d� d� d� d� dJ d� � d> d> d> d> d� d> d� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� @� :� :� @� @� @o do d� @x dx dx dx dx dx d� 9� 9� 9� 9� 9� 9� dR @� � � � � M dM dM dM dM dM dM dM dM dM dM dM dM dM dM dM dM dM dM dM dM d� � 	� 	� 	� 	� 	� 2� � � � � � � � � � 7� 7� 7� 7� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >7 >7 >� ZY >Y >Y >Y >Y >Y >� >� >$ >� >m >m >m >m >m >m >m >m >m >m >m >m >m >m >m >m >m >m >m >m >m (o 
� >� >� >� >� >� >� Z������. U. d. d. . . 	.��. U. U. . 5. M U. 	. .��������9 Z9 Z9 Z, F, F� F, Fy F` 
� Z� Z� Z� Z� Z� Z� Z� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >� >2 >� Z� Z� >� Z� Z� Z� � Z� Z 6 6 6 6 6 6# &Q <� � � � � � O� O� O� O� O� O� O� O� O� O� O� O� O� O� O� O� O� O� O� O� O$ � � � � � - & 
 
 
 
 
 
 
 
 
 7 7 7 7� 
 

 
w 
� 
� (� (� � d� dr dr dw dZ � d� d� d5 *� 7l dl dl d� d� d� � dg d� @D do d	 @� ������q @� 2 Ak dW d dD d� dj � d � d� 9	 @	 ?0 d0��r - � d� K  � *� @� r��� dA *� 7� d� d� g dZ d	 @� �  A A d0 d5 ** A� � � � d< @5 *� 7l dl d� @� @��������� Ar d� d� @� 	� >� Aa Z ( ( Z� >m >m >m >
 # +� O� O� OI ZI ZK #$ Z� Z� >� Z� ZY >� Z$��$�� >- &V -� O� O� O# &u Z� 7 Z3 #� Z 6Y >Y >. U.�����  � ZA A� x  #� >5 
� U Z1 # +e Z] Z� � Zs ZY > J 'V -V -� Z, F
 #V -� >� >7 >m >m (
 # +� O� O� >� >$��$��$��V - (7 Z� >� � Z� � d] %� � d� 7g d� @0 d� d� � d> d 7� @S do d� A� � � ;� 2� dq @� ��_g�_0�_�����-q��0��� � d	 >� Z � >d M" 4� Z� >w O9 Z 
� Z V >� > � Zc >� >2 � ZB >* #, Z� Hw Ow��w��� Z� Z� Z� >� H	 >d M� Z| ZB 2� #L AW 7� u AE A# "E <E -� 2n -L . !x (� -� 9��u ! !_ -( !K -� - } &�  � � I �  � 2� (  2� 2  d� -��� � 2# &# #  �  � � %������ � � $� A AA   # ���������� $� $� %� % % %? $      � 2 � 2 �   � . �  � %  	 @Y >	 @ -| +� 7= �  � 3	 @� A�  $ Y 
9 d>  � � � 
 (� &� � � <� � -C 2� %� &# &# &� %� %� &� &# &# &# &# &# &� !� !# &
 (M d# 'q @� � "� # )� Oq "� ([  � "� (� "� (� '� "� "F (� -Q -� %[ -[ - ���� %� � � G# &� # &� dq '� % � ` " 3   �k  �  �  �"  ��  �/  ��  ��  ��  �  �L  �?  ��  ��  ��  �=  �  �J  �w  ��  ��  ��  ��  �m  �  ��  �o ����  3� � 9 � � @ �  #` '# b9 # � !  �# � 3 � 3M @  �Z�������k�8���C�h   j j j j � � � �8Rd~�����$6HZ�.��\n�
.p���2DVhz�����
.:L^p� P�����		L	�	�	�
F
X
j
|
�
�
�
�
�
�
�bt��HZfr~� bt�� hz�����.@Zt���$6HZl~�
������D�.@L^p�� ���H��,>���
.@R^p����,>Pb��B����
T�������^p����(>Tjv�������&2������� N Z f � �!!`!�!�"j"�"�"�"�"�#
##0#F#\#h#t#�#�#�#�#�#�$D$P$�%%�%�%�%�%�%�&&t&�&�&�&�''l'x'�'�'�'�( (V(j(�)4)@)L)~)�*@*L*�*�+>+J+V+b+�,B,�,�,�,�-X-d-�-�-�-�-�-�..".8.D.P.f.|.�.�.�//$/0/</H/T/`/l/x/�0�0�0�0�1l1�2(2�2�2�3
33"3.3�3�3�4J4V4b4�55h5�5�6�6�777$707<7H7T7`7l7�7�7�888 8,888D8�8�8�99p9|9�9�9�9�:&:2:>:J:V:b:n:z:�:�:�:�:�:�; ;;�<$<�<�==`=h=�=�=�>.>v>�>�??�?�?�?�@:@L@�@�@�@�AAA"A*A�A�BBBZB�B�C6C|C�DDtD�E2E:E�FFF F(F~F�GPG�HHH�H�IIhI�JtJ�KVK�LLpL�MM&M|M�N<N�N�N�N�OO O(O:O�O�O�O�O�O�PJP\PnP�P�P�P�P�P�QLQ�RRlRxR�R�SSS*S�TTjTvT�T�T�UU^U�U�U�U�V VVtV�V�V�W8W�XX�X�Y8Y�Z ZVZ�Z�[@[�[�[�[�\,\�\�]V]�^F^N^�^�_@_�`>`�`�aPa�a�bJbRb�b�c^cfcnczc�c�c�c�c�dZdfdrd~d�d�d�d�e eee�e�e�e�e�fffJfRf�f�f�gHgngvg�g�g�hhfh�h�h�h�i0i�i�jjpj�j�j�j�j�j�j�k kkpk�l\l�m
m|m�n8n�n�n�oolo�p&pnp�p�qqrq�q�rNr�r�s^sjsvs�s�s�s�s�s�s�s�s�tRt�t�uu�u�v>v�v�w,wvw�x0xhx�x�yXy�y�y�y�zzz,z<zLz�z�{{B{R{�{�|| |`|�}}*}�}�~:~`~p~�~�~�~�.z���P�x���Ȁ����R������ �r�����*�\���������2���F�ĆR����� �Z�􉔉����H������(���掀�ҏV�"������ �d����b����&�\�r������d�����X�`���Ȗ�0��������b���Ƙ��*�p������J���$���P����f���Ο�Z���J������6�^���ơ��H���Σ�>�|���*�V�����4�p���ʥڦ �v�ĦԦ��@���ȧ�� �^����$�b������2���«.�8�d����.�@�R�d�v��������     b d  v   * ; �   �     >        f         	 f        o        s        �        �        �        �      	  �        �        �       �       �  	   ��  	  �  	  �  	  2�  	  �  	  �  	    	  !  	 	 ?  	  :]  	  :�  	  �  	  4�Copyright 2011 The Comfortaa Project Authors (aajohan@gmail.com), with Reserved Font Name "Comfortaa".ComfortaaBold3.100;CYRE;Comfortaa-BoldComfortaa BoldVersion 3.100Comfortaa-BoldJohan AakerlundJohan Aakerlundhttp://aajohan.deviantart.comhttp://aajohan.deviantart.comThis Font Software is licensed under the SIL Open Font License, Version 1.1. This license is available with a FAQ at: http://scripts.sil.org/OFLhttp://scripts.sil.org/OFL C o p y r i g h t   2 0 1 1   T h e   C o m f o r t a a   P r o j e c t   A u t h o r s   ( a a j o h a n @ g m a i l . c o m ) ,   w i t h   R e s e r v e d   F o n t   N a m e   " C o m f o r t a a " . C o m f o r t a a B o l d 3 . 1 0 0 ; C Y R E ; C o m f o r t a a - B o l d C o m f o r t a a   B o l d V e r s i o n   3 . 1 0 0 C o m f o r t a a - B o l d J o h a n   A a k e r l u n d J o h a n   A a k e r l u n d h t t p : / / a a j o h a n . d e v i a n t a r t . c o m h t t p : / / a a j o h a n . d e v i a n t a r t . c o m T h i s   F o n t   S o f t w a r e   i s   l i c e n s e d   u n d e r   t h e   S I L   O p e n   F o n t   L i c e n s e ,   V e r s i o n   1 . 1 .   T h i s   l i c e n s e   i s   a v a i l a b l e   w i t h   a   F A Q   a t :   h t t p : / / s c r i p t s . s i l . o r g / O F L h t t p : / / s c r i p t s . s i l . o r g / O F L        �� 2                    b     $ � �	
 b � c � � % & � � d ' � ( e � ! �"# �$%&'( ) * �)*+, +-. ,/ �0 �1 � �2 �34567 -8 .9 /:;<= � 0 1>?@A f 2 �B �CDEFGH gIJK �LMNOPQRSTUV �W �X � 3 � 4 5YZ[\] 6^ � �_`ab 7cdef 8 �g �h hi �jklmnopqrstuv 9 :wxyz ; < �{ �|}~� =� �� D i������ k������ l� j���� n� m �� E F �  o�� G �� H p�� r������ s�� q������ I J ����� K�� L � t� v� w�� u������ M�� N�� O���� � P Q���� x R y� {������ |��� z����������� �� }� � S � T U����� V� � ��� �� W���� X ~� �� �� ������������� Y Z���� [ \ �� ���  ] � � � � �	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~������������������������������������������������������������������������������������ ���������������������� ���� ���������������������            � � � �	
  ? � �   �  �   " �  
   B ^ ` > @   � �  � � � � � � � � � � � �  � � !"#$ �%&' �()*+  � � �   � !  � � � � a � �, �-. � � �/ �0  �1234567 # 	 � � � � �8 � _ � �9 �:; A<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\ � � � � � � � C � � � � �]^_`abcdefghiNULLAbreveuni1EAEuni1EB6uni1EB0uni1EB2uni1EB4uni1EA4uni1EACuni1EA6uni1EA8uni1EAAuni0200uni1EA0uni1EA2uni0202AmacronAogonek
AringacuteAEacuteCcircumflex
CdotaccentDcaronDcroatEbreveEcaronuni1EBEuni1EC6uni1EC0uni1EC2uni1EC4uni0204
Edotaccentuni1EB8uni1EBAuni0206EmacronEogonekuni1EBCGcaronGcircumflexGcommaaccent
GdotaccentHbarHcircumflexIJIbreveuni0208uni1ECAuni1EC8uni020AImacronIogonekItildeJcircumflexKcommaaccentLacuteLcaronLcommaaccentLdotNacuteNcaronNcommaaccentEngObreveuni1ED0uni1ED8uni1ED2uni1ED4uni1ED6uni020Cuni022Auni0230uni1ECCuni1ECEOhornuni1EDAuni1EE2uni1EDCuni1EDEuni1EE0Ohungarumlautuni020EOmacronuni01EAOslashacuteuni022CRacuteRcaronRcommaaccentuni0210uni0212SacuteScircumflexScommaaccentuni1E9Euni018FTbarTcaronuni0162uni021AUbreveuni0214uni1EE4uni1EE6Uhornuni1EE8uni1EF0uni1EEAuni1EECuni1EEEUhungarumlautuni0216UmacronUogonekUringUtildeWacuteWcircumflex	WdieresisWgraveYcircumflexuni1EF4Ygraveuni1EF6uni0232uni1EF8Zacute
Zdotaccentabreveuni1EAFuni1EB7uni1EB1uni1EB3uni1EB5uni1EA5uni1EADuni1EA7uni1EA9uni1EABuni0201uni1EA1uni1EA3uni0203amacronaogonek
aringacuteaeacuteccircumflex
cdotaccentdcaronebreveecaronuni1EBFuni1EC7uni1EC1uni1EC3uni1EC5uni0205
edotaccentuni1EB9uni1EBBuni0207emacroneogonekuni1EBDuni0259gcarongcircumflexgcommaaccent
gdotaccenthbarhcircumflexibreveuni0209	i.loclTRKuni1ECBuni1EC9uni020Bijimacroniogonekitildeuni0237jcircumflexkcommaaccentkgreenlandiclacutelcaronlcommaaccentldotnacutencaronncommaaccentengobreveuni1ED1uni1ED9uni1ED3uni1ED5uni1ED7uni020Duni022Buni0231uni1ECDuni1ECFohornuni1EDBuni1EE3uni1EDDuni1EDFuni1EE1ohungarumlautuni020Fomacronuni01EBoslashacuteuni022Dracutercaronrcommaaccentuni0211uni0213sacutescircumflexscommaaccentlongstbartcaronuni0163uni021Bubreveuni0215uni1EE5uni1EE7uhornuni1EE9uni1EF1uni1EEBuni1EEDuni1EEFuhungarumlautuni0217umacronuogonekuringutildewacutewcircumflex	wdieresiswgraveycircumflexuni1EF5ygraveuni1EF7uni0233uni1EF9zacute
zdotaccentf_ff_f_if_f_luni0410uni0411uni0412uni0413uni0403uni0490uni0414uni0415uni0400uni0401uni0416uni0417uni0418uni0419uni040Duni041Auni040Cuni041Buni041Cuni041Duni041Euni041Funi0420uni0421uni0422uni0423uni040Euni0424uni0425uni0427uni0426uni0428uni0429uni040Funi042Cuni042Auni042Buni0409uni040Auni0405uni0404uni042Duni0406uni0407uni0408uni040Buni042Euni042Funi0402uni0462uni046Auni0472uni0474uni0492uni0494uni0496uni0498uni049Auni049Cuni04A0uni04A2uni04A4uni04AAuni04AEuni04B0uni04B6uni04B8uni04BAuni04C0uni04C1uni04CBuni04D0uni04D2uni04D4uni04D6uni04D8uni04DCuni04DEuni04E2uni04E4uni04E6uni04E8uni04EEuni04F0uni04F2uni04F4uni04F6uni04F8uni051Auni051Cuni0430uni0431uni0432uni0433uni0453uni0491uni0434uni0435uni0450uni0451uni0436uni0437uni0438uni0439uni045Duni043Auni045Cuni043Buni043Cuni043Duni043Euni043Funi0440uni0441uni0442uni0443uni045Euni0444uni0445uni0447uni0446uni0448uni0449uni045Funi044Cuni044Auni044Buni0459uni045Auni0455uni0454uni044Duni0456uni0457uni0458uni045Buni044Euni044Funi0452uni0463uni046Buni0473uni0475uni0493uni0495uni0497uni0499uni049Buni049Duni04A1uni04A3uni04A5uni04ABuni04AFuni04B1uni04B7uni04B9uni04BBuni04CFuni04C2uni04CCuni04D1uni04D3uni04D5uni04D7uni04D9uni04DDuni04DFuni04E3uni04E5uni04E7uni04E9uni04EFuni04F1uni04F3uni04F5uni04F7uni04F9uni051Buni051Duni0433.ss01AlphaBetaGammaDeltaEpsilonZetaEtaThetaIotaKappaLambdaMuNuXiOmicronPiRhoSigmaTauUpsilonPhiChiPsi
AlphatonosEpsilontonosEtatonos	IotatonosOmicrontonosUpsilontonos
OmegatonosIotadieresisUpsilondieresis	KaiSymbolalphabetagammadeltaepsilonzetaetathetaiotakappalambdanuxiomicronrho
sigmafinalsigmatauupsilonphichipsiomega	iotatonosiotadieresisiotadieresistonosupsilontonosupsilondieresisupsilondieresistonosomicrontonos
omegatonos
alphatonosepsilontonosetatonos	kaiSymbol
eight.dnom	five.numr
seven.numruni00B9uni00B2uni00B3uni2074	oneeighththreeeighthsfiveeighthsseveneighths	exclamdbluni203Eunderscoredblperiodcentered.loclCATuni2015uni00ADquotereversed	anoteleiaquestiongreekuni00A0uni20B5colonmonetarydongEurouni20B2uni20B4uni20ADlirauni20BAuni20BCuni20A6pesetauni20B1uni20BDuni20B9uni20B8uni20AEuni20A9hvyrniauni2219uni2215equivalenceintersectionuni2126uni2206uni00B5
orthogonalarrowup
arrowright	arrowdown	arrowleft	arrowboth	arrowupdnarrowupdnbseuni2105uni2113uni2116	estimatedminutesecondnumeral-greeklowernumeral-greekuni0308uni0307	gravecomb	acutecombuni030Bcaroncomb.altuni0302uni030Cuni0306uni030A	tildecombuni0304hookabovecombuni030Funi0311uni0312uni031Bdotbelowcombuni0324uni0326uni0327uni0328uni032Euni0331uni0335uni0336tildecomb.iuni02BCuni02C9dialytikatonoscombtonos
tonos.casedieresistonosbrevecombcyuni03060301uni03060300uni03060309uni03060303uni03020301uni03020300uni03020309uni03020303     ��                                        b b Z Z  '�������'����� b b Z Z  #�������'����� b b Z Z  #  �����'����� b b Z Z  #  ���  '�����  � , � UXEY  K� QK�SZX�4�(Y`f �UX�%a�  cc#b!!� Y� C#D�  C`B-�,� `f-�, d ��P�&Z�(
CEcE�EX!�%YR[X!#!�X �PPX!�@Y �8PX!�8YY �
CEcEad�(PX!�
CEcE �0PX!�0Y ��PX f ��a �
PX` � PX!�
` �6PX!�6``YYY�+YY#� PXeYY-�, E �%ad �CPX�#B�#B!!Y�`-�,#!#! d�bB �#B�EX�
CEc�
C�`Ec�*! �C � ��+�0%�&QX`PaRYX#Y!Y �@SX�+!�@Y#� PXeY-�,�C+�  C`B-�,�#B# � #Ba�bf�c�`�*-�,  E �Cc� b � PX�@`Yf�c`D�`-�,� CEB*!�  C`B-�	,� C#D�  C`B-�
,  E �+#� C�%` E�#a d � PX!� �0PX� �@YY#� PXeY�%#aDD�`-�,  E �+#� C�%` E�#a d�$PX� �@Y#� PXeY�%#aDD�`-�, � #B�
EX!#!Y*!-�,�E�daD-�,�`  �CJ� PX �#BY�CJ� RX �#BY-�, �bf�c � c�#a�C` �` �#B#-�,KTX�dDY$�e#x-�,KQXKSX�dDY!Y$�e#x-�,� CUX�C�aB�+Y� C�%B�%B�%B�# �%PX� C`�%B�� �#a�*!#�a �#a�*!� C`�%B�%a�*!Y�CG�CG`�b � PX�@`Yf�c �Cc� b � PX�@`Yf�c`�  #D�C� >�C`B-�, � ETX�#B E�#B�
#�`B `�a�  BB�`�+��+"Y-�,� +-�,�+-�,�+-�,�+-�,�+-�,�+-�,�+-�,�+-�,�+-�,�	+-�),# �bf�c�`KTX# .�]!!Y-�*,# �bf�c�`KTX# .�q!!Y-�+,# �bf�c�&`KTX# .�r!!Y-�, �+� ETX�#B E�#B�
#�`B `�a�  BB�`�+��+"Y-�,� +-� ,�+-�!,�+-�",�+-�#,�+-�$,�+-�%,�+-�&,�+-�',�+-�(,�	+-�,, <�`-�-, `�` C#�`C�%a�`�,*!-�.,�-+�-*-�/,  G  �Cc� b � PX�@`Yf�c`#a8# �UX G  �Cc� b � PX�@`Yf�c`#a8!Y-�0, � ETX��/*�EX0Y"Y-�1, �+� ETX��/*�EX0Y"Y-�2, 5�`-�3, �Ec� b � PX�@`Yf�c�+�Cc� b � PX�@`Yf�c�+� �     D>#8�2*!-�4, < G �Cc� b � PX�@`Yf�c`� Ca8-�5,.<-�6, < G �Cc� b � PX�@`Yf�c`� Ca�Cc8-�7,� % . G� #B�%I��G#G#a Xb!Y�#B�6*-�8,� �#B�%�%G#G#a�	C+e�.#  <�8-�9,� �#B�%�% .G#G#a �#B�	C+ �`PX �@QX�  �&YBB# �C �#G#G#a#F`�C�b � PX�@`Yf�c` �+ ��a �C`d#�CadPX�Ca�C`Y�%�b � PX�@`Yf�ca#  �&#Fa8#�CF�%�CG#G#a` �C�b � PX�@`Yf�c`# �+#�C`�+�%a�%�b � PX�@`Yf�c�&a �%`d#�%`dPX!#!Y#  �&#Fa8Y-�:,� �#B   �& .G#G#a#<8-�;,� �#B �#B   F#G�+#a8-�<,� �#B�%�%G#G#a� TX. <#!�%�%G#G#a �%�%G#G#a�%�%I�%a�  cc# Xb!Yc� b � PX�@`Yf�c`#.#  <�8#!Y-�=,� �#B �C .G#G#a `� `f�b � PX�@`Yf�c#  <�8-�>,# .F�%F�CXPRYX <Y.�.+-�?,# .F�%F�CXRPYX <Y.�.+-�@,# .F�%F�CXPRYX <Y# .F�%F�CXRPYX <Y.�.+-�A,�8+# .F�%F�CXPRYX <Y.�.+-�B,�9+�  <�#B�8# .F�%F�CXPRYX <Y.�.+�C.�.+-�C,� �%�& .G#G#a�	C+# < .#8�.+-�D,�%B� �%�% .G#G#a �#B�	C+ �`PX �@QX�  �&YBB# G�C�b � PX�@`Yf�c` �+ ��a �C`d#�CadPX�Ca�C`Y�%�b � PX�@`Yf�ca�%Fa8# <#8!  F#G�+#a8!Y�.+-�E,� 8+.�.+-�F,� 9+!#  <�#B#8�.+�C.�.+-�G,�  G� #B� .�4*-�H,�  G� #B� .�4*-�I,� �5*-�J,�7*-�K,� E# . F�#a8�.+-�L,�#B�K+-�M,�  D+-�N,� D+-�O,� D+-�P,�D+-�Q,�  E+-�R,� E+-�S,� E+-�T,�E+-�U,�   A+-�V,�  A+-�W,�  A+-�X,� A+-�Y,�  A+-�Z,� A+-�[,� A+-�\,�A+-�],�  C+-�^,� C+-�_,� C+-�`,�C+-�a,�  F+-�b,� F+-�c,� F+-�d,�F+-�e,�   B+-�f,�  B+-�g,�  B+-�h,� B+-�i,�  B+-�j,� B+-�k,� B+-�l,�B+-�m,� :+.�.+-�n,� :+�>+-�o,� :+�?+-�p,� � :+�@+-�q,�:+�>+-�r,�:+�?+-�s,� �:+�@+-�t,� ;+.�.+-�u,� ;+�>+-�v,� ;+�?+-�w,� ;+�@+-�x,�;+�>+-�y,�;+�?+-�z,�;+�@+-�{,� <+.�.+-�|,� <+�>+-�},� <+�?+-�~,� <+�@+-�,�<+�>+-��,�<+�?+-��,�<+�@+-��,� =+.�.+-��,� =+�>+-��,� =+�?+-��,� =+�@+-��,�=+�>+-��,�=+�?+-��,�=+�@+-��,�	EX!#!YB+�e�$Px�EX0Y-   K� �RX��Y��  cp� B�\H4  *� B@
O;'*� B@
YE1*� B�  
 �  	*� B� @ @ @ @  	*� D�$�QX�@�X�dD�&�QX�� @�cTX� DYYYY@
Q=)*������ D�d DD          GDST@   @           S  PNG �PNG

   IHDR   @   @   �iq�  IDATx�ݛ{p\�}�?�>��]i��$��!�~`�p�NR�@����i�G�	�6�δ%�dZ&��N'�4�Rpl�k�c'%	�'�6~�ɒm=V{�u���?v����]I+l�wF���������s��+Z�g#�@�E�R
�I��@\-v�A"m$!�(� 	����26�K)%��y6��IXn���ƮM��>+�Vmi#�D"�mD#�@ �@QTU��.w�\P��8�zu� ��9�٠�P4`���#�D�o�����B�]�<^!~<.�L���FjR�oؖ5߈��>	0������GEi�
A@���@ ~dY�r#f�Ǫ�k�2ʦ�!<o9��N�x���*멹{%��E�Ǩ%����t�VU�x�U�ȴ !�rK�_2����)�����y�����-�'����KG�]�<��Y���&y�,��v�{����G�D3��`Y���M�4�Q�#��d��Q+��O�r��L�%�q���8�AA=���LX���H���\޵�x��Q���:>O�0M����u�0n�jʦ�v�j�E�T-�c�2!ʦ�f��գq1�4�Ҫ*�!y8�J�J��f����a��i����54�VbD��C�L��-�DCp��N��*��  ���1��'�/��-�����E����a�S�`�Ӫ�%�jRRka�QV��\��~�_K����B���ZA ��a�4zJ�1\���ے��TB�q?�-Yǰm}%��ʘ,lͅ��a,T��F�5&��B���i���K�e�O�~ٟ����ġ� 4s��&�[_ v��������#v����Z[5�ۉ�з�����=I��{�CU$�ڰS�\�Pj�z������/-�Q@���\�����;�i�Y�ea��y��{�L�i>�S��bC���7?�?�ĕO���!��L���%H�"q�$�����Ah��!>�`� ���Є�����}`[T���_��nB���t+}�=d�����[�ϕ��+oU��L|�)�u��M\:������>��F�Tw�m�j�[�p��_|i]��+��^�E��!ӯn��\�q��x�&S��!�ୟBx�}c������O�s(����|�1oH�P���Q\�ܽ\��I-��k��c�z��M�r�sD��!v�y��� �~��=��9��t�����d$B��N�h��c��w���N���k�صB�oA��sн!o��}��?���9u��l=�w�������O��L�?���	:Z_�[�w1d%,3����+Ρ&�ၹ��:���G��H��T7����?QZ���(��|aN�M
S�wM����_�9OW��ò�8V2��j�>5��o,��K�҈j����bN��� �/}�����W���Wق)5�g��t�J���=��o~v��Y�ܹ�]��E�0w�\����|�g����V^�������w�a�[oaK�����;���)<��t)�;7�̨��OOEURJ���gض�׹��_~�_X�O|�Ջ'���Cyuxt�e-uH	��_ iZy�V/��߭���?ǫ�^������.[�SO}U��=SY��wGˈ�+��T�Y�o��ڠ��i�&v���T�"W�eͬ�������K��ݺʝS*���탂��o��- L�0!<����	h���[_ou�k}���P��"m�-�]O�敩)s��
���\U�x-0�+��X,�(g��n*�?�~u�)����2��v
�*�p��?7��9k��ܬ�Y��R\�ކI>tF��Mf�3+���Rr�bt�6FL@O,�['.��c�	�BCd���Y����ׁ]�9[J�����GWQU54�Z^^���V����1F���������R��a֭_��4��ŒO-a�����>3�����6.'֭_˒%w�r��4�E��n�Z***�1R��1���Q�]���^��f2������8�v�wN^�߶�'�0����Z���M�'_��7?;����4� [G;����C\eW�L�|O����n�N3{B9�N��dשn�tD��ߴ�<_�7��q��@$n�w�`�� �'�	��D�&�����twI�Z�& 2��ݧ��}z�6�h�ͣ�H�������ܑ�$J�X/�F�Ont�plg_~=X���Bh�r4�B����(��Z���LbF{�b}����^��>�x�T�c]G���I^n/hXqy����(��x�ޗ������o~>h�r�p$���#�)��H���h�X�h+�Nŉ�Y� )m���y�'�唷~2�|���+��#;s��� Z ���*P}A�@9�7�Pu�m�a^�x�'����m�s��g3-W����8u��� �������UQWPn�̄/�����҆s��� i9Ob To ��Be ɞL&�S3�����=�y-��6R=��%�'ȴ�0�H����++��LN��_���T�����������DWɞ.
���2Ϳ���:��܁�f�c�������P�T�?�@�]��w��(���*� �u���SX	+a`'�D4�ۊG�Sɬ/�h���_�D��q�cE��F/c�wf����@���I��΢�ZY��p=}й�SA��wI��0��,��ܴ�i�����L*=�d�D;�^Xq���7~Fр��g����1To�y(n�'p���3�=u��3*dN��s��rB�j��|w��r�7ڷ�}�~���<X�"�� ?��ߤ���w�,��;��RJ[�|`�Є�����;F�����Sh��c�r��>E.*N�H��̆��޿c�Q�Rҽwg7>�����( e�Z��fKk�eYX����<��~�u98�z;9��G���^�ay��?Wk��b���L��E�v��.z���2�p��N@��=�\��+���$7�*��gM�[q��9)�F�H>�B��0�Ќ�M�����4��Sq"�v9�6ƙC#Ꞻ�����f�2�6���No��GF�єP\�:��M�'���8�y�0J���Γm���#�qi^���U���!PV �@Hk�eY�FtL>���!�`5z�W�=T���z�UG�\(��V���a�SH��L{S	̾���.b�]ƌ\�#���04E�)�5 �e�mihR�7l۞?V$�HB��U���e�%<��I�j��_�����zA�'�N0�>y�ID��H�ڪq��>E6�B����;�.�K�IP�ߙ�A P����x����3\��P�2�� ��\�z\Ɇ�k�6���x�r�����<�%`+��i�;�f�r��g��+�)���=    IEND�B`� [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-b6a7fb2db36edd3d95dc42f1dc8c1c5d.stex"

[deps]

source_file="res://assets/icon.png"
source_md5="c3558f79862e8e00c74fb188280dd8ef"

dest_files=[ "res://.import/icon.png-b6a7fb2db36edd3d95dc42f1dc8c1c5d.stex" ]
dest_md5="faf846ccd89e2edfcabb6f1c3125aa7e"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�  oIDATx��i�T��o��=��c�
3�0,J4A `"H� $q��$h\b�*5��Y��h%�B�2I�"e�h֒2!H@Pb�pa�a�f�����������L�"&�U������wι�.0�1�a��rU.�ᴬ��)d�~�Uʄ���ˣe�`����=���đ+6M,��Z�\�U7���~�@ӥ����Y��Q�4��a�YеM��Hp�Ǣ��r	tm�����.M���U�-�f@}�̇�xR�z���G�K�Es�#' ]�dq�B����DO�9�=�..x%�L=����L.Wƶ-§N.7M���ǢyHF��?9��J�6���n�y���[n~�U�J.X]��j�79�4����Y1 "��l��}����6�3Ee��+��bI�eI�qK&r ��+�m#K�� ��mۊmےm۸%y	(��Æ�c�_�P� �lf��1l�*�}!��w��{OT|h)����%�ŭ��-�(����&�~^s�{���eˤ� �0�G�ޱ�b��"��dU?���{���*ŋ'�E�J�G��׼]^�ض��"/��x�4��� ���KnH8$ӥP�ȼ�p��kK6?I�-�4b@��$A9���i0q�G�!�l��!������!/UH�6���K4�����!N�2�g�L���+w@��)wI�$��Z�5O-%ڛvjG��Ri2u�t���"ٳ<^��s>��y� ⧽�^`�0��_�eل5����Qd�#ˇt�|X�"� smt ?9�-���i҃p��G>i�m���H�P�b�61=�`<Nש~�����k����|$�%����dՙ9R��|����~���N��%`E��6x Q��|^�^m�j#�'�0s���k��0���7�.�A��r�eG���6�_��^r_��Axm�`���-��#+ D�d%C��`,��on��Uw���R��✃�=���&@K&Qd���}���E	��3���
����q�İ:Q��^3��o�������OwګH&S���WPװ�!�b/e�	pM6�.k����B��ni��N��ĝ�K�;�C⺖[�I��QMY���yXXӈ��>K��r8vbx
-:[DbZ1N�X<�;j9�흵�x�G��Zc�"��D�"/}Au��?�u�W��KE�>@D�h3����I�T�z ��-�� 7Zފ���hU��*��>Z�{i
�#�;ڦ��pS� v��d��j�d�X�?�

P����7'T�ǝW�WW�4���n/��ˬ����I����/#�N$��Z���m4?�Mi��5���$��}7Z����������^��5��k��̜/udV���Is\)���(ј����%�Z��;��DO���>w�nZ�/I���]�<��+�$�a��;��챉���"�Q,�
5�j2�����!�/		}��SH�]��<x���^v�'\�����zdk���ۀ�9x��������&@7����4zmmκ��[ꦨK �UXD6�?�\��I-�P3Q�������3���3�7]~�I�o+��V}��˶��:k�\K�E,`˪n��;�>=��%RJN�w1��	]M�W;>�J5�ͫ�?<.���m�v$ۀ6�<�k�\�~��	y�;ZE��	<���=���"���(H�;[����@߂�F"�O��!Yl9�Eo��x���_��^�7���7��5��Zi����-��uW�k��G�N�o�8�i 	�p�ߤJuwsĨ0���/�ؐ,ޞ�IBM����0�Q���o���nxt��%�+�[����t� 
p���cp?���+�[3wy��f-�Fb0��	ƫ��(� HF;��+*���;�3���jϓ�_zI�_�� q�l��E�}�(�ci����*!Q�2X��c�%�o`Yg9'C�����%T"zq����ucY�� ��t��7��I[�O=��mO(�!\�(<$RN,�z�s�)3 �V�DX@*�b5����� `0�?59�����\�1�ǧ
�.n�I���b3@X�Q���K^�(w?������Ӱ�G�6�h�i�P_=UD��]K���F�;/ -ټ3� x	��l���r!��(#E�!�HH�>�`Y(� 7$��|j����NF�����"�{���Po=�z�Eˬ��N�zg�[�t��O7?�H���k6��[	�xc�n�z�^�r�|>��� �:�D�24��e��	�8$��=;��yYc���x��J�g���s������]���{j�ݷ<�`u�4�Ћ_z=~��{:-�j���v���S��CyeL���z��9;cG�(q��r]��1��>��7nxd`sl���T�g��#��"V�F���P����ZC�����{����8~,��Xl�uT��;��(�FG��s���+��֥�S8��mz�-m��=�Q3�s��c�)@x�n�4&S���[�R�`\Ö�b	���l�Z��8�ER���P�~��R�����i.y:��.ت +��(6�p\#*�^aӟ��n���e+��3w����:׈\9x���b�M$�lv�烔 �̮ȸ��{~8��Y�!e2Gq�� s�Vl�n.f��DQ�G�o�2� 2q6��<��W\�`G�cy�'`�p�Q@8�.I�v�jm�u=�zG']'O1�c���v*sw�G��p��yFMH�6��t�7j����)�[��T�b�$)�0~�q�ځ�{pf%c4�k�;O> ���u^Ec���6��=Ftߟ�yf}��^��Sg�Vp� �N�~��s����ű�34�*p;;!d��I�!Ad(18�������!2��5��ac��P��C�;"�p�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"

[deps]

source_file="res://icon.png"
source_md5="bcf3c1009a6daff0d08592a41b517edc"

dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]
dest_md5="0cf9ab4eab716463c4c5bed56a8359df"

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       [gd_scene load_steps=7 format=2]

[ext_resource path="res://assets/GUI/label_HP_bg.png" type="Texture" id=1]
[ext_resource path="res://assets/GUI/label_HP.png" type="Texture" id=2]
[ext_resource path="res://assets/font/Comfortaa-Bold.ttf" type="DynamicFontData" id=3]
[ext_resource path="res://assets/GUI/lifebar_bg.png" type="Texture" id=4]
[ext_resource path="res://assets/GUI/lifebar_fill.png" type="Texture" id=5]

[sub_resource type="DynamicFont" id=1]

size = 26
use_mipmaps = false
use_filter = false
extra_spacing_bottom = 2
font_data = ExtResource( 3 )
_sections_unfolded = [ "Extra Spacing", "Font", "Settings" ]

[node name="Bar" type="HBoxContainer"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 500.0
margin_bottom = 53.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 1
size_flags_horizontal = 1
size_flags_vertical = 1
alignment = 0
_sections_unfolded = [ "Size Flags" ]

[node name="Count" type="MarginContainer" parent="."]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 100.0
margin_bottom = 53.0
rect_min_size = Vector2( 100, 40 )
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 0
size_flags_horizontal = 1
size_flags_vertical = 1
custom_constants/margin_left = 0
_sections_unfolded = [ "Size Flags", "custom_constants" ]

[node name="Background" type="NinePatchRect" parent="Count"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 100.0
margin_bottom = 53.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 1
texture = ExtResource( 1 )
_sections_unfolded = [ "Rect" ]

[node name="Title" type="TextureRect" parent="Count/Background"]

anchor_left = 0.0
anchor_top = 0.5
anchor_right = 0.0
anchor_bottom = 0.5
margin_top = -20.5
margin_right = 49.0
margin_bottom = 19.5
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 1
size_flags_horizontal = 1
size_flags_vertical = 1
texture = ExtResource( 2 )
stretch_mode = 4

[node name="Number" type="Label" parent="Count/Background"]

anchor_left = 1.0
anchor_top = 0.5
anchor_right = 1.0
anchor_bottom = 0.5
margin_left = -50.0
margin_top = -20.5
margin_right = -9.0
margin_bottom = 19.5
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
size_flags_horizontal = 1
size_flags_vertical = 4
custom_fonts/font = SubResource( 1 )
text = "10"
align = 2
valign = 2
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
_sections_unfolded = [ "custom_fonts" ]

[node name="TextureProgress" type="TextureProgress" parent="."]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 104.0
margin_right = 500.0
margin_bottom = 53.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 1
size_flags_horizontal = 1
size_flags_vertical = 1
min_value = 0.0
max_value = 100.0
step = 1.0
page = 0.0
value = 100.0
exp_edit = false
rounded = false
texture_under = ExtResource( 4 )
texture_over = null
texture_progress = ExtResource( 5 )
radial_fill_degrees = 360.0
radial_center_offset = Vector2( 0, 0 )
nine_patch_stretch = false
_sections_unfolded = [ "Textures" ]


          [gd_scene load_steps=7 format=2]

[ext_resource path="res://scripts/Enemy.gd" type="Script" id=1]
[ext_resource path="res://assets/chararacters/shadow.png" type="Texture" id=2]
[ext_resource path="res://assets/chararacters/foe_pink.png" type="Texture" id=3]

[sub_resource type="Animation" id=3]

resource_name = "anticipate"
length = 0.25
loop = false
step = 0.05
tracks/0/type = "value"
tracks/0/path = NodePath(".:position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/keys = {
"times": PoolRealArray( 0, 0.25, 0.35, 0.4, 0.75, 0.95 ),
"transitions": PoolRealArray( 0.406126, 1, 1, 1, 0.5, 0.406126 ),
"update": 0,
"values": [ Vector2( 960, 511 ), Vector2( 1024, 511 ), Vector2( 764, 511 ), Vector2( 796, 511 ), Vector2( 796, 511 ), Vector2( 960, 511 ) ]
}

[sub_resource type="Animation" id=1]

resource_name = "attack"
length = 0.7
loop = false
step = 0.05
tracks/0/type = "value"
tracks/0/path = NodePath(".:position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.15, 0.5, 0.7 ),
"transitions": PoolRealArray( 1, 1, 1, 0.5, 0.406126 ),
"update": 0,
"values": [ Vector2( 1024, 511 ), Vector2( 764, 511 ), Vector2( 796, 511 ), Vector2( 796, 511 ), Vector2( 960, 511 ) ]
}

[sub_resource type="Animation" id=2]

length = 1.0
loop = false
step = 0.1
tracks/0/type = "value"
tracks/0/path = NodePath(".:position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Vector2( 384, 511 ) ]
}

[node name="Enemy" type="Node2D"]

position = Vector2( 960, 511 )
scale = Vector2( 1.0625, 1.25 )
script = ExtResource( 1 )
_sections_unfolded = [ "Transform" ]
strength = 6

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]

playback_process_mode = 1
playback_default_blend_time = 0.0
root_node = NodePath("..")
anims/anticipate = SubResource( 3 )
anims/attack = SubResource( 1 )
anims/setup = SubResource( 2 )
playback/active = true
playback/speed = 1.0
blend_times = [  ]
autoplay = ""
_sections_unfolded = [ "Pause", "Playback Options", "playback" ]

[node name="Timer" type="Timer" parent="."]

process_mode = 1
wait_time = 2.0
one_shot = false
autostart = true

[node name="Shadow" type="Sprite" parent="."]

position = Vector2( -1, 10.4 )
texture = ExtResource( 2 )

[node name="PinkRectangle" type="Sprite" parent="."]

position = Vector2( -1.88232, -110.4 )
texture = ExtResource( 3 )

[connection signal="animation_finished" from="AnimationPlayer" to="." method="_on_AnimationPlayer_animation_finished"]

[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]


         [gd_scene load_steps=7 format=2]

[ext_resource path="res://scenes/Bar.tscn" type="PackedScene" id=1]
[ext_resource path="res://assets/GUI/label_EP.png" type="Texture" id=2]
[ext_resource path="res://assets/GUI/energy_bar_bg.png" type="Texture" id=3]
[ext_resource path="res://assets/GUI/energy_bar_fill.png" type="Texture" id=4]

[sub_resource type="DynamicFontData" id=1]

font_path = "res://assets/font/Comfortaa-Bold.ttf"

[sub_resource type="DynamicFont" id=2]

size = 22
use_mipmaps = false
use_filter = false
extra_spacing_bottom = 4
font_data = SubResource( 1 )
_sections_unfolded = [ "Extra Spacing", "Font", "Settings" ]

[node name="EnergyBar" instance=ExtResource( 1 )]

margin_right = 352.0
margin_bottom = 40.0

[node name="Count" parent="."]

margin_bottom = 40.0
custom_constants/margin_left = 20
_sections_unfolded = [ "Rect", "Size Flags", "custom_constants" ]

[node name="Background" parent="Count"]

margin_left = 20.0
margin_bottom = 40.0

[node name="Title" parent="Count/Background"]

margin_top = -20.0
margin_bottom = 20.0
texture = ExtResource( 2 )

[node name="Number" parent="Count/Background"]

margin_top = -21.0
margin_bottom = 19.0
custom_fonts/font = SubResource( 2 )

[node name="TextureProgress" parent="."]

margin_right = 352.0
margin_bottom = 40.0
texture_under = ExtResource( 3 )
texture_progress = ExtResource( 4 )


  [gd_scene load_steps=4 format=2]

[ext_resource path="res://scripts/GUI.gd" type="Script" id=1]
[ext_resource path="res://scenes/LifeBar.tscn" type="PackedScene" id=2]
[ext_resource path="res://scenes/EnergyBar.tscn" type="PackedScene" id=3]

[node name="GUI" type="MarginContainer"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 1366.0
margin_bottom = 137.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 0
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 1
custom_constants/margin_right = 20
custom_constants/margin_top = 20
custom_constants/margin_left = 20
custom_constants/margin_bottom = 20
script = ExtResource( 1 )
_sections_unfolded = [ "Anchor", "custom_constants" ]

[node name="Tween" type="Tween" parent="." index="0"]

repeat = false
playback_process_mode = 1
playback_speed = 1.0
playback/active = false
playback/repeat = false
playback/speed = 1.0
_sections_unfolded = [ "playback" ]

[node name="Bars" type="VBoxContainer" parent="." index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_left = 20.0
margin_top = 20.0
margin_right = 1346.0
margin_bottom = 117.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 1
mouse_default_cursor_shape = 0
size_flags_horizontal = 3
size_flags_vertical = 1
alignment = 0
_sections_unfolded = [ "Anchor", "Size Flags" ]

[node name="LifeBar" parent="Bars" index="0" instance=ExtResource( 2 )]

margin_right = 1326.0

[node name="EnergyBar" parent="Bars" index="1" instance=ExtResource( 3 )]

visible = false
margin_top = 57.0
margin_right = 1326.0
margin_bottom = 97.0
mouse_default_cursor_shape = 0

[connection signal="tween_completed" from="Tween" to="." method="_on_Tween_tween_completed"]


    [gd_scene load_steps=2 format=2]

[ext_resource path="res://scenes/Bar.tscn" type="PackedScene" id=1]

[node name="LifeBar" instance=ExtResource( 1 )]

mouse_default_cursor_shape = 0

[node name="Count" parent="." index="0"]

mouse_default_cursor_shape = 0

[node name="Background" parent="Count" index="0"]

mouse_default_cursor_shape = 0

[node name="Title" parent="Count/Background" index="0"]

mouse_default_cursor_shape = 0

[node name="Number" parent="Count/Background" index="1"]

mouse_default_cursor_shape = 0
align = 1
autowrap = true
clip_text = true

[node name="TextureProgress" parent="." index="1"]

mouse_default_cursor_shape = 0


        [gd_scene load_steps=7 format=2]

[ext_resource path="res://scripts/Player.gd" type="Script" id=1]
[ext_resource path="res://assets/chararacters/shadow.png" type="Texture" id=2]
[ext_resource path="res://assets/chararacters/buddy_green.png" type="Texture" id=3]

[sub_resource type="Animation" id=1]

resource_name = "_setup"
length = 1.0
loop = false
step = 0.1
tracks/0/type = "value"
tracks/0/path = NodePath(".:position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Vector2( 384, 511 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:modulate")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Color( 1, 1, 1, 1 ) ]
}

[sub_resource type="Animation" id=2]

resource_name = "die"
length = 1.0
loop = false
step = 0.1
tracks/0/type = "value"
tracks/0/path = NodePath(".:position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/keys = {
"times": PoolRealArray( 0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1, 1, 1, 1, 1 ),
"update": 0,
"values": [ Vector2( 384, 511 ), Vector2( 364, 511 ), Vector2( 390, 511 ), Vector2( 364, 511 ), Vector2( 390, 511 ), Vector2( 364, 511 ), Vector2( 390, 511 ), Vector2( 364, 511 ), Vector2( 390, 511 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath(".:modulate")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/keys = {
"times": PoolRealArray( 0, 1 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ Color( 1, 1, 1, 1 ), Color( 1, 1, 1, 0 ) ]
}

[sub_resource type="Animation" id=3]

length = 0.8
loop = false
step = 0.05
tracks/0/type = "value"
tracks/0/path = NodePath("../Player:position")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/keys = {
"times": PoolRealArray( 0, 0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.6, 0.8 ),
"transitions": PoolRealArray( 1, 1, 1, 1, 1, 1, 1, 1, 0.353553, 1 ),
"update": 0,
"values": [ Vector2( 384, 511 ), Vector2( 384, 511 ), Vector2( 217, 511 ), Vector2( 239, 511 ), Vector2( 217, 511 ), Vector2( 239, 511 ), Vector2( 217, 511 ), Vector2( 239, 511 ), Vector2( 239, 511 ), Vector2( 384, 511 ) ]
}

[node name="Player" type="Node2D"]

position = Vector2( 384, 511 )
script = ExtResource( 1 )
_sections_unfolded = [ "Transform", "Visibility" ]
max_health = 18

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]

playback_process_mode = 1
playback_default_blend_time = 0.0
root_node = NodePath("..")
anims/_setup = SubResource( 1 )
anims/die = SubResource( 2 )
anims/take_hit = SubResource( 3 )
playback/active = true
playback/speed = 1.0
blend_times = [  ]
autoplay = ""
_sections_unfolded = [ "Pause" ]

[node name="Shadow" type="Sprite" parent="."]

position = Vector2( 0, 9 )
texture = ExtResource( 2 )

[node name="GreenSquare" type="Sprite" parent="."]

position = Vector2( -1, -52 )
texture = ExtResource( 3 )
_sections_unfolded = [ "Animation", "Z" ]

[connection signal="animation_finished" from="AnimationPlayer" to="." method="_on_AnimationPlayer_animation_finished"]


          GDSC         %   �      ���ӄ�   �����嶶   ���󶶶�   ��������񶶶   ����Ӷ��   �������޶���   �����¶�   ����������������¶��   ����Ķ��   ���ƶ���   ��������������Ķ   ���϶���   ������������¶��   �����Ӷ�   ����������Ӷ(   �������������������������������������Ҷ�   ���Ӷ���   ��������������Ҷ            	   ../Player     
   anticipate        attack                                                          	       
   !      '      ,      3      5      6      <      >      ?      C      K      L      M      V      ]      ^      _      f      l      p      v      ~       �   !   �   "   �   #   �   $   �   %   5TT>�  J�  N�  KT=�  �  TT:=�  TT7=�  S�  TTT3�  LMR�  &�  R�  S�  P�	  LM�  1T�  &�  �  R�  1T�  �  �  �  S�
  P�  L�  MTTT3�  L�  N�  MR�  �  P�  L�  MTTT3�  L�  MR�  &�  �  R�  �  �  �  &�  �  R�  S�
  P�  L�  M�  �  L�  N�  MTTT3�  LMR�  �  �  T[     GDSC   !      #   �      ��������������Ķ   �����������ڶ���   ���Ŷ���   ������Ķ   ����¶��   ���������Ҷ�   �����Ķ�   ��Ķ   ��������������Ŷ   ����ض��   ����ض��   ��������������޶   �����϶�   ����������������޶��   ���������޶�   ��������Ӷ��   ���¶���   �����޶�   ������������������������Ҷ��   ������������޶��   ������������޶��   �������������������϶���   �����������䶶��   ��������   ��������Ӷ��   ����¶��   �������Ŷ���   ����׶��   ����Ӷ��   ����������Ӷ   ��������������Ҷ   ����������Ķ   ��������Ķ��      ../Characters/Player      animated_health   333333�?     �?             modulate                               $      '      (      .   	   6   
   <      H      O      P      W      \      ]      d      {      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   5TT7=�  S�  �  �  �  �  T7=�  S�  �  �  T7=�	  S�
  T=�  TT3�  LMR�  =�  SP�  �  �  P�  �  �  �  P�  �6  LSP�  M�  �  SP�  TT3�  L�  MR�  �  L�  MTT3�  L�  MR�  �	  P�  LN�  N�  N�  N�  N�
  P�  N�
  P�  M�  &�	  P�  LMR�  �	  P�  LM�  T3�  L�  MR�  �  P�  �  �  =�  �  L�  MO�  �  P�  �6  L�  M�  TT3�  LMR�  =�  �  L�  N�  N�  N�  M�  =�   �  L�  N�  N�  N�  M�  �	  P�  LN�  N�  N�   N�  N�
  P�  N�
  P�  M�  &�	  P�  LMR�  �	  P�  LM�  0T[           GDSC         &   �      ���ӄ�   �������������Ҷ�   ���Ҷ���   ���������޶�   �����޶�   �����嶶   ����󶶶   ���򶶶�   ����Ӷ��   ����������Ӷ   ����¶��   ����������ڶ   ��������������Ķ   ���϶���(   �������������������������������������Ҷ�   ���Ӷ���                         died      take_hit      health_changed        die                          	      
                     	      
         $      %      &      '      (      )      0      6      8      9      =      C      G      K      P      Q      Y      Z      a      b      i       o   !   q   "   w   #   y   $   z   %   �   &   5TTB�  TB�  TT:=�  T=�  �  TTT>�  J�  N�  KT=�  �  TTTTTT3�	  L�
  MR�  &�  �  R�  1T�  �  �
  �  &�  
�  R�  �  �  �  �  �  �  �  L�  MT�  S�  P�  L�  MT�  �  L�  N�  MTT3�  L�  MR�  &�  �  R�  1�  &�  �  R�  1T�  S�  P�  L�  MT[ [remap]

path="res://scripts/Enemy.gdc"
        [remap]

path="res://scripts/GUI.gdc"
          [remap]

path="res://scripts/Player.gdc"
       �PNG

   IHDR   @   @   ����   gAMA  ���a   PLTE�g�|h�6Jvd�'lV-E��%�%e�$dx�0��&��(j�$p�-e2�%��$�&ci�+�If�:��'��d� �"d�e͢ !,1��&�%a!,2!+1�C	k�9q5hN� $K%5
�"[��c�$N|S�Z���&���&�P
�!W~=�%d%27�"_   �%"&��z<K� ?}!l�}=`� l�0@~$*CR�6� S   �#_v�(�"`�M� W�E�$a!,1(-&39*"-2t�'�%�"Zr�1N&e�=%17�H�#`�!X��i� %17`�Bp�5l�!O{u�*��&�$g�9�"b��(X�GY�F��(�Ok�+�#]   [�j�b�?p7�"]R(�"]�!a4DLk�"

m�'�^�#\�\�"aV�   �#c   � b�a�!a   S�      J� �_   )6= +0   �`                     !,1            %27                        S�      V�                  ����,��������'��&��������w�4��.k�<�/������)��x�3W�Hn�9��$��#�,n�?��"e���.p7HP�4u�=~�`��g�>�������!d�7y�-o�'i�>�9{�;|�0r5FN�2t�6w���(k�� _�C�*m�?��$gQ�L��T�J� c�^�\8IR��(��
EZd�@��� ����   �tRNS^��q�9]Ζ��L�p���|�!��VO�(��g��2@����2w-DL�7�Wr��M�X*6�V���3�]EP�z�'yƁ4�2�!�k)�p�a��P� W_�|�(�H�n?%���'|�����������$���2�=���A������1�<���'�%)��"��6�:�
	�/�7� _!  dIDATX��gx�F�ӽ�{@7�{o���{/�6�ef!�	�#;Nmˍ�ժ��u�a(+d(	N��Q�'[rl�/����G�%�?��{�)�����~@? @�㎻�}�]�^�Ф�
��}n��O.�m����:Qέ�Z�8oP7����X���ۮ>k��Sꩺ���i�?�g- �c{Y�©M#�P� �R?�A��;�J�@�N��4 w��������/���V��N��TXg��y�%%eSI�	�t򠳆x�5C����Y�tԤ4��K��\�Yom��\JՔ�(-�(�A�$i^=esk:�Rn2����aG��dn����芮���ؓhq �oJ$��-����и�	]��
�"5���O�m��/Z�m�tN����k��s�b���U9F� �^�E+^Y������,  B��w�|��'�`!��˭`�C�щ�	<��=~��Wy�$V���[�ۯ���	 ���;�X����chd���6XS�!Q �3"�lԕ%|��_�o�� �g��̟�b��Fp:�x�fw����B�Pٙp1mT#��́�\0�s[�}}|
�1��Ξ�z-l����r��r���_��jǀfWEd<�:pEm\.}����a'�F�k��j��*:c:#���'�|�\�:�����B���.�ꇙ�཭3��#)-]��Lzt��=R�d^`��呍Fo	��J�F��N��]����X�y~� DzF4$[�����Q�� 1k3l]`#+ ���[�g˖��n�"/K�Ѷ��0@��"?(а�.�=���(p)+���dE��l�,�Y�9��=
�y�HX��7r5���ۚe����Ͽ�gM�^�G�����Ռ�E�@�e�9O�xO��(����v��5����x=��kΤ��X	��q�Q���o\�႕��B�R�D��!�6:^���*ȉ�Mӷ�����¨�|��]�"�?�5Y�+id{�,pWE[�U?v�r�����k]�hk�|J��@K�]�>g̹cή�FA[bH�Ox��J	�v�{A�V>�R,�noc}�@D�����#`���y�9w    IEND�B`�               ECFG      application/config/name          Code a life bar (start)    application/run/main_scene          res://LevelMockup.tscn     application/config/icon         res://icon.png     display/window/size/width     V         display/window/size/height               gdnative/singletons            GDPC