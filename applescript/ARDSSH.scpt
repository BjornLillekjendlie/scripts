FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m      
 
 �    C u s t o m e r s 	 o      ���� 0 ardhero ARDHero��  ��        l    ����  r        m       �    s p i d e r  o      ����  0 ardheroaccount ARDHeroAccount��  ��        l     ��������  ��  ��        l    ����  r        m    	��
�� boovfals  o      ���� 0 	isvalidip 	isValidIP��  ��        l  ) ����  V   )    k   $      !   r    # " # " n    ! $ % $ 1    !��
�� 
ttxt % l    &���� & I   �� ' (
�� .sysodlogaskr        TEXT ' b     ) * ) b     + , + m     - - � . .  w h a t   i s   , o    ���� 0 ardhero ARDHero * m     / / � 0 0 : ' s   I P   a d d r e s s   o r   D o m a i n   N a m e ? ( �� 1��
�� 
dtxt 1 m     2 2 � 3 3  1 2 8 . 1 7 2 . 4 8 . 2 0��  ��  ��   # o      ���� 0 remoteip remoteIP !  4 5 4 l  $ $��������  ��  ��   5  6 7 6 r   $ ) 8 9 8 n  $ ' : ; : 1   % '��
�� 
txdl ; 1   $ %��
�� 
ascr 9 o      ���� 20 savedtextitemdelimiters savedTextItemDelimiters 7  < = < Q   * � > ? @ > k   - � A A  B C B r   - 0 D E D m   - .��
�� boovtrue E o      ���� 0 	isvalidip 	isValidIP C  F G F r   1 8 H I H J   1 4 J J  K�� K m   1 2 L L � M M  .��   I n      N O N 1   5 7��
�� 
txdl O 1   4 5��
�� 
ascr G  P Q P r   9 B R S R n  9 > T U T 2   : >��
�� 
citm U o   9 :���� 0 remoteip remoteIP S o      ���� 0 iplist IPList Q  V W V r   C N X Y X I  C J�� Z��
�� .corecnte****       **** Z o   C F���� 0 iplist IPList��   Y o      ���� 0 	countofip 	countOfIP W  [ \ [ Z  O ` ] ^���� ] >  O V _ ` _ o   O R���� 0 	countofip 	countOfIP ` m   R U����  ^ r   Y \ a b a m   Y Z��
�� boovfals b o      ���� 0 	isvalidip 	isValidIP��  ��   \  c d c Y   a � e�� f g�� e k   m � h h  i j i r   m ~ k l k c   m z m n m n   m v o p o 4   p v�� q
�� 
citm q 1   s u��
�� 
pidx p o   m p���� 0 iplist IPList n m   v y��
�� 
long l o      ���� 0 currentvalue currentValue j  r�� r Z   � s t���� s ?    � u v u o    ����� 0 currentvalue currentValue v m   � ����� � t r   � � w x w m   � ���
�� boovfals x o      ���� 0 	isvalidip 	isValidIP��  ��  ��  
�� 
pidx f m   d e����  g o   e h���� 0 	countofip 	countOfIP��   d  y�� y r   � � z { z o   � ����� 20 savedtextitemdelimiters savedTextItemDelimiters { n      | } | 1   � ���
�� 
txdl } 1   � ���
�� 
ascr��   ? R      ������
�� .ascrerr ****      � ****��  ��   @ l  � � ~  � ~ k   � � � �  � � � r   � � � � � o   � ����� 20 savedtextitemdelimiters savedTextItemDelimiters � n      � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr �  ��� � r   � � � � � m   � ���
�� boovfals � o      ���� 0 	isvalidip 	isValidIP��    K E In case something bogus happens, make sure the delimiter is set back    � � � � �   I n   c a s e   s o m e t h i n g   b o g u s   h a p p e n s ,   m a k e   s u r e   t h e   d e l i m i t e r   i s   s e t   b a c k =  � � � l  � ��� � ���   � * $ Check if they entered a domain name    � � � � H   C h e c k   i f   t h e y   e n t e r e d   a   d o m a i n   n a m e �  � � � Q   � � � � � � c   � � � � � n   � � � � � 4  � ��� �
�� 
cha  � m   � ������� � o   � ����� 0 remoteip remoteIP � m   � ���
�� 
long � R      ������
�� .ascrerr ****      � ****��  ��   � l  � � � � � � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 	isvalidip 	isValidIP � > 8if the last character isn't a number, it's a domain name    � � � � p i f   t h e   l a s t   c h a r a c t e r   i s n ' t   a   n u m b e r ,   i t ' s   a   d o m a i n   n a m e �  ��� � Z   �$ � ��� � � =  � � � � � o   � ����� 0 	isvalidip 	isValidIP � m   � ���
�� boovfals � I  � ��� � �
�� .sysodlogaskr        TEXT � l  � � ����� � b   � � � � � b   � � � � � m   � � � � � � � > T h i s   i s   n o t   a   v a l i d   I P   a d d r e s s : � o   � ���
�� 
ret  � o   � ����� 0 remoteip remoteIP��  ��   � �� � �
�� 
btns � m   � � � � � � �  T r y   A g a i n � �� ���
�� 
dflt � m   � � � � � � �  T r y   A g a i n��  ��   � k   �$ � �  � � � r   � � � � n   � � � � 1  
��
�� 
bhit � l  �
 ����� � I  �
�� � �
�� .sysodlogaskr        TEXT � l  � � ����� � b   � � � � � b   � � � � � m   � � � � � � � 8 I s   t h i s   t h e   c o r r e c t   a d d r e s s ? � o   � ���
�� 
ret  � o   � ����� 0 remoteip remoteIP��  ��   � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  N o �  ��� � m   � � � � � � �  Y e s��   � �� ���
�� 
dflt � m   � � � � �  Y e s��  ��  ��   � o      ���� 0 x   �  ��� � Z $ � ����� � =  � � � o  ���� 0 x   � m   � � � � �  N o � r    � � � m  ��
�� boovfals � o      ���� 0 	isvalidip 	isValidIP��  ��  ��  ��    =    � � � o    ���� 0 	isvalidip 	isValidIP � m    ��
�� boovfals��  ��     � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l *J ���� � O  *J � � � k  0I � �  � � � I 05�~�}�|
�~ .miscactvnull��� ��� null�}  �|   �  ��{ � I 6I�z ��y
�z .coredoscnull��� ��� ctxt � l 6E ��x�w � b  6E � � � b  6A � � � b  6? � � � b  6; � � � m  69 � � � � �  s s h   � o  9:�v�v  0 ardheroaccount ARDHeroAccount � m  ;> � � � � �  @ � o  ?@�u�u 0 remoteip remoteIP � m  AD � � � � � .   - R   5 9 0 0 : 1 2 7 . 0 . 0 . 1 : 5 9 0 0�x  �w  �y  �{   � m  *- � ��                                                                                      @ alis    Z  Lepton                     �8@PH+     �Terminal.app                                                     $����        ����  	                	Utilities     �8x�      ���       �   �  ,Lepton:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    L e p t o n  #Applications/Utilities/Terminal.app   / ��  ��  �  ��       �t � ��t   � �s
�s .aevtoappnull  �   � **** � �r ��q�p �o
�r .aevtoappnull  �   � **** � k    J          ��n�n  �q  �p    �m
�m 
pidx . 
�l �k�j - /�i 2�h�g�f�e�d�c L�b�a�`�_�^�]�\�[�Z�Y�X ��W�V ��U � � � � ��T�S � ��R � � ��Q�l 0 ardhero ARDHero�k  0 ardheroaccount ARDHeroAccount�j 0 	isvalidip 	isValidIP
�i 
dtxt
�h .sysodlogaskr        TEXT
�g 
ttxt�f 0 remoteip remoteIP
�e 
ascr
�d 
txdl�c 20 savedtextitemdelimiters savedTextItemDelimiters
�b 
citm�a 0 iplist IPList
�` .corecnte****       ****�_ 0 	countofip 	countOfIP�^ 
�] 
long�\ 0 currentvalue currentValue�[ ��Z  �Y  
�X 
cha 
�W 
ret 
�V 
btns
�U 
dflt
�T 
bhit�S 0 x  
�R .miscactvnull��� ��� null
�Q .coredoscnull��� ��� ctxt�oK�E�O�E�OfE�Oh�f ��%�%��l 	�,E�O��,E�O seE�O�kv��,FO�a -E` O_ j E` O_ a  fE�Y hO 3k_ kh  _ a �E/a &E` O_ a  fE�Y h[OY��O���,FW X  ���,FOfE�O �a i/a &W 
X  eE�O�f   a _ %�%a a a a  a  	Y <a !_ %�%a a "a #lva a $a  	a %,E` &O_ &a '  fE�Y h[OY��Oa ( *j )Oa *�%a +%�%a ,%j -Uascr  ��ޭ