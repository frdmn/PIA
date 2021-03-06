FasdUAS 1.101.10   ��   ��    k             l     ��  ��    l f Simple AppleScript to automate the creation of PPTP VPN tunnels on OS X 10.9 Mavericks/10.10 Yosemite     � 	 	 �   S i m p l e   A p p l e S c r i p t   t o   a u t o m a t e   t h e   c r e a t i o n   o f   P P T P   V P N   t u n n e l s   o n   O S   X   1 0 . 9   M a v e r i c k s / 1 0 . 1 0   Y o s e m i t e   
  
 l     ��  ��    | v Based on affirmix' (http://blog.affirmix.com/2011/01/12/how-to-configure-a-vpn-in-mac-os-x-usingapplescript/) version     �   �   B a s e d   o n   a f f i r m i x '   ( h t t p : / / b l o g . a f f i r m i x . c o m / 2 0 1 1 / 0 1 / 1 2 / h o w - t o - c o n f i g u r e - a - v p n - i n - m a c - o s - x - u s i n g a p p l e s c r i p t / )   v e r s i o n      l     ��������  ��  ��        l     ��  ��    � � Make sure you've granted Accessability in the system preferences => Security => Privacy to Terminal.app (or iTerm.app) and "Script Editor.app"     �     M a k e   s u r e   y o u ' v e   g r a n t e d   A c c e s s a b i l i t y   i n   t h e   s y s t e m   p r e f e r e n c e s   = >   S e c u r i t y   = >   P r i v a c y   t o   T e r m i n a l . a p p   ( o r   i T e r m . a p p )   a n d   " S c r i p t   E d i t o r . a p p "      l     ��  ��    7 1 Also note that you need at least four arguments:     �   b   A l s o   n o t e   t h a t   y o u   n e e d   a t   l e a s t   f o u r   a r g u m e n t s :      l     ��  ��    O I $ osascript addVPN.scpt "<VPNname>" "<ServerIP>" "<VPNuser>" "<VPNpass>"     �   �   $   o s a s c r i p t   a d d V P N . s c p t   " < V P N n a m e > "   " < S e r v e r I P > "   " < V P N u s e r > "   " < V P N p a s s > "     !   l     �� " #��   " q k $ osascript addVPN.scpt "PIA (US-midwest)" "us-midwest.privateinternetaccess.com" "x12345678" "1234567890"    # � $ $ �   $   o s a s c r i p t   a d d V P N . s c p t   " P I A   ( U S - m i d w e s t ) "   " u s - m i d w e s t . p r i v a t e i n t e r n e t a c c e s s . c o m "   " x 1 2 3 4 5 6 7 8 "   " 1 2 3 4 5 6 7 8 9 0 " !  % & % l     ��������  ��  ��   &  ' ( ' i      ) * ) I     �� +��
�� .aevtoappnull  �   � **** + o      ���� 0 argv  ��   * k     , ,  - . - Z     4 / 0�� 1 / A      2 3 2 l     4���� 4 I    �� 5��
�� .corecnte****       **** 5 o     ���� 0 argv  ��  ��  ��   3 m    ����  0 k   
  6 6  7 8 7 I  
 �� 9��
�� .sysodlogaskr        TEXT 9 m   
  : : � ; ; D E r r o r :   n o t   e n o u g h   a r g u m e n t s   g i v e n !��   8  <�� < R    ���� =
