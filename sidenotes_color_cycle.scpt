FasdUAS 1.101.10   ��   ��    k             l     ��  ��      cycleColor.scpt     � 	 	     c y c l e C o l o r . s c p t   
  
 l     ��������  ��  ��        l     ��  ��    5 / Path to the file that stores the current color     �   ^   P a t h   t o   t h e   f i l e   t h a t   s t o r e s   t h e   c u r r e n t   c o l o r      l     ����  r         b     	    n         1    ��
�� 
psxp  l     ����  I    �� ��
�� .earsffdralis        afdr  m     ��
�� afdrcusr��  ��  ��    m       �   $ s i d e n o t e _ c o l o r . t x t  o      ���� 0 colorfilepath colorFilePath��  ��        l     ��������  ��  ��       !   l    "���� " I   �� #��
�� .sysodlogaskr        TEXT # b     $ % $ m     & & � ' '  c o l o r F i l e P a t h   % o    ���� 0 colorfilepath colorFilePath��  ��  ��   !  ( ) ( l     ��������  ��  ��   )  * + * l     �� , -��   , E ? Define each color separately and then combine them into a list    - � . . ~   D e f i n e   e a c h   c o l o r   s e p a r a t e l y   a n d   t h e n   c o m b i n e   t h e m   i n t o   a   l i s t +  / 0 / l    1���� 1 r     2 3 2 m     4 4 � 5 5  r e d 3 o      ���� 0 colorred colorRed��  ��   0  6 7 6 l    8���� 8 r     9 : 9 m     ; ; � < < 
 g r e e n : o      ���� 0 
