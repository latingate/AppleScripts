FasdUAS 1.101.10   ��   ��    k             l     ��  ��    S M Copy files to a new folder by file creation date in different folder formats     � 	 	 �   C o p y   f i l e s   t o   a   n e w   f o l d e r   b y   f i l e   c r e a t i o n   d a t e   i n   d i f f e r e n t   f o l d e r   f o r m a t s   
  
 l     ��  ��      BY Gal Sarig 24/05/2025      �   2   B Y   G a l   S a r i g   2 4 / 0 5 / 2 0 2 5        l     ��  ��    + % You can export this script as an APP     �   J   Y o u   c a n   e x p o r t   t h i s   s c r i p t   a s   a n   A P P      l     ��������  ��  ��        l     ��  ��    #  Step 1: Show welcome message     �   :   S t e p   1 :   S h o w   w e l c o m e   m e s s a g e      l     ����  I    ��  
�� .sysodlogaskr        TEXT  m          � ! !��=��   F i l e   C o p i e r   t o   n e w   f o l d e r   b y   c r e a t i o n   d a t e  V e r   1 . 0 2  �   G a l   S a r i g   2 4 / 0 5 / 2 0 2 5   T h i s   t o o l   r e c u r s i v e l y   c o p i e s   a l l   f i l e s   f r o m   a   s e l e c t e d   o r i g i n   f o l d e r   i n t o   a   d a t e - b a s e d   f o l d e r   s t r u c t u r e   i n   t h e   d e s t i n a t i o n   f o l d e r .  �� " #
�� 
btns " J     $ $  %�� % m     & & � ' '  C o n t i n u e��   # �� ( )
�� 
dflt ( m     * * � + +  C o n t i n u e ) �� ,��
�� 
appr , m    	 - - � . . 0 R e c u r s i v e   F i l e   O r g a n i z e r��  ��  ��     / 0 / l     ��������  ��  ��   0  1 2 1 l     �� 3 4��   3 #  Step 2: Choose origin folder    4 � 5 5 :   S t e p   2 :   C h o o s e   o r i g i n   f o l d e r 2  6 7 6 l    8���� 8 r     9 : 9 n     ; < ; 1    ��
�� 
psxp < l    =���� = I   ���� >
�� .sysostflalis    ��� null��   > �� ?��
�� 
prmp ? m     @ @ � A A � S e l e c t   t h e   O R I G I N   f o l d e r   c o n t a i n i n g   f i l e s   a n d   s u b f o l d e r s   t o   o r g a n i z e :��  ��  ��   : o      ���� 0 originfolder originFolder��  ��   7  B C B l     ��������  ��  ��   C  D E D l     �� F G��   F ( " Step 3: Choose destination folder    G � H H D   S t e p   3 :   C h o o s e   d e s t i n a t i o n   f o l d e r E  I J I l   % K���� K r    % L M L n    # N O N 1   ! #��
�� 
psxp O l   ! P���� P I   !���� Q
�� .sysostflalis    ��� null��   Q �� R��
�� 
prmp R m     S S � T T � S e l e c t   t h e   D E S T I N A T I O N   f o l d e r   w h e r e   o r g a n i z e d   f i l e s   w i l l   b e   c o p i e d :��  ��  ��   M o      ���� 0 
destfolder 
destFolder��  ��   J  U V U l     ��������  ��  ��   V  W X W l     �� Y Z��   Y 1 + Step 4: Choose folder format from dropdown    Z � [ [ V   S t e p   4 :   C h o o s e   f o l d e r   f o r m a t   f r o m   d r o p d o w n X  \ ] \ l  & 5 ^���� ^ r   & 5 _ ` _ J   & 1 a a  b c b m   & ) d d � e e  Y Y Y Y / Y Y Y Y - M M - D D c  f g f m   ) , h h � i i  Y Y Y Y / Y Y Y Y - M M g  j�� j m   , / k k � l l  C u s t o m . . .��   ` o      ���� 0 
formatlist 
formatList��  ��   ]  m n m l  6 Q o���� o r   6 Q p q p I  6 M�� r s
�� .gtqpchltns    @   @ ns   r o   6 9���� 0 
formatlist 
formatList s �� t u
�� 
prmp t m   : = v v � w w ^ C h o o s e   h o w   t o   o r g a n i z e   t h e   d e s t i n a t i o n   f o l d e r s : u �� x y
�� 
inSL x J   @ E z z  {�� { m   @ C | | � } }  Y Y Y Y / Y Y Y Y - M M - D D��   y �� ~��
�� 
mlsl ~ m   H I��
�� boovfals��   q o      ���� 0 formatchoice formatChoice��  ��   n   �  l     ��������  ��  ��   �  � � � l  R r ����� � Z   R r � ����� � =  R W � � � o   R U���� 0 formatchoice formatChoice � m   U V��
�� boovfals � k   Z n � �  � � � I  Z k�� � �
�� .sysodlogaskr        TEXT � m   Z ] � � � � � & O p e r a t i o n   c a n c e l e d . � �� � �
�� 
btns � J   ^ c � �  ��� � m   ^ a � � � � �  O K��   � �� ���
�� 
dflt � m   d e���� ��   �  ��� � L   l n����  ��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  s  ����� � r   s  � � � n   s { � � � 4   v {�� �
�� 
cobj � m   y z����  � o   s v���� 0 formatchoice formatChoice � o      ���� (0 folderformatchoice folderFormatChoice��  ��   �  � � � l  � � ����� � Z   � � � ����� � =  � � � � � o   � ����� (0 folderformatchoice folderFormatChoice � m   � � � � � � �  C u s t o m . . . � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � l  � � ����� � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � � E n t e r   c u s t o m   f o l d e r   s t r u c t u r e   u s i n g   y y y y ,   y y ,   m m ,   d d .  U s e   ' / '   f o r   s u b f o l d e r s .   E x a m p l e s :  "   y y y y / m m / d d  "   y y / m m � �� ���
�� 
dtxt � m   � � � � � � �  y y y y / m m / d d��  ��  ��   � o      ���� 0 custompattern customPattern��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Step 5: Start processing    � � � � 2   S t e p   5 :   S t a r t   p r o c e s s i n g �  � � � l  � � ����� � r   � � � � � m   � �����   � o      ���� 0 
totalcount 
totalCount��  ��   �  � � � l  � � ����� � r   � � � � � m   � � � � � � �   � o      ���� 0 progresslines progressLines��  ��   �  � � � l     ��������  ��  ��   �  � � � l  �� ����� � Q   �� � � � � k   �� � �  � � � r   � � � � � n   � � � � � 2  � ���
�� 
cpar � l  � � ����� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � � � � 
 f i n d   � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 originfolder originFolder � m   � � � � � � �    - t y p e   f��  ��  ��   � o      ���� 0 filelist fileList �  � � � l  � ���������  ��  ��   �  �� � X   �� ��~ � � Q   �� � � � � k   �w � �  � � � r   � � � � � c   � � � � � o   � ��}�} 0 fpath fPath � m   � ��|
�| 
ctxt � o      �{�{ 0 fpath fPath �  � � � l  � ��z�y�x�z  �y  �x   �  � � � l  � ��w � ��w   �  	 Get date    � � � �    G e t   d a t e �  � � � r   � � � � I  � ��v ��u
�v .sysoexecTEXT���     TEXT � b   � � �  � m   � � � 8 s t a t   - f   ' % S B '   - t   ' % Y - % m - % d '    n   � � 1   � ��t
�t 
strq o   � ��s�s 0 fpath fPath�u   � o      �r�r 0 creationdate creationDate �  r   n  	
	 7 �q
�q 
ctxt m  �p�p  m  �o�o 
 o  �n�n 0 creationdate creationDate o      �m�m 0 yyyy    r  - n  ) 7 )�l
�l 
ctxt m  !#�k�k  m  $(�j�j  o  �i�i 0 creationdate creationDate o      �h�h 0 yy    r  .C n  .? 7 1?�g
�g 
ctxt m  79�f�f  m  :>�e�e  o  .1�d�d 0 creationdate creationDate o      �c�c 0 mm    r  D[  n  DW!"! 7 GW�b#$
�b 
ctxt# m  MQ�a�a 	$ m  RV�`�` 
" o  DG�_�_ 0 creationdate creationDate  o      �^�^ 0 dd   %&% l \\�]�\�[�]  �\  �[  & '(' l \\�Z)*�Z  )   Determine folder path   * �++ ,   D e t e r m i n e   f o l d e r   p a t h( ,-, Z  \�./01. = \c232 o  \_�Y�Y (0 folderformatchoice folderFormatChoice3 m  _b44 �55  Y Y Y Y / Y Y Y Y - M M - D D/ r  f�676 b  f�898 b  f}:;: b  fy<=< b  fu>?> b  fq@A@ b  fmBCB o  fi�X�X 0 yyyy  C m  ilDD �EE  /A o  mp�W�W 0 yyyy  ? m  qtFF �GG  -= o  ux�V�V 0 mm  ; m  y|HH �II  -9 o  }��U�U 0 dd  7 o      �T�T 0 
folderpart 
folderPart0 JKJ = ��LML o  ���S�S (0 folderformatchoice folderFormatChoiceM m  ��NN �OO  Y Y Y Y / Y Y Y Y - M MK P�RP r  ��QRQ b  ��STS b  ��UVU b  ��WXW b  ��YZY o  ���Q�Q 0 yyyy  Z m  ��[[ �\\  /X o  ���P�P 0 yyyy  V m  ��]] �^^  -T o  ���O�O 0 mm  R o      �N�N 0 
folderpart 
folderPart�R  1 k  ��__ `a` r  ��bcb o  ���M�M 0 custompattern customPatternc o      �L�L 0 
folderpart 
folderParta ded r  ��fgf n ��hih I  ���Kj�J�K 0 replacetext replaceTextj klk m  ��mm �nn  y y y yl opo o  ���I�I 0 yyyy  p q�Hq o  ���G�G 0 
folderpart 
folderPart�H  �J  i  f  ��g o      �F�F 0 
folderpart 
folderParte rsr r  ��tut n ��vwv I  ���Ex�D�E 0 replacetext replaceTextx yzy m  ��{{ �||  y yz }~} o  ���C�C 0 yy  ~ �B o  ���A�A 0 
folderpart 
folderPart�B  �D  w  f  ��u o      �@�@ 0 
folderpart 
folderParts ��� r  ����� n ����� I  ���?��>�? 0 replacetext replaceText� ��� m  ���� ���  m m� ��� o  ���=�= 0 mm  � ��<� o  ���;�; 0 
folderpart 
folderPart�<  �>  �  f  ��� o      �:�: 0 
folderpart 
folderPart� ��9� r  ����� n ����� I  ���8��7�8 0 replacetext replaceText� ��� m  ���� ���  d d� ��� o  ���6�6 0 dd  � ��5� o  ���4�4 0 
folderpart 
folderPart�5  �7  �  f  ��� o      �3�3 0 
folderpart 
folderPart�9  - ��� l   �2�1�0�2  �1  �0  � ��� r   ��� b   	��� b   ��� o   �/�/ 0 
destfolder 
destFolder� o  �.�. 0 
folderpart 
folderPart� m  �� ���  /� o      �-�- 0 
folderpath 
folderPath� ��� I �,��+
�, .sysoexecTEXT���     TEXT� b  ��� m  �� ���  m k d i r   - p  � n  ��� 1  �*
�* 
strq� o  �)�) 0 
folderpath 
folderPath�+  � ��� l �(�'�&�(  �'  �&  � ��� r  /��� I +�%��$
�% .sysoexecTEXT���     TEXT� b  '��� m  !�� ���  b a s e n a m e  � n  !&��� 1  "&�#
�# 
strq� o  !"�"�" 0 fpath fPath�$  � o      �!�! 0 filename fileName� ��� r  0;��� b  07��� o  03� �  0 
folderpath 
folderPath� o  36�� 0 filename fileName� o      �� 0 destfilepath destFilePath� ��� l <<����  �  �  � ��� I <U���
� .sysoexecTEXT���     TEXT� b  <Q��� b  <I��� b  <E��� m  <?�� ���  c p   - p  � n  ?D��� 1  @D�
� 
strq� o  ?@�� 0 fpath fPath� m  EH�� ���   � n  IP��� 1  LP�
� 
strq� o  IL�� 0 destfilepath destFilePath�  � ��� l VV����  �  �  � ��� r  Vm��� b  Vi��� b  Ve��� b  Va��� b  V]��� o  VY�� 0 progresslines progressLines� o  Y\�� 0 filename fileName� m  ]`�� ���   !�  � o  ad�� 0 
folderpath 
folderPath� 1  eh�
� 
lnfd� o      �� 0 progresslines progressLines� ��� r  nw��� [  ns��� o  nq�� 0 
totalcount 
totalCount� m  qr�
�
 � o      �	�	 0 
totalcount 
totalCount�   � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg�   � r  ���� b  ���� b  ���� b  ���� b  ���� b  ���� o  ��� 0 progresslines progressLines� m  ���� ��� 'L   E R R O R :  � o  ���� 0 fpath fPath� m  ���� ���      � o  ���� 0 errmsg errMsg� 1  ���
� 
lnfd� o      �� 0 progresslines progressLines�~ 0 fpath fPath � o   � �� �  0 filelist fileList�   � R      �����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg��   � k  ���� ��� I ���� 
�� .sysodlogaskr        TEXT  b  �� m  �� � 'L   E r r o r :   o  ������ 0 errmsg errMsg ��
�� 
btns J  �� 	��	 m  ��

 �  O K��   ����
�� 
dflt m  ������ ��  � �� L  ������  ��  ��  ��   �  l     ��������  ��  ��    l     ����    	 Save log    �    S a v e   l o g  l ������ r  �� l ������ b  �� l ������ I ����
�� .earsffdralis        afdr m  ����
�� afdrdesk �� ��
�� 
rtyp  m  ����
�� 
ctxt��  ��  ��   m  ��!! �"" ( R e c u r s i v e C o p y L o g . t x t��  ��   o      ���� 0 logfilepath logFilePath��  ��   #$# l �%����% Q  �&'��& k  �(( )*) r  ��+,+ I ����-.
�� .rdwropenshor       file- 4  ����/
�� 
file/ o  ������ 0 logfilepath logFilePath. ��0��
�� 
perm0 m  ����
�� boovtrue��  , o      ���� 0 fileref fileRef* 121 I ����34
�� .rdwrwritnull���     ****3 o  ������ 0 progresslines progressLines4 ��56
�� 
refn5 o  ������ 0 fileref fileRef6 ��7��
�� 
wrat7 m  ������  ��  2 8��8 I ���9��
�� .rdwrclosnull���     ****9 o  ������ 0 fileref fileRef��  ��  ' R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  $ :;: l     ��������  ��  ��  ; <=< l <>����> I <��?@
�� .sysodlogaskr        TEXT? b  $ABA b   CDC b  EFE b  GHG b  IJI m  KK �LL '   D o n e !  J o  ���� 0 
totalcount 
totalCountH m  MM �NN     f i l e ( s )   c o p i e d .F o  ��
�� 
ret D o  ��
�� 
ret B m   #OO �PP f F u l l   l o g   s a v e d   t o   D e s k t o p   a s   ' R e c u r s i v e C o p y L o g . t x t '@ ��QR
�� 
btnsQ J  %*SS T��T m  %(UU �VV  O K��  R ��WX
�� 
dfltW m  +,���� X ��YZ
�� 
apprY m  -0[[ �\\  C o p y   C o m p l e t eZ ��]��
�� 
disp] m  36��
�� stic   ��  ��  ��  = ^_^ l     ��������  ��  ��  _ `a` l     ��������  ��  ��  a bcb l     ��de��  d   Helper function   e �ff     H e l p e r   f u n c t i o nc ghg i     iji I      ��k���� 0 replacetext replaceTextk lml o      ���� 0 find  m non o      ���� 0 replace  o p��p o      ���� 0 
sourcetext 
sourceText��  ��  j k      qq rsr r     tut o     ���� 0 find  u n     vwv 1    ��
�� 
txdlw 1    ��
�� 
ascrs xyx r    z{z n    	|}| 2    	��
�� 
citm} o    ���� 0 
sourcetext 
sourceText{ o      ���� 0 templist tempListy ~~ r    ��� o    ���� 0 replace  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr ��� r    ��� c    ��� o    ���� 0 templist tempList� m    ��
�� 
TEXT� o      ���� 0 newtext newText� ��� r    ��� m    �� ���  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� L     �� o    ���� 0 newtext newText��  h ���� l     ��������  ��  ��  ��       �������  � ������ 0 replacetext replaceText
�� .aevtoappnull  �   � ****� ��j���������� 0 replacetext replaceText�� ����� �  �������� 0 find  �� 0 replace  �� 0 
sourcetext 
sourceText��  � ������������ 0 find  �� 0 replace  �� 0 
sourcetext 
sourceText�� 0 templist tempList�� 0 newtext newText� ���������
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� !���,FO��-E�O���,FO��&E�O���,FO�� �����������
�� .aevtoappnull  �   � ****� k    <��  ��  6��  I��  \��  m��  ���  ���  ���  ���  ���  ��� �� #�� <����  ��  ��  � ����� 0 fpath fPath� 0 errmsg errMsg� n  �~ &�} *�| -�{�z�y @�x�w�v S�u d h k�t v�s |�r�q�p � ��o�n�m � ��l ��k�j�i ��h ��g ��f�e�d�c�b�a�`�_�^�]�\�[�Z�Y4DFH�XN[]m�W{����V���U�T����S�R�Q��
�P�O�N!�M�L�K�J�I�H�G�F�E�DKM�COU[�B�A�@
�~ 
btns
�} 
dflt
�| 
appr�{ 
�z .sysodlogaskr        TEXT
�y 
prmp
�x .sysostflalis    ��� null
�w 
psxp�v 0 originfolder originFolder�u 0 
destfolder 
destFolder�t 0 
formatlist 
formatList
�s 
inSL
�r 
mlsl
�q .gtqpchltns    @   @ ns  �p 0 formatchoice formatChoice�o 
�n 
cobj�m (0 folderformatchoice folderFormatChoice
�l 
dtxt
�k 
ttxt�j 0 custompattern customPattern�i 0 
totalcount 
totalCount�h 0 progresslines progressLines
�g 
strq
�f .sysoexecTEXT���     TEXT
�e 
cpar�d 0 filelist fileList
�c 
kocl
�b .corecnte****       ****
�a 
ctxt�` 0 creationdate creationDate�_ 0 yyyy  �^ 0 yy  �] �\ 0 mm  �[ 	�Z 
�Y 0 dd  �X 0 
folderpart 
folderPart�W 0 replacetext replaceText�V 0 
folderpath 
folderPath�U 0 filename fileName�T 0 destfilepath destFilePath
�S 
lnfd�R 0 errmsg errMsg�Q  
�P afdrdesk
�O 
rtyp
�N .earsffdralis        afdr�M 0 logfilepath logFilePath
�L 
file
�K 
perm
�J .rdwropenshor       file�I 0 fileref fileRef
�H 
refn
�G 
wrat
�F .rdwrwritnull���     ****
�E .rdwrclosnull���     ****�D  
�C 
ret 
�B 
disp
�A stic   �@ ��=���kv����� O*��l �,E�O*��l �,E�Oa a a mvE` O_ �a a a kva f� E` O_ f  a �a kv�ka  OhY hO_ a k/E` O_ a   a  a !a "l a #,E` $Y hOjE` %Oa &E` 'O�a (�a ),%a *%j +a ,-E` -O�_ -[a .a l /kh  ��a 0&E�Oa 1�a ),%j +E` 2O_ 2[a 0\[Zk\Za 2E` 3O_ 2[a 0\[Zm\Za 2E` 4O_ 2[a 0\[Z�\Za 52E` 6O_ 2[a 0\[Za 7\Za 82E` 9O_ a :  $_ 3a ;%_ 3%a <%_ 6%a =%_ 9%E` >Y y_ a ?  _ 3a @%_ 3%a A%_ 6%E` >Y U_ $E` >O)a B_ 3_ >m+ CE` >O)a D_ 4_ >m+ CE` >O)a E_ 6_ >m+ CE` >O)a F_ 9_ >m+ CE` >O�_ >%a G%E` HOa I_ Ha ),%j +Oa J�a ),%j +E` KO_ H_ K%E` LOa M�a ),%a N%_ La ),%j +O_ '_ K%a O%_ H%_ P%E` 'O_ %kE` %W X Q R_ 'a S%�%a T%�%_ P%E` '[OY�IW X Q Ra U�%�a Vkv�ka  OhOa Wa Xa 0l Ya Z%E` [O 5*a \_ [/a ]el ^E` _O_ 'a `_ _a aja  bO_ _j cW X d RhOa e_ %%a f%_ g%_ g%a h%�a ikv�k�a ja ka la m  ascr  ��ޭ