�� .ascrerr ****      � ****��   = �� >��
�� 
errn > m    ��������  ��  ��   1 k    4 ? ?  @ A @ r     B C B l    D���� D n     E F E 4    �� G
�� 
cobj G m    ����  F o    ���� 0 argv  ��  ��   C o      ���� 0 vpnname   A  H I H r     & J K J l    $ L���� L n     $ M N M 4   ! $�� O
�� 
cobj O m   " #����  N o     !���� 0 argv  ��  ��   K o      ���� 0 	vpnserver   I  P Q P r   ' - R S R l  ' + T���� T n   ' + U V U 4   ( +�� W
�� 
cobj W m   ) *����  V o   ' (���� 0 argv  ��  ��   S o      ���� 0 vpnusername   Q  X�� X r   . 4 Y Z Y l  . 2 [���� [ n   . 2 \ ] \ 4   / 2�� ^
�� 
cobj ^ m   0 1����  ] o   . /���� 0 argv  ��  ��   Z o      ���� 0 vpnpassword  ��   .  _�� _ O   5 ` a ` k   9 b b  c d c Z   9 � e f���� e H   9 = g g l  9 < h���� h 1   9 <��
�� 
uien��  ��   f k   @ � i i  j k j O   @ t l m l k   D s n n  o p o I  D I������
�� .miscactvnull��� ��� null��  ��   p  q r q r   J Y s t s 5   J S�� u��
�� 
xppb u m   L O v v � w w H c o m . a p p l e . p r e f e r e n c e . u n i v e r s a l a c c e s s
�� kfrmID   t 1   S X��
�� 
xpcp r  x�� x I  Z s�� y z
�� .sysodlogaskr        TEXT y b   Z i { | { b   Z e } ~ } b   Z a  �  m   Z ] � � � � � z T h i s   s c r i p t   r e q u i r e s   a c c e s s   f o r   a s s i s t i v e   d e v i c e s   b e   e n a b l e d . � o   ] `��
�� 
ret  ~ o   a d��
�� 
ret  | m   e h � � � � � � T o   c o n t i n u e ,   c l i c k   t h e   O K   b u t t o n   a n d   e n t e r   a n   a d m i n i s t r a t i v e   p a s s w o r d   i n   t h e   s e c u r i t y   d i a l o g . z �� ���
�� 
disp � m   l o��
�� stic   ��  ��   m m   @ A � ��                                                                                  sprf  alis    ~  Macintosh HD               ���H+  ��jSystem Preferences.app                                         �ĳϠ�9        ����  	                Applications    ���      Ϡ�    ��j  1Macintosh HD:Applications: System Preferences.app   .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��   k  � � � r   u z � � � m   u v��
�� boovtrue � 1   v y��
�� 
uien �  � � � Z  { � � ����� � =  { � � � � 1   { ~��
�� 
uien � m   ~ ��
�� boovfals � L   � � � � m   � � � � � � �  U s e r   C a n c e l l e d��  ��   �  ��� � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��  ��  ��  ��   d  � � � O   � � � � � k   � � � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  ��� � r   � � � � � 5   � ��� ���
�� 
xppb � m   � � � � � � � 8 c o m . a p p l e . p r e f e r e n c e . n e t w o r k
�� kfrmID   � 1   � ���
�� 
xpcp��   � m   � � � ��                                                                                  sprf  alis    ~  Macintosh HD               ���H+  ��jSystem Preferences.app                                         �ĳϠ�9        ����  	                Applications    ���      Ϡ�    ��j  1Macintosh HD:Applications: System Preferences.app   .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��   �  ��� � O   � � � � O   � � � � k   � � �  � � � O   � � � � � k   � � � �  � � � I  � ��� ���
�� .prcsclicnull��� ��� uiel � 4   � ��� �
�� 
butT � m   � ����� ��   �  ��� � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��  ��   � 4   � ��� �
�� 
cwin � m   � �����  �  � � � O   �l � � � k   �k � �  � � � I  � ��� ���
�� .prcsclicnull��� ��� uiel � 4   � ��� �
�� 
popB � m   � ����� ��   �  � � � I  ��� ���
�� .prcsclicnull��� ��� uiel � n   � � � � 4  �� �
�� 
menI � m   � � � � �  V P N � n   � � � � 4   ��� �
�� 
menE � m   � ����  � 4   � ��� �
�� 
popB � m   � ����� ��   �  � � � I �� ���
�� .sysodelanull��� ��� nmbr � m  ���� ��   �  � � � r   � � � m  ��
�� boovtrue � n       � � � 1  ��
�� 
focu � 4  �� �
�� 
popB � m  ����  �  � � � I  *�� ���
�� .prcsclicnull��� ��� uiel � 4   &�� �
�� 
popB � m  $%���� ��   �  � � � I +A�� ���
�� .prcsclicnull��� ��� uiel � n  += � � � 4  6=�� �
�� 
menI � m  9< � � � � �  P P T P � n  +6 � � � 4  16� �
� 
menE � m  45�~�~  � 4  +1�} �
�} 
popB � m  /0�|�| ��   �  � � � I BG�{ ��z
�{ .sysodelanull��� ��� nmbr � m  BC�y�y �z   �  � � � r  HT � � � m  HI�x
�x boovtrue � n       � � � 1  OS�w
�w 
focu � 4  IO�v �
�v 
txtf � m  MN�u�u  �  � � � I UZ�t ��s
�t .prcskprsnull���     ctxt � o  UV�r�r 0 vpnname  �s   �  � � � I [e�q ��p
�q .prcsclicnull��� ��� uiel � 4  [a�o �
�o 
butT � m  _`�n�n �p   �  ��m � I fk�l ��k
�l .sysodelanull��� ��� nmbr � m  fg�j�j �k  �m   � n   � � � � � 4   � ��i �
�i 
sheE � m   � ��h�h  � 4   � ��g �
�g 
cwin � m   � ��f�f  �  � � � O  m� � � � k  {�    r  {� m  {|�e
�e boovtrue n       1  ���d
�d 
focu 4  |��c
�c 
txtf m  ���b�b  	 I ���a
�`
�a .prcskprsnull���     ctxt
 o  ���_�_ 0 	vpnserver  �`  	  I ���^�]
�^ .sysodelanull��� ��� nmbr m  ���\�\ �]    I ���[�Z
�[ .prcskprsnull���     ctxt 1  ���Y
�Y 
tab �Z    I ���X�W
�X .prcskprsnull���     ctxt o  ���V�V 0 vpnusername  �W    I ���U�T
�U .sysodelanull��� ��� nmbr m  ���S�S �T    I ���R�Q
�R .prcsclicnull��� ��� uiel 4  ���P
�P 
butT m  ���O�O �Q   �N I ���M�L
�M .sysodelanull��� ��� nmbr m  ���K�K �L  �N   � n  mx 4  sx�J
�J 
sgrp m  vw�I�I  4  ms�H 
�H 
cwin  m  qr�G�G  � !"! O  ��#$# k  ��%% &'& r  ��()( m  ���F
�F boovtrue) n      *+* 1  ���E
�E 
focu+ 4  ���D,
�D 
txtf, m  ���C�C ' -.- I ���B/�A
�B .prcskprsnull���     ctxt/ o  ���@�@ 0 vpnpassword  �A  . 010 I ���?2�>
�? .sysodelanull��� ��� nmbr2 m  ���=�= �>  1 343 I ���<5�;
�< .prcsclicnull��� ��� uiel5 4  ���:6
�: 
butT6 m  ���9�9 �;  4 7�87 I ���78�6
�7 .sysodelanull��� ��� nmbr8 m  ���5�5 �6  �8  $ n  ��9:9 4  ���4;
�4 
sheE; m  ���3�3 : 4  ���2<
�2 
cwin< m  ���1�1 " =�0= O  �>?> k  �@@ ABA I ��/C�.
�/ .prcsclicnull��� ��� uielC 4  ��-D
�- 
butTD m   �,�, �.  B E�+E I �*F�)
�* .sysodelanull��� ��� nmbrF m  �(�( �)  �+  ? 4  ���'G
�' 
cwinG m  ���&�& �0   � 4   � ��%H
�% 
prcsH m   � �II �JJ $ S y s t e m   P r e f e r e n c e s � m   � �KK�                                                                                  sevs  alis    �  Macintosh HD               ���H+  ��System Events.app                                              ���Ϛ*�        ����  	                CoreServices    ���      Ϛ�    ������  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��   a m   5 6LL�                                                                                  sevs  alis    �  Macintosh HD               ���H+  ��System Events.app                                              ���Ϛ*�        ����  	                CoreServices    ���      Ϛ�    ������  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��   ( M�$M l     �#�"�!�#  �"  �!  �$       � NO�   N �
� .aevtoappnull  �   � ****O � *��PQ�
� .aevtoappnull  �   � ****� 0 argv  �  P �� 0 argv  Q ,�� :��������L� ��� v�� ��
 ��	� �� ��I������ ���� ��� ���������
� .corecnte****       ****� 
� .sysodlogaskr        TEXT
� 
errn���
� 
cobj� 0 vpnname  � 0 	vpnserver  � 0 vpnusername  � 0 vpnpassword  
� 
uien
� .miscactvnull��� ��� null
� 
xppb
� kfrmID  
� 
xpcp
�
 
ret 
�	 
disp
� stic   
� .sysodelanull��� ��� nmbr
� 
prcs
� 
cwin
� 
butT� 
� .prcsclicnull��� ��� uiel
� 
sheE
�  
popB
�� 
menE
�� 
menI
�� 
focu
�� 
txtf
�� .prcskprsnull���     ctxt
�� 
sgrp
�� 
tab ��j  � �j O)��lhY ��k/E�O��l/E�O��m/E�O���/E�O��*�, V� 1*j O*�a a 0*a ,FOa _ %_ %a %a a l UOe*�,FO*�,f  	a Y hOkj Y hO� *j O*�a a 0*a ,FUO�[*a a /O*a k/ *a a /j  Okj UO*a k/a !k/ �*a "k/j  O*a "k/a #k/a $a %/j  Okj Oe*a "l/a &,FO*a "l/j  O*a "l/a #k/a $a '/j  Okj Oe*a (k/a &,FO�j )O*a k/j  Okj UO*a k/a *k/ ?e*a (k/a &,FO�j )Okj O_ +j )O�j )Okj O*a l/j  Okj UO*a k/a !k/ +e*a (k/a &,FO�j )Okj O*a k/j  Okj UO*a k/ *a m/j  Okj UUUU ascr  ��ޭ