colorgreen 
colorGreen��  ��   7  = > = l    ?���� ? r     @ A @ m     B B � C C  b l u e A o      ���� 0 	colorblue 	colorBlue��  ��   >  D E D l    # F���� F r     # G H G m     ! I I � J J  g r a y H o      ���� 0 	colorgray 	colorGray��  ��   E  K L K l  $ ) M���� M r   $ ) N O N m   $ % P P � Q Q  y e l l o w O o      ���� 0 coloryellow colorYellow��  ��   L  R S R l  * 1 T���� T r   * 1 U V U m   * - W W � X X  p u r p l e V o      ���� 0 colorpurple colorPurple��  ��   S  Y Z Y l     ��������  ��  ��   Z  [ \ [ l     �� ] ^��   ] &   List of colors to cycle through    ^ � _ _ @   L i s t   o f   c o l o r s   t o   c y c l e   t h r o u g h \  ` a ` l  2 D b���� b r   2 D c d c J   2 @ e e  f g f o   2 3���� 0 colorred colorRed g  h i h o   3 4���� 0 
colorgreen 
colorGreen i  j k j o   4 5���� 0 	colorblue 	colorBlue k  l m l o   5 6���� 0 	colorgray 	colorGray m  n o n o   6 9���� 0 coloryellow colorYellow o  p�� p o   9 <���� 0 colorpurple colorPurple��   d o      ���� 0 	ccccolors  ��  ��   a  q r q l     ��������  ��  ��   r  s t s l     �� u v��   u ) # Function to ensure the file exists    v � w w F   F u n c t i o n   t o   e n s u r e   t h e   f i l e   e x i s t s t  x y x i      z { z I      �� |���� $0 ensurefileexists ensureFileExists |  }�� } o      ���� 0 filepath filePath��  ��   { Q      ~ �� ~ I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � m     � � � � �  t o u c h   � n     � � � 1    ��
�� 
strq � o    ���� 0 filepath filePath��    R      ������
�� .ascrerr ****      � ****��  ��  ��   y  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 7 1 Function to read the current color from the file    � � � � b   F u n c t i o n   t o   r e a d   t h e   c u r r e n t   c o l o r   f r o m   t h e   f i l e �  � � � i     � � � I      �������� $0 readcurrentcolor readCurrentColor��  ��   � k      � �  � � � Q      � � � � r     � � � I   �� � �
�� .rdwrread****        **** � 4    �� �
�� 
psxf � o    ���� 0 colorfilepath colorFilePath � �� ���
�� 
as   � m    	��
�� 
utf8��   � o      ���� 0 currentcolor currentColor � R      ������
�� .ascrerr ****      � ****��  ��   � r     � � � m     � � � � �   � o      ���� 0 currentcolor currentColor �  ��� � L     � � o    ���� 0 currentcolor currentColor��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 6 0 Function to write the current color to the file    � � � � `   F u n c t i o n   t o   w r i t e   t h e   c u r r e n t   c o l o r   t o   t h e   f i l e �  � � � i     � � � I      �� ����� &0 writecurrentcolor writeCurrentColor �  ��� � m      ��
�� 
colr��  ��   � Q     S � � � � k    ' � �  � � � l   �� � ���   � T N set fileRef to open for access POSIX file colorFilePath with write permission    � � � � �   s e t   f i l e R e f   t o   o p e n   f o r   a c c e s s   P O S I X   f i l e   c o l o r F i l e P a t h   w i t h   w r i t e   p e r m i s s i o n �  � � � l   �� � ���   �   set eof of fileRef to 0    � � � � 0   s e t   e o f   o f   f i l e R e f   t o   0 �  � � � l   �� � ���   � 8 2 write (color & return) to fileRef as �class utf8�    � � � � d   w r i t e   ( c o l o r   &   r e t u r n )   t o   f i l e R e f   a s   � c l a s s   u t f 8 � �  � � � r     � � � I   �� � �
�� .rdwropenshor       file � 4    �� �
�� 
psxf � o    ���� 0 colorfilepath colorFilePath � �� ���
�� 
perm � m    	��
�� boovtrue��   � o      ���� 0 fileref fileRef �  � � � I   �� � �
�� .rdwrseofnull���     **** � o    ���� 0 fileref fileRef � �� ���
�� 
set2 � m    ����  ��   �  � � � I   !�� � �
�� .rdwrwritnull���     **** � m     � � � � �  b a r f � �� � �
�� 
refn � o    ���� 0 fileref fileRef � �� ���
�� 
wrat � m    ��
�� rdwreof ��   �  ��� � I  " '�� ���
�� .rdwrclosnull���     **** � o   " #���� 0 fileref fileRef��  ��   � R      � � �
� .ascrerr ****      � **** � o      �~�~ 0 errmsg errMsg � �} ��|
�} 
errn � o      �{�{ 0 errnum errNum�|   � k   / S � �  � � � I  / >�z ��y
�z .sysodlogaskr        TEXT � b   / : � � � b   / 6 � � � b   / 4 � � � b   / 2 � � � m   / 0 � � � � � . E r r o r   w r i t i n g   t o   f i l e :   � o   0 1�x�x 0 errmsg errMsg � m   2 3 � � � � �    ( � o   4 5�w�w 0 errnum errNum � m   6 9 � � � � �  )�y   �  ��v � Q   ? S � ��u � I  B J�t ��s
�t .rdwrclosnull���     **** � 4   B F�r �
�r 
psxf � o   D E�q�q 0 colorfilepath colorFilePath�s   � R      �p�o�n
�p .ascrerr ****      � ****�o  �n  �u  �v   �  � � � l     �m�l�k�m  �l  �k   �  � � � l     �j�i�h�j  �i  �h   �  � � � l     �g � ��g   � < 6 Ensure the file exists before trying to read or write    � � � � l   E n s u r e   t h e   f i l e   e x i s t s   b e f o r e   t r y i n g   t o   r e a d   o r   w r i t e �  �  � l  E K�f�e I   E K�d�c�d $0 ensurefileexists ensureFileExists �b o   F G�a�a 0 colorfilepath colorFilePath�b  �c  �f  �e     l     �`�_�^�`  �_  �^    l     �]	�]     Get the current color   	 �

 ,   G e t   t h e   c u r r e n t   c o l o r  l  L U�\�[ r   L U I   L Q�Z�Y�X�Z $0 readcurrentcolor readCurrentColor�Y  �X   o      �W�W 0 currentcolor currentColor�\  �[    l     �V�U�T�V  �U  �T    l     �S�S     Determine the next color    � 2   D e t e r m i n e   t h e   n e x t   c o l o r  l  V ��R�Q Z   V ��P E  V ] o   V Y�O�O 0 	ccccolors   o   Y \�N�N 0 currentcolor currentColor k   ` �  !  r   ` q"#" [   ` m$%$ l  ` k&�M�L& n  ` k'(' I   a k�K)�J�K 0 indexofitem indexOfItem) *+* o   a d�I�I 0 currentcolor currentColor+ ,�H, o   d g�G�G 0 	ccccolors  �H  �J  (  f   ` a�M  �L  % m   k l�F�F # o      �E�E 0 currentindex currentIndex! -�D- Z  r �./�C�B. ?   r }010 o   r u�A�A 0 currentindex currentIndex1 l  u |2�@�?2 I  u |�>3�=
�> .corecnte****       ****3 o   u x�<�< 0 	ccccolors  �=  �@  �?  / r   � �454 m   � ��;�; 5 o      �:�: 0 currentindex currentIndex�C  �B  �D  �P   r   � �676 m   � ��9�9 7 o      �8�8 0 currentindex currentIndex�R  �Q   898 l  � �:�7�6: r   � �;<; n   � �=>= 4   � ��5?
�5 
cobj? o   � ��4�4 0 currentindex currentIndex> o   � ��3�3 0 	ccccolors  < o      �2�2 0 	nextcolor 	nextColor�7  �6  9 @A@ l     �1�0�/�1  �0  �/  A BCB l     �.DE�.  D ' ! Write the next color to the file   E �FF B   W r i t e   t h e   n e x t   c o l o r   t o   t h e   f i l eC GHG l  � �I�-�,I I   � ��+J�*�+ &0 writecurrentcolor writeCurrentColorJ K�)K o   � ��(�( 0 	nextcolor 	nextColor�)  �*  �-  �,  H LML l     �'�&�%�'  �&  �%  M NON l     �$PQ�$  P   Output the next color   Q �RR ,   O u t p u t   t h e   n e x t   c o l o rO STS l  � �U�#�"U L   � �VV o   � ��!�! 0 	nextcolor 	nextColor�#  �"  T WXW l     � ���   �  �  X YZY l     �[\�  [ < 6 Helper function to get the index of an item in a list   \ �]] l   H e l p e r   f u n c t i o n   t o   g e t   t h e   i n d e x   o f   a n   i t e m   i n   a   l i s tZ ^_^ i    `a` I      �b�� 0 indexofitem indexOfItemb cdc m      �
� 
cobjd e�e m      �
� 
list�  �  a k     %ff ghg Y     "i�jk�i Z   lm��l =   non m    �
� 
cobjo l   p��p n    qrq 4    �s
� 
cobjs o    �� 0 i  r m    �
� 
list�  �  m L    tt o    �� 0 i  �  �  � 0 i  j m    �� k I   	�u�

� .corecnte****       ****u m    �	
�	 
list�
  �  h v�v L   # %ww m   # $�����  _ x�x l     ����  �  �  �       �yz{|}~ 4 ; B I P W� �� 4� �������  y ������������������������������������������ $0 ensurefileexists ensureFileExists�� $0 readcurrentcolor readCurrentColor�� &0 writecurrentcolor writeCurrentColor�� 0 indexofitem indexOfItem
�� .aevtoappnull  �   � ****�� 0 colorfilepath colorFilePath�� 0 colorred colorRed�� 0 
colorgreen 
colorGreen�� 0 	colorblue 	colorBlue�� 0 	colorgray 	colorGray�� 0 coloryellow colorYellow�� 0 colorpurple colorPurple�� 0 	ccccolors  �� 0 currentcolor currentColor�� 0 currentindex currentIndex�� 0 	nextcolor 	nextColor��  ��  ��  ��  z �� {���������� $0 ensurefileexists ensureFileExists�� ����� �  ���� 0 filepath filePath��  � ���� 0 filepath filePath�  ���������
�� 
strq
�� .sysoexecTEXT���     TEXT��  ��  ��  ��,%j W X  h{ �� ����������� $0 readcurrentcolor readCurrentColor��  ��  � ������ 0 colorfilepath colorFilePath�� 0 currentcolor currentColor� ������������ �
�� 
psxf
�� 
as  
�� 
utf8
�� .rdwrread****        ****��  ��  ��  *�/��l E�W 
X  �E�O�| �� ����������� &0 writecurrentcolor writeCurrentColor�� ����� �  ��
�� 
colr��  � ���������� 0 colorfilepath colorFilePath�� 0 fileref fileRef�� 0 errmsg errMsg�� 0 errnum errNum� ���������� ���������������� � � �������
�� 
psxf
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� 0 errmsg errMsg� ������
�� 
errn�� 0 errnum errNum��  
�� .sysodlogaskr        TEXT��  ��  �� T )*�/�el E�O��jl O����� 
O�j W +X  �%�%�%a %j O *�/j W X  h} ��a���������� 0 indexofitem indexOfItem�� ����� �  ����
�� 
cobj
�� 
list��  � ���� 0 i  � ������
�� 
list
�� .corecnte****       ****
�� 
cobj�� & !k�j kh  ���/  �Y h[OY��Oi~ �����������
�� .aevtoappnull  �   � ****� k     ���  ��   ��  /��  6��  =��  D��  K��  R��  `��  ��� �� �� 8�� G�� S����  ��  ��  �  � ������ �� &�� 4�� ;�� B�� I�� P�� W������������������������
�� afdrcusr
�� .earsffdralis        afdr
�� 
psxp�� 0 colorfilepath colorFilePath
�� .sysodlogaskr        TEXT�� 0 colorred colorRed�� 0 
colorgreen 
colorGreen�� 0 	colorblue 	colorBlue�� 0 	colorgray 	colorGray�� 0 coloryellow colorYellow�� 0 colorpurple colorPurple�� �� 0 	ccccolors  �� $0 ensurefileexists ensureFileExists�� $0 readcurrentcolor readCurrentColor�� 0 currentcolor currentColor�� 0 indexofitem indexOfItem�� 0 currentindex currentIndex
�� .corecnte****       ****
�� 
cobj�� 0 	nextcolor 	nextColor�� &0 writecurrentcolor writeCurrentColor�� ��j �,�%E�O��%j O�E�O�E�O�E�O�E�O�E` Oa E` O����_ _ a vE` O*�k+ O*j+ E` O_ _  .)_ _ l+ kE` O_ _ j  
kE` Y hY kE` O_ a _ /E` O*_ k+ O_  ��� H / U s e r s / p e t e l o u i s e / s i d e n o t e _ c o l o r . t x t� ����� �   4 ; B I P W� �   ��  ��  ��   ascr  ��ޭ