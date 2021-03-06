FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��

--------------------------------------------
Entourage Exchange Setup 3.1.0
� Copyright 2008, 2009, 2010 William Smith
mecklists@comcast.net

Except where otherwise noted, this work is licensed under
http://creativecommons.org/licenses/by/3.0/

This script may be freely modified for personal or commercial
purposes but may not be republished for profit without prior consent.

If you find this script useful or have ideas for improving it,
please let me know. It should be compatible with both Entourage 2004,
2008 and Web Services Edition, including Kerberos support.

Thank you, Kristen Dietiker, for reporting a bug in Entourage 2008
where SSL for LDAP will always be enabled. I have tweaked the account
creation to honor the correct setting.

Thank you, Don Montalvo, for your suggestion to include
a seventh E-mail example for user short name.

Thank you, Mike Alexander, for your testing and feedback including
your suggestions for Exchange Server 2007 server address options
and reporting a bug in Entourage 2008 where search results for LDAP
will not change from 100.

--------------------------------------------

This script assists a user with the setup of his Exchange account
information. Below are basic instructions for using the script.
Consult the Entourage Exchange Setup 3.1.0 Administrator's Guide
for complete details.

1.	Customize the "network and  server properties" below with information
	appropriate to your network.

2. 	Customize the "email address properties" below with the format used
	in your environment.

3. 	a. 	Launch Microsoft Entourage under a Mac OS X account that has no
		Entourage identity found in
		~/Documents/Microsoft User Data/Office 2008 Identities or
		~/Documents/Microsoft User Data/Office 2004 Identities
	
	b. 	Close the Entourage Setup Assistant window and select
		Entourage --> Work Offline.
	
	c.	In the Finder, create a folder called "Entourage Setup Script"
		in /Library/<your company name>/ or any single location
		where all users have Read permissions.
	  
	d. 	Copy your customized script to the "Entourage Setup Script" folder.
		It should be saved as a compiled script, not an application.
		You can rename the script if you wish.
		
	e.	In Entourage select Tools --> Schedules... and create a New Schedule.
		Name: Exchange Setup
		When: At Startup
		Action: Run AppleScript, choose the saved script
			in the "Entourage Setup Script" folder.
		Click the "OK" button. Your script should be set to run
			at "Next Startup".
		
	f.	Configure any preferences, schedules, signatures, etc.
		This can include Default address format, Default time zone, fonts,
		encoding for attachments and more.
		
	g.	Quit Entourage.
		
	h.	Depending on your admin tools, you can push the script to the
		/Library folder of a new computer and the
		"~/Documents/Microsoft user Data/Office 200x Identities/Main Identity" folder
		to the "/System/Library/User Template/English.lproj/Documents/Microsoft User Data/
		Office 2008 Identities" folder or the "/System/Library/User Template/English.lproj/
		Documents/Microsoft User Data/Office 2004 Identities" folder.
		
		New users on a machine will have the pre-configured Main Identity
		folder copied to their home folders the first time they log in to a computer.
		
		The first time they launch Entourage, the "Exchange Setup" schedule
		will run the script.
		
		The script will disable the Schedule once it has run and will set Entourage
		to work online.
	  
	  
This script assumes the user's full name is in the form of "Last, First",
but is easily modified if the full name is in the form of "First Last".
It works especially well if the Mac is bound to Active Directory where
the user's short name will match his login name.

     � 	 	. 
 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 E n t o u r a g e   E x c h a n g e   S e t u p   3 . 1 . 0 
 �   C o p y r i g h t   2 0 0 8 ,   2 0 0 9 ,   2 0 1 0   W i l l i a m   S m i t h 
 m e c k l i s t s @ c o m c a s t . n e t 
 
 E x c e p t   w h e r e   o t h e r w i s e   n o t e d ,   t h i s   w o r k   i s   l i c e n s e d   u n d e r 
 h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y / 3 . 0 / 
 
 T h i s   s c r i p t   m a y   b e   f r e e l y   m o d i f i e d   f o r   p e r s o n a l   o r   c o m m e r c i a l 
 p u r p o s e s   b u t   m a y   n o t   b e   r e p u b l i s h e d   f o r   p r o f i t   w i t h o u t   p r i o r   c o n s e n t . 
 
 I f   y o u   f i n d   t h i s   s c r i p t   u s e f u l   o r   h a v e   i d e a s   f o r   i m p r o v i n g   i t , 
 p l e a s e   l e t   m e   k n o w .   I t   s h o u l d   b e   c o m p a t i b l e   w i t h   b o t h   E n t o u r a g e   2 0 0 4 , 
 2 0 0 8   a n d   W e b   S e r v i c e s   E d i t i o n ,   i n c l u d i n g   K e r b e r o s   s u p p o r t . 
 
 T h a n k   y o u ,   K r i s t e n   D i e t i k e r ,   f o r   r e p o r t i n g   a   b u g   i n   E n t o u r a g e   2 0 0 8 
 w h e r e   S S L   f o r   L D A P   w i l l   a l w a y s   b e   e n a b l e d .   I   h a v e   t w e a k e d   t h e   a c c o u n t 
 c r e a t i o n   t o   h o n o r   t h e   c o r r e c t   s e t t i n g . 
 
 T h a n k   y o u ,   D o n   M o n t a l v o ,   f o r   y o u r   s u g g e s t i o n   t o   i n c l u d e 
 a   s e v e n t h   E - m a i l   e x a m p l e   f o r   u s e r   s h o r t   n a m e . 
 
 T h a n k   y o u ,   M i k e   A l e x a n d e r ,   f o r   y o u r   t e s t i n g   a n d   f e e d b a c k   i n c l u d i n g 
 y o u r   s u g g e s t i o n s   f o r   E x c h a n g e   S e r v e r   2 0 0 7   s e r v e r   a d d r e s s   o p t i o n s 
 a n d   r e p o r t i n g   a   b u g   i n   E n t o u r a g e   2 0 0 8   w h e r e   s e a r c h   r e s u l t s   f o r   L D A P 
 w i l l   n o t   c h a n g e   f r o m   1 0 0 . 
 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
 T h i s   s c r i p t   a s s i s t s   a   u s e r   w i t h   t h e   s e t u p   o f   h i s   E x c h a n g e   a c c o u n t 
 i n f o r m a t i o n .   B e l o w   a r e   b a s i c   i n s t r u c t i o n s   f o r   u s i n g   t h e   s c r i p t . 
 C o n s u l t   t h e   E n t o u r a g e   E x c h a n g e   S e t u p   3 . 1 . 0   A d m i n i s t r a t o r ' s   G u i d e 
 f o r   c o m p l e t e   d e t a i l s . 
 
 1 . 	 C u s t o m i z e   t h e   " n e t w o r k   a n d     s e r v e r   p r o p e r t i e s "   b e l o w   w i t h   i n f o r m a t i o n 
 	 a p p r o p r i a t e   t o   y o u r   n e t w o r k . 
 
 2 .   	 C u s t o m i z e   t h e   " e m a i l   a d d r e s s   p r o p e r t i e s "   b e l o w   w i t h   t h e   f o r m a t   u s e d 
 	 i n   y o u r   e n v i r o n m e n t . 
 
 3 .   	 a .   	 L a u n c h   M i c r o s o f t   E n t o u r a g e   u n d e r   a   M a c   O S   X   a c c o u n t   t h a t   h a s   n o 
 	 	 E n t o u r a g e   i d e n t i t y   f o u n d   i n 
 	 	 ~ / D o c u m e n t s / M i c r o s o f t   U s e r   D a t a / O f f i c e   2 0 0 8   I d e n t i t i e s   o r 
 	 	 ~ / D o c u m e n t s / M i c r o s o f t   U s e r   D a t a / O f f i c e   2 0 0 4   I d e n t i t i e s 
 	 
 	 b .   	 C l o s e   t h e   E n t o u r a g e   S e t u p   A s s i s t a n t   w i n d o w   a n d   s e l e c t 
 	 	 E n t o u r a g e   - - >   W o r k   O f f l i n e . 
 	 
 	 c . 	 I n   t h e   F i n d e r ,   c r e a t e   a   f o l d e r   c a l l e d   " E n t o u r a g e   S e t u p   S c r i p t " 
 	 	 i n   / L i b r a r y / < y o u r   c o m p a n y   n a m e > /   o r   a n y   s i n g l e   l o c a t i o n 
 	 	 w h e r e   a l l   u s e r s   h a v e   R e a d   p e r m i s s i o n s . 
 	     
 	 d .   	 C o p y   y o u r   c u s t o m i z e d   s c r i p t   t o   t h e   " E n t o u r a g e   S e t u p   S c r i p t "   f o l d e r . 
 	 	 I t   s h o u l d   b e   s a v e d   a s   a   c o m p i l e d   s c r i p t ,   n o t   a n   a p p l i c a t i o n . 
 	 	 Y o u   c a n   r e n a m e   t h e   s c r i p t   i f   y o u   w i s h . 
 	 	 
 	 e . 	 I n   E n t o u r a g e   s e l e c t   T o o l s   - - >   S c h e d u l e s . . .   a n d   c r e a t e   a   N e w   S c h e d u l e . 
 	 	 N a m e :   E x c h a n g e   S e t u p 
 	 	 W h e n :   A t   S t a r t u p 
 	 	 A c t i o n :   R u n   A p p l e S c r i p t ,   c h o o s e   t h e   s a v e d   s c r i p t 
 	 	 	 i n   t h e   " E n t o u r a g e   S e t u p   S c r i p t "   f o l d e r . 
 	 	 C l i c k   t h e   " O K "   b u t t o n .   Y o u r   s c r i p t   s h o u l d   b e   s e t   t o   r u n 
 	 	 	 a t   " N e x t   S t a r t u p " . 
 	 	 
 	 f . 	 C o n f i g u r e   a n y   p r e f e r e n c e s ,   s c h e d u l e s ,   s i g n a t u r e s ,   e t c . 
 	 	 T h i s   c a n   i n c l u d e   D e f a u l t   a d d r e s s   f o r m a t ,   D e f a u l t   t i m e   z o n e ,   f o n t s , 
 	 	 e n c o d i n g   f o r   a t t a c h m e n t s   a n d   m o r e . 
 	 	 
 	 g . 	 Q u i t   E n t o u r a g e . 
 	 	 
 	 h . 	 D e p e n d i n g   o n   y o u r   a d m i n   t o o l s ,   y o u   c a n   p u s h   t h e   s c r i p t   t o   t h e 
 	 	 / L i b r a r y   f o l d e r   o f   a   n e w   c o m p u t e r   a n d   t h e 
 	 	 " ~ / D o c u m e n t s / M i c r o s o f t   u s e r   D a t a / O f f i c e   2 0 0 x   I d e n t i t i e s / M a i n   I d e n t i t y "   f o l d e r 
 	 	 t o   t h e   " / S y s t e m / L i b r a r y / U s e r   T e m p l a t e / E n g l i s h . l p r o j / D o c u m e n t s / M i c r o s o f t   U s e r   D a t a / 
 	 	 O f f i c e   2 0 0 8   I d e n t i t i e s "   f o l d e r   o r   t h e   " / S y s t e m / L i b r a r y / U s e r   T e m p l a t e / E n g l i s h . l p r o j / 
 	 	 D o c u m e n t s / M i c r o s o f t   U s e r   D a t a / O f f i c e   2 0 0 4   I d e n t i t i e s "   f o l d e r . 
 	 	 
 	 	 N e w   u s e r s   o n   a   m a c h i n e   w i l l   h a v e   t h e   p r e - c o n f i g u r e d   M a i n   I d e n t i t y 
 	 	 f o l d e r   c o p i e d   t o   t h e i r   h o m e   f o l d e r s   t h e   f i r s t   t i m e   t h e y   l o g   i n   t o   a   c o m p u t e r . 
 	 	 
 	 	 T h e   f i r s t   t i m e   t h e y   l a u n c h   E n t o u r a g e ,   t h e   " E x c h a n g e   S e t u p "   s c h e d u l e 
 	 	 w i l l   r u n   t h e   s c r i p t . 
 	 	 
 	 	 T h e   s c r i p t   w i l l   d i s a b l e   t h e   S c h e d u l e   o n c e   i t   h a s   r u n   a n d   w i l l   s e t   E n t o u r a g e 
 	 	 t o   w o r k   o n l i n e . 
 	     
 	     
 T h i s   s c r i p t   a s s u m e s   t h e   u s e r ' s   f u l l   n a m e   i s   i n   t h e   f o r m   o f   " L a s t ,   F i r s t " , 
 b u t   i s   e a s i l y   m o d i f i e d   i f   t h e   f u l l   n a m e   i s   i n   t h e   f o r m   o f   " F i r s t   L a s t " . 
 I t   w o r k s   e s p e c i a l l y   w e l l   i f   t h e   M a c   i s   b o u n d   t o   A c t i v e   D i r e c t o r y   w h e r e 
 t h e   u s e r ' s   s h o r t   n a m e   w i l l   m a t c h   h i s   l o g i n   n a m e . 
 
   
  
 l     ��������  ��  ��        l     ��  ��    0 *------------------------------------------     �   T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��  ��    * $ Begin network and server properties     �   H   B e g i n   n e t w o r k   a n d   s e r v e r   p r o p e r t i e s      l     ��  ��    0 *------------------------------------------     �   T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��������  ��  ��        j     �� �� 0 useews useEWS  m     ��
�� boovtrue     !   l     �� " #��   " N H Set this property to true only if using Entourage Web Services Edition.    # � $ $ �   S e t   t h i s   p r o p e r t y   t o   t r u e   o n l y   i f   u s i n g   E n t o u r a g e   W e b   S e r v i c e s   E d i t i o n . !  % & % l     ��������  ��  ��   &  ' ( ' j    �� )�� 0 usekerberos useKerberos ) m    ��
�� boovtrue (  * + * l     �� , -��   , = 7 Set this property to true only if using Entourage 2008    - � . . n   S e t   t h i s   p r o p e r t y   t o   t r u e   o n l y   i f   u s i n g   E n t o u r a g e   2 0 0 8 +  / 0 / l     �� 1 2��   1 B < and Macs in your environment are bound to Active Directory.    2 � 3 3 x   a n d   M a c s   i n   y o u r   e n v i r o n m e n t   a r e   b o u n d   t o   A c t i v e   D i r e c t o r y . 0  4 5 4 l     �� 6 7��   6 J D Kerberos support works only if your network is properly configured.    7 � 8 8 �   K e r b e r o s   s u p p o r t   w o r k s   o n l y   i f   y o u r   n e t w o r k   i s   p r o p e r l y   c o n f i g u r e d . 5  9 : 9 l     ��������  ��  ��   :  ; < ; j    �� =�� (0 kerberosdomainname kerberosDomainName = m     > > � ? ?  D O M A I N . L O C A L <  @ A @ l     �� B C��   B > 8 For most Kerberos environments the Kerberos domain name    C � D D p   F o r   m o s t   K e r b e r o s   e n v i r o n m e n t s   t h e   K e r b e r o s   d o m a i n   n a m e A  E F E l     �� G H��   G H B will be the same as the E-mail domain name. This property is used    H � I I �   w i l l   b e   t h e   s a m e   a s   t h e   E - m a i l   d o m a i n   n a m e .   T h i s   p r o p e r t y   i s   u s e d F  J K J l     �� L M��   L 7 1 only if the userKerberos property above is true.    M � N N b   o n l y   i f   t h e   u s e r K e r b e r o s   p r o p e r t y   a b o v e   i s   t r u e . K  O P O l     ��������  ��  ��   P  Q R Q j   	 �� S�� 0 
domainname 
domainName S m   	 
 T T � U U  d o m a i n . l o c a l R  V W V l     �� X Y��   X   example: "domain.com"    Y � Z Z ,   e x a m p l e :   " d o m a i n . c o m " W  [ \ [ l     ��������  ��  ��   \  ] ^ ] j    �� _�� 0 windowsdomain WindowsDomain _ m     ` ` � a a  D O M A I N ^  b c b l     �� d e��   d   example: "DOMAIN"    e � f f $   e x a m p l e :   " D O M A I N " c  g h g l     ��������  ��  ��   h  i j i j    �� k��  0 exchangeserver ExchangeServer k m     l l � m m f h t t p s : / / a u t o d i s c o v e r . d o m a i n . l o c a l / E W S / e x c h a n g e . a s p x j  n o n l     �� p q��   p + % example: "ExchangeServer.domain.com"    q � r r J   e x a m p l e :   " E x c h a n g e S e r v e r . d o m a i n . c o m " o  s t s l     ��������  ��  ��   t  u v u j    �� w�� >0 extendedexchangeserveraddress ExtendedExchangeServerAddress w m    ��
�� boovfals v  x y x l     �� z {��   z < 6 Are you connecting to an Exchange Server 2007 server?    { � | | l   A r e   y o u   c o n n e c t i n g   t o   a n   E x c h a n g e   S e r v e r   2 0 0 7   s e r v e r ? y  } ~ } l     ��  ���    7 1 If so, you may need to use the extended address:    � � � � b   I f   s o ,   y o u   m a y   n e e d   t o   u s e   t h e   e x t e n d e d   a d d r e s s : ~  � � � l     �� � ���   � < 6 "ExchangeServer.domain.com/exchange/user@domain.com".    � � � � l   " E x c h a n g e S e r v e r . d o m a i n . c o m / e x c h a n g e / u s e r @ d o m a i n . c o m " . �  � � � l     �� � ���   � ; 5 Set this to "true" if you need the extended address.    � � � � j   S e t   t h i s   t o   " t r u e "   i f   y o u   n e e d   t h e   e x t e n d e d   a d d r e s s . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� &0 exchangeserverssl ExchangeServerSSL � m    ��
�� boovtrue �  � � � l     �� � ���   � 9 3 If Exchange users will connect to a backend server    � � � � f   I f   E x c h a n g e   u s e r s   w i l l   c o n n e c t   t o   a   b a c k e n d   s e r v e r �  � � � l     �� � ���   � A ; within the same network then SSL is probably not required.    � � � � v   w i t h i n   t h e   s a m e   n e t w o r k   t h e n   S S L   i s   p r o b a b l y   n o t   r e q u i r e d . �  � � � l     �� � ���   � X R OWA connections will probably require SSL and this setting should be set to true.    � � � � �   O W A   c o n n e c t i o n s   w i l l   p r o b a b l y   r e q u i r e   S S L   a n d   t h i s   s e t t i n g   s h o u l d   b e   s e t   t o   t r u e . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� .0 exchangeserversslport ExchangeServerSSLPort � m    ����� �  � � � l     �� � ���   � 8 2 If ExchangeServerSSL is false set the port to 80.    � � � � d   I f   E x c h a n g e S e r v e r S S L   i s   f a l s e   s e t   t h e   p o r t   t o   8 0 . �  � � � l     �� � ���   � 8 2 If ExchangeServerSSL is true set the port to 443.    � � � � d   I f   E x c h a n g e S e r v e r S S L   i s   t r u e   s e t   t h e   p o r t   t o   4 4 3 . �  � � � l     �� � ���   � K E Use a different port number only if specified by your administrator.    � � � � �   U s e   a   d i f f e r e n t   p o r t   n u m b e r   o n l y   i f   s p e c i f i e d   b y   y o u r   a d m i n i s t r a t o r . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� (0 publicfolderserver PublicFolderServer � m     � � � � � 2 a u t o d i s c o v e r . d o m a i n . l o c a l �  � � � l     �� � ���   � 4 . example : "FreeBusyServer.domain.com/public/"    � � � � \   e x a m p l e   :   " F r e e B u s y S e r v e r . d o m a i n . c o m / p u b l i c / " �  � � � l     ��������  ��  ��   �  � � � j     �� ��� .0 publicfolderserverssl PublicFolderServerSSL � m    ��
�� boovtrue �  � � � l     �� � ���   � 9 3 If Exchange users will connect to a backend server    � � � � f   I f   E x c h a n g e   u s e r s   w i l l   c o n n e c t   t o   a   b a c k e n d   s e r v e r �  � � � l     �� � ���   � A ; within the same network then SSL is probably not required.    � � � � v   w i t h i n   t h e   s a m e   n e t w o r k   t h e n   S S L   i s   p r o b a b l y   n o t   r e q u i r e d . �  � � � l     �� � ���   � X R OWA connections will probably require SSL and this setting should be set to true.    � � � � �   O W A   c o n n e c t i o n s   w i l l   p r o b a b l y   r e q u i r e   S S L   a n d   t h i s   s e t t i n g   s h o u l d   b e   s e t   t o   t r u e . �  � � � l     ��������  ��  ��   �  � � � j   ! #�� ��� 60 publicfolderserversslport PublicFolderServerSSLPort � m   ! "����� �  � � � l     �� � ���   � < 6 If PublicFolderServerSSL is false set the port to 80.    � � � � l   I f   P u b l i c F o l d e r S e r v e r S S L   i s   f a l s e   s e t   t h e   p o r t   t o   8 0 . �  � � � l     �� � ���   � < 6 If PublicFolderServerSSL is true set the port to 443.    � � � � l   I f   P u b l i c F o l d e r S e r v e r S S L   i s   t r u e   s e t   t h e   p o r t   t o   4 4 3 . �  � � � l     �� � ���   � K E Use a different port number only if specified by your administrator.    � � � � �   U s e   a   d i f f e r e n t   p o r t   n u m b e r   o n l y   i f   s p e c i f i e d   b y   y o u r   a d m i n i s t r a t o r . �  � � � l     ��������  ��  ��   �  � � � j   $ (�� ��� 0 
ldapserver 
LDAPServer � m   $ ' � � � � �  d c . d o m a i n . l o c a l �  � � � l     �� � ���   � 0 * example: "GlobalCatalogServer.domain.com"    � � � � T   e x a m p l e :   " G l o b a l C a t a l o g S e r v e r . d o m a i n . c o m " �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , OWA connections cannot use the OWA address.    � � � � X   O W A   c o n n e c t i o n s   c a n n o t   u s e   t h e   O W A   a d d r e s s . �  � � � l     ��������  ��  ��   �  � � � j   ) +�� ��� 80 ldaprequiresauthentication LDAPRequiresAuthentication � m   ) *��
�� boovtrue �    l     ����   L F This will almost always be true. The LDAP server in a Windows network    � �   T h i s   w i l l   a l m o s t   a l w a y s   b e   t r u e .   T h e   L D A P   s e r v e r   i n   a   W i n d o w s   n e t w o r k  l     ����   S M will be a Global Catalog server, which is separate from the Exchange Server.    �		 �   w i l l   b e   a   G l o b a l   C a t a l o g   s e r v e r ,   w h i c h   i s   s e p a r a t e   f r o m   t h e   E x c h a n g e   S e r v e r . 

 l     ����   E ? OWA connections can not use the OWA address with this setting.    � ~   O W A   c o n n e c t i o n s   c a n   n o t   u s e   t h e   O W A   a d d r e s s   w i t h   t h i s   s e t t i n g .  l     ��������  ��  ��    j   , .���� 0 ldapserverssl LDAPServerSSL m   , -��
�� boovfals  l     ����   9 3 If Exchange users will connect to a backend server    � f   I f   E x c h a n g e   u s e r s   w i l l   c o n n e c t   t o   a   b a c k e n d   s e r v e r  l     ����   A ; within the same network then SSL is probably not required.    � v   w i t h i n   t h e   s a m e   n e t w o r k   t h e n   S S L   i s   p r o b a b l y   n o t   r e q u i r e d .  l     �� !��    E ? OWA connections can not use the OWA address with this setting.   ! �"" ~   O W A   c o n n e c t i o n s   c a n   n o t   u s e   t h e   O W A   a d d r e s s   w i t h   t h i s   s e t t i n g . #$# l     ��������  ��  ��  $ %&% j   / 3��'�� &0 ldapserversslport LDAPServerSSLPort' m   / 2�����& ()( l     ��*+��  * 6 0 If LDAPServerSSL is false set the port to 3268.   + �,, `   I f   L D A P S e r v e r S S L   i s   f a l s e   s e t   t h e   p o r t   t o   3 2 6 8 .) -.- l     ��/0��  / 5 / If LDAPServerSSL is true set the port to 3269.   0 �11 ^   I f   L D A P S e r v e r S S L   i s   t r u e   s e t   t h e   p o r t   t o   3 2 6 9 .. 232 l     ��45��  4 K E Use a different port number only if specified by your administrator.   5 �66 �   U s e   a   d i f f e r e n t   p o r t   n u m b e r   o n l y   i f   s p e c i f i e d   b y   y o u r   a d m i n i s t r a t o r .3 787 l     ��������  ��  ��  8 9:9 l     ��;<��  ; D > OWA connections cannot use the OWA address with this setting.   < �== |   O W A   c o n n e c t i o n s   c a n n o t   u s e   t h e   O W A   a d d r e s s   w i t h   t h i s   s e t t i n g .: >?> l     ����~��  �  �~  ? @A@ j   4 :�}B�} (0 ldapmaximumresults LDAPMaximumResultsB m   4 7�|�| dA CDC l     �{EF�{  E E ? When searching the Global Address list, this number determines   F �GG ~   W h e n   s e a r c h i n g   t h e   G l o b a l   A d d r e s s   l i s t ,   t h i s   n u m b e r   d e t e r m i n e sD HIH l     �zJK�z  J 0 * the maximum number of entries to display.   K �LL T   t h e   m a x i m u m   n u m b e r   o f   e n t r i e s   t o   d i s p l a y .I MNM l     �y�x�w�y  �x  �w  N OPO j   ; A�vQ�v  0 ldapsearchbase LDAPSearchBaseQ m   ; >RR �SS  P TUT l     �uVW�u  V + % example: "cn=users,dc=domain,dc=com"   W �XX J   e x a m p l e :   " c n = u s e r s , d c = d o m a i n , d c = c o m "U YZY l     �t�s�r�t  �s  �r  Z [\[ l     �q]^�q  ] @ : Search base will be optional in many environments and its   ^ �__ t   S e a r c h   b a s e   w i l l   b e   o p t i o n a l   i n   m a n y   e n v i r o n m e n t s   a n d   i t s\ `a` l     �pbc�p  b D > format will vary greatly. Experiment first connecting without   c �dd |   f o r m a t   w i l l   v a r y   g r e a t l y .   E x p e r i m e n t   f i r s t   c o n n e c t i n g   w i t h o u ta efe l     �ogh�o  g , & entering the search base information.   h �ii L   e n t e r i n g   t h e   s e a r c h   b a s e   i n f o r m a t i o n .f jkj l     �n�m�l�n  �m  �l  k lml j   B F�kn�k 0 	scheduled  n m   B C�j
�j boovfalsm opo l     �iqr�i  q Y S Exchange accounts don't require that the "Send & Receive All" schedule be enabled.   r �ss �   E x c h a n g e   a c c o u n t s   d o n ' t   r e q u i r e   t h a t   t h e   " S e n d   &   R e c e i v e   A l l "   s c h e d u l e   b e   e n a b l e d .p tut l     �hvw�h  v _ Y Change this setting to true if the user will also be connecting to POP or IMAP accounts.   w �xx �   C h a n g e   t h i s   s e t t i n g   t o   t r u e   i f   t h e   u s e r   w i l l   a l s o   b e   c o n n e c t i n g   t o   P O P   o r   I M A P   a c c o u n t s .u yzy l     �g�f�e�g  �f  �e  z {|{ j   G M�d}�d 0 errormessage errorMessage} m   G J~~ � � S e t u p   o f   y o u r   a c c o u n t   f a i l e d .   P l e a s e   c o n t a c t   y o u r   h e l p d e s k   f o r   a s s i s t a n c e .| ��� l     �c���c  � O I Customize this error message for your users if their account setup fails   � ��� �   C u s t o m i z e   t h i s   e r r o r   m e s s a g e   f o r   y o u r   u s e r s   i f   t h e i r   a c c o u n t   s e t u p   f a i l s� ��� l     �b�a�`�b  �a  �`  � ��� l     �_���_  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �^���^  �   End server properties   � ��� ,   E n d   s e r v e r   p r o p e r t i e s� ��� l     �]���]  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �\�[�Z�\  �[  �Z  � ��� l     �Y���Y  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �X���X  �   Begin get user name   � ��� (   B e g i n   g e t   u s e r   n a m e� ��� l     �W���W  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �V�U�T�V  �U  �T  � ��� l     �S���S  � W Q User information is pulled from the account settings of the current user account   � ��� �   U s e r   i n f o r m a t i o n   i s   p u l l e d   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   c u r r e n t   u s e r   a c c o u n t� ��� l     �R�Q�P�R  �Q  �P  � ��� l    ��O�N� O     ��� k    �� ��� r    ��� n    	��� 1    	�M
�M 
pnam� 1    �L
�L 
curu� o      �K�K 0 	shortname 	shortName� ��J� r    ��� n    ��� 1    �I
�I 
fnam� 1    �H
�H 
curu� o      �G�G 0 fullname fullName�J  � m     ���                                                                                  sevs  alis    z  OS HD                      �ܳ�H+     System Events.app                                               ��7��        ����  	                CoreServices    ����      �8'7          �   �  3OS HD:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p    O S   H D  -System/Library/CoreServices/System Events.app   / ��  �O  �N  � ��� l     �F�E�D�F  �E  �D  � ��� l     �C���C  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �B���B  �   End get user name   � ��� $   E n d   g e t   u s e r   n a m e� ��� l     �A���A  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �@�?�>�@  �?  �>  � ��� l     �=���=  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �<���<  � %  Begin email address properties   � ��� >   B e g i n   e m a i l   a d d r e s s   p r o p e r t i e s� ��� l     �;���;  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �:�9�8�:  �9  �8  � ��� l     �7���7  � 8 2 Email address formats vary between organizations.   � ��� d   E m a i l   a d d r e s s   f o r m a t s   v a r y   b e t w e e n   o r g a n i z a t i o n s .� ��� l     �6���6  � H B Seven common examples are give below but only one should be used.   � ��� �   S e v e n   c o m m o n   e x a m p l e s   a r e   g i v e   b e l o w   b u t   o n l y   o n e   s h o u l d   b e   u s e d .� ��� l     �5���5  � U O The rest should be commented out by adding "-- " to the beginning of the line.   � ��� �   T h e   r e s t   s h o u l d   b e   c o m m e n t e d   o u t   b y   a d d i n g   " - -   "   t o   t h e   b e g i n n i n g   o f   t h e   l i n e .� ��� l     �4���4  � E ? Your email address format may differ from all of these. If so,   � ��� ~   Y o u r   e m a i l   a d d r e s s   f o r m a t   m a y   d i f f e r   f r o m   a l l   o f   t h e s e .   I f   s o ,� ��� l     �3���3  � P J you'll need to determine the proper script syntax and add your own entry.   � ��� �   y o u ' l l   n e e d   t o   d e t e r m i n e   t h e   p r o p e r   s c r i p t   s y n t a x   a n d   a d d   y o u r   o w n   e n t r y .� � � l     �2�1�0�2  �1  �0     l     �/�/   N H example 1: first.last@domain.com if full name displays as "Last, First"    � �   e x a m p l e   1 :   f i r s t . l a s t @ d o m a i n . c o m   i f   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "  l     �.	�.   5 / set AppleScript's text item delimiters to ", "   	 �

 ^   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " ,   "  l     �-�-   / ) set firstName to text item 2 of fullName    � R   s e t   f i r s t N a m e   t o   t e x t   i t e m   2   o f   f u l l N a m e  l     �,�,   . ( set lastName to text item 1 of fullName    � P   s e t   l a s t N a m e   t o   t e x t   i t e m   1   o f   f u l l N a m e  l     �+�+   3 - set AppleScript's text item delimiters to ""    � Z   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " "  l     �*�*   H B set emailAddress to firstName & "." & lastName & "@" & domainName    � �   s e t   e m a i l A d d r e s s   t o   f i r s t N a m e   &   " . "   &   l a s t N a m e   &   " @ "   &   d o m a i n N a m e   l     �)�(�'�)  �(  �'    !"! l     �&#$�&  # M G example 2: first.last@domain.com if full name displays as "First Last"   $ �%% �   e x a m p l e   2 :   f i r s t . l a s t @ d o m a i n . c o m   i f   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "" &'& l     �%()�%  ( 4 . set AppleScript's text item delimiters to " "   ) �** \   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   "   "' +,+ l     �$-.�$  - / ) set firstName to text item 1 of fullName   . �// R   s e t   f i r s t N a m e   t o   t e x t   i t e m   1   o f   f u l l N a m e, 010 l     �#23�#  2 . ( set lastName to text item 2 of fullName   3 �44 P   s e t   l a s t N a m e   t o   t e x t   i t e m   2   o f   f u l l N a m e1 565 l     �"78�"  7 3 - set AppleScript's text item delimiters to ""   8 �99 Z   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " "6 :;: l     �!<=�!  < H B set emailAddress to firstName & "." & lastName & "@" & domainName   = �>> �   s e t   e m a i l A d d r e s s   t o   f i r s t N a m e   &   " . "   &   l a s t N a m e   &   " @ "   &   d o m a i n N a m e; ?@? l     � ���   �  �  @ ABA l     �CD�  C H B example 3: first@domain.com if full name displays as "First Last"   D �EE �   e x a m p l e   3 :   f i r s t @ d o m a i n . c o m   i f   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "B FGF l     �HI�  H 5 / set AppleScript's text item delimiters to ", "   I �JJ ^   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " ,   "G KLK l     �MN�  M / ) set firstName to text item 1 of fullName   N �OO R   s e t   f i r s t N a m e   t o   t e x t   i t e m   1   o f   f u l l N a m eL PQP l     �RS�  R 3 - set AppleScript's text item delimiters to ""   S �TT Z   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " "Q UVU l     �WX�  W 7 1 set emailAddress to firstName & "@" & domainName   X �YY b   s e t   e m a i l A d d r e s s   t o   f i r s t N a m e   &   " @ "   &   d o m a i n N a m eV Z[Z l     ����  �  �  [ \]\ l     �^_�  ^ I C example 4: first@domain.com if full name displays as "Last, First"   _ �`` �   e x a m p l e   4 :   f i r s t @ d o m a i n . c o m   i f   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "] aba l     �cd�  c 5 / set AppleScript's text item delimiters to ", "   d �ee ^   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " ,   "b fgf l     �hi�  h / ) set firstName to text item 2 of fullName   i �jj R   s e t   f i r s t N a m e   t o   t e x t   i t e m   2   o f   f u l l N a m eg klk l     �mn�  m 3 - set AppleScript's text item delimiters to ""   n �oo Z   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " "l pqp l     �rs�  r 6 0 set emailAddress to lastName & "@" & domainName   s �tt `   s e t   e m a i l A d d r e s s   t o   l a s t N a m e   &   " @ "   &   d o m a i n N a m eq uvu l     ����  �  �  v wxw l     �yz�  y H B example 5: flast@domain.com if full name displays as "First Last"   z �{{ �   e x a m p l e   5 :   f l a s t @ d o m a i n . c o m   i f   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "x |}| l     �~�  ~ 4 . set AppleScript's text item delimiters to " "    ��� \   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   "   "} ��� l     ����  � / ) set firstName to text item 1 of fullName   � ��� R   s e t   f i r s t N a m e   t o   t e x t   i t e m   1   o f   f u l l N a m e� ��� l     �
���
  � . ( set lastName to text item 2 of fullName   � ��� P   s e t   l a s t N a m e   t o   t e x t   i t e m   2   o f   f u l l N a m e� ��� l     �	���	  � 3 - set AppleScript's text item delimiters to ""   � ��� Z   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " "� ��� l     ����  � S M set emailAddress to (character 1 of firstName) & lastName & "@" & domainName   � ��� �   s e t   e m a i l A d d r e s s   t o   ( c h a r a c t e r   1   o f   f i r s t N a m e )   &   l a s t N a m e   &   " @ "   &   d o m a i n N a m e� ��� l     ����  �  �  � ��� l     ����  � I C example 6: flast@domain.com if full name displays as "Last, First"   � ��� �   e x a m p l e   6 :   f l a s t @ d o m a i n . c o m   i f   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "� ��� l     ����  � 5 / set AppleScript's text item delimiters to ", "   � ��� ^   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " ,   "� ��� l     ����  � / ) set firstName to text item 2 of fullName   � ��� R   s e t   f i r s t N a m e   t o   t e x t   i t e m   2   o f   f u l l N a m e� ��� l     ����  � . ( set lastName to text item 1 of fullName   � ��� P   s e t   l a s t N a m e   t o   t e x t   i t e m   1   o f   f u l l N a m e� ��� l     � ���   � 3 - set AppleScript's text item delimiters to ""   � ��� Z   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " "� ��� l     ������  � R L set emailAddress to (character 1 of firstName & lastName & "@" & domainName   � ��� �   s e t   e m a i l A d d r e s s   t o   ( c h a r a c t e r   1   o f   f i r s t N a m e   &   l a s t N a m e   &   " @ "   &   d o m a i n N a m e� ��� l     ��������  ��  ��  � ��� l     ������  � "  example 7: short@domain.com   � ��� 8   e x a m p l e   7 :   s h o r t @ d o m a i n . c o m� ��� l    ������ r     ��� b    ��� b    ��� o    ���� 0 	shortname 	shortName� m    �� ���  @� o    ���� 0 
domainname 
domainName� o      ���� 0 emailaddress emailAddress��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  � #  End email address properties   � ��� :   E n d   e m a i l   a d d r e s s   p r o p e r t i e s� ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  � , & Exchange Server 2007 extended address   � ��� L   E x c h a n g e   S e r v e r   2 0 0 7   e x t e n d e d   a d d r e s s� ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� l  ! >������ Z   ! >������� =  ! (��� o   ! &���� >0 extendedexchangeserveraddress ExtendedExchangeServerAddress� m   & '��
�� boovtrue� r   + :��� b   + 4��� b   + 2��� o   + 0����  0 exchangeserver ExchangeServer� m   0 1�� ���  / e x c h a n g e /� o   2 3���� 0 emailaddress emailAddress� o      ����  0 exchangeserver ExchangeServer��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 0 *------------------------------------------   � �   T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -�  l     ����     End get user name    � $   E n d   g e t   u s e r   n a m e  l     ��	��   0 *------------------------------------------   	 �

 T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     ��������  ��  ��    l     ����   0 *------------------------------------------    � T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     ����     Begin setup check    � $   B e g i n   s e t u p   c h e c k  l     ����   0 *------------------------------------------    � T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     ��������  ��  ��    l     �� !��    M G Is Entourage already configured? This section checks for the existence   ! �"" �   I s   E n t o u r a g e   a l r e a d y   c o n f i g u r e d ?   T h i s   s e c t i o n   c h e c k s   f o r   t h e   e x i s t e n c e #$# l     ��%&��  % J D of an Exchange Server account already in Entourage. It assumes that   & �'' �   o f   a n   E x c h a n g e   S e r v e r   a c c o u n t   a l r e a d y   i n   E n t o u r a g e .   I t   a s s u m e s   t h a t$ ()( l     ��*+��  * 8 2 users will have only one Exchange Server account.   + �,, d   u s e r s   w i l l   h a v e   o n l y   o n e   E x c h a n g e   S e r v e r   a c c o u n t .) -.- l     ��������  ��  ��  . /0/ l  ? �1����1 O   ? �232 Z   C �45����4 =  C M676 l  C K8����8 I  C K��9��
�� .coredoexbool       obj 9 4   C G��:
�� 
ExAc: m   E F���� ��  ��  ��  7 m   K L��
�� boovtrue5 k   P �;; <=< r   P r>?> I  P n��@A
�� .sysodlogaskr        TEXT@ m   P QBB �CC � E n t o u r a g e   i s   a l r e a d y   c o n f i g u r e d   w i t h   a n   e m a i l   a c c o u n t .   A r e   y o u   s u r e   y o u   w a n t   t o   s e t   u p   a n o t h e r   e m a i l   a c c o u n t ?A ��DE
�� 
btnsD J   R VFF GHG m   R SII �JJ  Y e sH K��K m   S TLL �MM , N o ,   j u s t   u s e   E n t o u r a g e��  E ��NO
�� 
dfltN J   Y ^PP Q��Q m   Y \RR �SS , N o ,   j u s t   u s e   E n t o u r a g e��  O ��TU
�� 
dispT m   a b���� U ��V��
�� 
apprV m   e hWW �XX  A l e r t !��  ? o      ���� 0 	theanswer 	theAnswer= Y��Y Z   s �Z[����Z =  s ~\]\ n   s z^_^ 1   v z��
�� 
bhit_ o   s v���� 0 	theanswer 	theAnswer] m   z }`` �aa , N o ,   j u s t   u s e   E n t o u r a g e[ k   � �bb cdc I  � ���ef
�� .sysodlogaskr        TEXTe m   � �gg �hh ~ O K .   N e x t   t i m e   y o u   c a n   j u s t   l a u n c h   M i c r o s o f t   E n t o u r a g e   d i r e c t l y .f ��ij
�� 
btnsi J   � �kk l��l m   � �mm �nn  O K��  j ��op
�� 
dflto J   � �qq r��r m   � �ss �tt  O K��  p ��uv
�� 
dispu m   � ����� v ��w��
�� 
apprw m   � �xx �yy . F o r   y o u r   i n f o r m a t i o n . . .��  d z��z l  � �{|}{ L   � �����  |   exits the script   } �~~ "   e x i t s   t h e   s c r i p t��  ��  ��  ��  ��  ��  3 m   ? @                                                                                  OPIM  alis    �  OS HD                      �ܳ�H+   ��Microsoft Entourage.app                                         �E�v�&        ����  	                Microsoft Office 2008     ����      �v�v     ��  +  @OS HD:Applications:Microsoft Office 2008:Microsoft Entourage.app  0  M i c r o s o f t   E n t o u r a g e . a p p    O S   H D  :Applications/Microsoft Office 2008/Microsoft Entourage.app  / ��  ��  ��  0 ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  �   End setup check   � ���     E n d   s e t u p   c h e c k� ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  �   Begin account setup   � ��� (   B e g i n   a c c o u n t   s e t u p� ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� l  �~������ Q   �~����� k   �u�� ��� l  � ���������  ��  ��  � ��� l  � �������  � � �	set verifyEmail to display dialog "Please verify that your Merrill email address is correct." default answer emailAddress with icon 2 buttons {"Cancel", "OK"} default button {"OK"}   � ���j 	 s e t   v e r i f y E m a i l   t o   d i s p l a y   d i a l o g   " P l e a s e   v e r i f y   t h a t   y o u r   M e r r i l l   e m a i l   a d d r e s s   i s   c o r r e c t . "   d e f a u l t   a n s w e r   e m a i l A d d r e s s   w i t h   i c o n   2   b u t t o n s   { " C a n c e l " ,   " O K " }   d e f a u l t   b u t t o n   { " O K " }� ��� l  � �������  � 7 1	set emailAddress to text returned of verifyEmail   � ��� b 	 s e t   e m a i l A d d r e s s   t o   t e x t   r e t u r n e d   o f   v e r i f y E m a i l� ��� l  � ���������  ��  ��  � ��� l  � �������  � � �	set verifyServer to display dialog "Please verify that your Exchange Server name is correct." default answer ExchangeServer with icon 2 buttons {"Cancel", "OK"} default button {"OK"}   � ���n 	 s e t   v e r i f y S e r v e r   t o   d i s p l a y   d i a l o g   " P l e a s e   v e r i f y   t h a t   y o u r   E x c h a n g e   S e r v e r   n a m e   i s   c o r r e c t . "   d e f a u l t   a n s w e r   E x c h a n g e S e r v e r   w i t h   i c o n   2   b u t t o n s   { " C a n c e l " ,   " O K " }   d e f a u l t   b u t t o n   { " O K " }� ��� l  � �������  � : 4	set ExchangeServer to text returned of verifyServer   � ��� h 	 s e t   E x c h a n g e S e r v e r   t o   t e x t   r e t u r n e d   o f   v e r i f y S e r v e r� ��� l  � ���������  ��  ��  � ��� O   �s��� k   �r�� ��� I  � ������
�� .miscactvnull��� ��� null��  �  � ��� Z   � ���~�� =  � ���� o   � ��}�} 0 useews useEWS� m   � ��|
�| boovfals� r   ����� I  �}�{�z�
�{ .corecrel****      � null�z  � �y��
�y 
kocl� m   � ��x
�x 
ExAc� �w��v
�w 
prdt� K   �w�� �u��
�u 
pnam� b   � ���� m   � ��� ���  M a i l b o x   -  � o   � ��t�t 0 fullname fullName� �s��
�s 
ExID� o   � ��r�r 0 	shortname 	shortName� �q��
�q 
ExDo� o   � ��p�p 0 windowsdomain WindowsDomain� �o��
�o 
fulN� o   � ��n�n 0 fullname fullName� �m��
�m 
cEmA� o   � ��l�l 0 emailaddress emailAddress� �k��
�k 
LDSb� o   � ��j�j  0 ldapsearchbase LDAPSearchBase� �i��
�i 
ExKr� o   � ��h�h 0 usekerberos useKerberos� �g��
�g 
ExGI� b   ���� b   � ��� o   � ��f�f 0 	shortname 	shortName� m   � ��� ���  @� o   �e�e (0 kerberosdomainname kerberosDomainName� �d��
�d 
rqAt� o  	�c�c 80 ldaprequiresauthentication LDAPRequiresAuthentication� �b��
�b 
LDMx� o  �a�a (0 ldapmaximumresults LDAPMaximumResults� �`��
�` 
pDSS� K  5�� �_��
�_ 
addr� o  !�^�^  0 exchangeserver ExchangeServer� �]��
�] 
SrvR� o  $)�\�\ &0 exchangeserverssl ExchangeServerSSL� �[ �Z
�[ 
ppor  o  ,1�Y�Y .0 exchangeserversslport ExchangeServerSSLPort�Z  � �X
�X 
pPSS K  8T �W
�W 
addr o  ;@�V�V (0 publicfolderserver PublicFolderServer �U
�U 
SrvR o  CH�T�T .0 publicfolderserverssl PublicFolderServerSSL �S�R
�S 
ppor o  KP�Q�Q 60 publicfolderserversslport PublicFolderServerSSLPort�R   �P	�O
�P 
pLSS	 K  Ws

 �N
�N 
addr o  Z_�M�M 0 
ldapserver 
LDAPServer �L
�L 
SrvR o  bg�K�K 0 ldapserverssl LDAPServerSSL �J�I
�J 
ppor o  jo�H�H &0 ldapserversslport LDAPServerSSLPort�I  �O  �v  � o      �G�G (0 newexchangeaccount newExchangeAccount�~  � r  �  I ��F�E
�F .corecrel****      � null�E   �D
�D 
kocl m  ���C
�C 
ExAc �B�A
�B 
prdt K  � �@
�@ 
pnam b  �� m  �� �  M a i l b o x   -   o  ���?�? 0 fullname fullName �>
�> 
ExID o  ���=�= 0 	shortname 	shortName �< 
�< 
ExDo o  ���;�; 0 windowsdomain WindowsDomain  �:!"
�: 
fulN! o  ���9�9 0 fullname fullName" �8#$
�8 
cEmA# o  ���7�7 0 emailaddress emailAddress$ �6%&
�6 
LDSb% o  ���5�5  0 ldapsearchbase LDAPSearchBase& �4'(
�4 
ExKr' o  ���3�3 0 usekerberos useKerberos( �2)*
�2 
ExGI) b  ��+,+ b  ��-.- o  ���1�1 0 	shortname 	shortName. m  ��// �00  @, o  ���0�0 (0 kerberosdomainname kerberosDomainName* �/12
�/ 
rqAt1 o  ���.�. 80 ldaprequiresauthentication LDAPRequiresAuthentication2 �-34
�- 
LDMx3 o  ���,�, (0 ldapmaximumresults LDAPMaximumResults4 �+56
�+ 
pDSS5 K  ��77 �*89
�* 
addr8 o  ���)�)  0 exchangeserver ExchangeServer9 �(:;
�( 
SrvR: o  ���'�' &0 exchangeserverssl ExchangeServerSSL; �&<�%
�& 
ppor< o  ���$�$ .0 exchangeserversslport ExchangeServerSSLPort�%  6 �#=�"
�# 
pLSS= K  �>> �!?@
�! 
addr? o  ��� �  0 
ldapserver 
LDAPServer@ �AB
� 
SrvRA o  �� 0 ldapserverssl LDAPServerSSLB �C�
� 
pporC o  	�� &0 ldapserversslport LDAPServerSSLPort�  �"  �A   o      �� (0 newexchangeaccount newExchangeAccount� DED l !!����  �  �  E FGF l !!�HI�  H 6 0 Close the Entourage Setup Assistant if it opens   I �JJ `   C l o s e   t h e   E n t o u r a g e   S e t u p   A s s i s t a n t   i f   i t   o p e n sG KLK l !!����  �  �  L MNM Q  !9OP�O I $0�Q�
� .coreclosnull���    obj Q 4  $,�R
� 
cwinR m  (+SS �TT 2 E n t o u r a g e   S e t u p   A s s i s t a n t�  P R      ���
� .ascrerr ****      � ****�  �  �  N UVU l ::��
�	�  �
  �	  V WXW l ::�YZ�  Y T N We're done. Set the schedules back to normal and set Entourage to work online   Z �[[ �   W e ' r e   d o n e .   S e t   t h e   s c h e d u l e s   b a c k   t o   n o r m a l   a n d   s e t   E n t o u r a g e   t o   w o r k   o n l i n eX \]\ l ::����  �  �  ] ^_^ r  :L`a` o  :?�� 0 	scheduled  a n      bcb 1  GK�
� 
enblc 4  ?G�d
� 
cSchd m  CFee �ff $ S e n d   &   R e c e i v e   A l l_ ghg r  M[iji m  MN�
� boovfalsj n      klk 1  VZ� 
�  
enbll 4  NV��m
�� 
cSchm m  RUnn �oo  E x c h a n g e   S e t u ph pqp I \h��r��
�� .coredelonull���    obj r 4  \d��s
�� 
cSchs m  `ctt �uu  E x c h a n g e   S e t u p��  q vwv r  ipxyx m  ij��
�� boovfalsy 1  jo��
�� 
wkOfw z��z l qq��������  ��  ��  ��  � m   � �{{                                                                                  OPIM  alis    �  OS HD                      �ܳ�H+   ��Microsoft Entourage.app                                         �E�v�&        ����  	                Microsoft Office 2008     ����      �v�v     ��  +  @OS HD:Applications:Microsoft Office 2008:Microsoft Entourage.app  0  M i c r o s o f t   E n t o u r a g e . a p p    O S   H D  :Applications/Microsoft Office 2008/Microsoft Entourage.app  / ��  � |}| l tt��������  ��  ��  } ~��~ l tt��������  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  � � l     ��������  ��  ��  � ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  �   End account setup   � ��� $   E n d   a c c o u n t   s e t u p� ���� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -��       ������� > T ` l������ ����� ���������R��~���  � �������������������������������������������� 0 useews useEWS�� 0 usekerberos useKerberos�� (0 kerberosdomainname kerberosDomainName�� 0 
domainname 
domainName�� 0 windowsdomain WindowsDomain��  0 exchangeserver ExchangeServer�� >0 extendedexchangeserveraddress ExtendedExchangeServerAddress�� &0 exchangeserverssl ExchangeServerSSL�� .0 exchangeserversslport ExchangeServerSSLPort�� (0 publicfolderserver PublicFolderServer�� .0 publicfolderserverssl PublicFolderServerSSL�� 60 publicfolderserversslport PublicFolderServerSSLPort�� 0 
ldapserver 
LDAPServer�� 80 ldaprequiresauthentication LDAPRequiresAuthentication�� 0 ldapserverssl LDAPServerSSL�� &0 ldapserversslport LDAPServerSSLPort�� (0 ldapmaximumresults LDAPMaximumResults��  0 ldapsearchbase LDAPSearchBase�� 0 	scheduled  �� 0 errormessage errorMessage
�� .aevtoappnull  �   � ****
�� boovtrue
�� boovtrue
�� boovfals
�� boovtrue���
�� boovtrue���
�� boovtrue
�� boovfals����� d
�� boovfals� �����������
�� .aevtoappnull  �   � ****� k    ~�� ��� ��� ��� /�� �����  ��  ��  �  � F�������������������B��IL��R����W��������`gmsx������������������������������������������������/����S��������e��nt����
�� 
curu
�� 
pnam�� 0 	shortname 	shortName
�� 
fnam�� 0 fullname fullName�� 0 emailaddress emailAddress
�� 
ExAc
�� .coredoexbool       obj 
�� 
btns
�� 
dflt
�� 
disp
�� 
appr�� 
�� .sysodlogaskr        TEXT�� 0 	theanswer 	theAnswer
�� 
bhit
�� .miscactvnull��� ��� null
�� 
kocl
�� 
prdt
�� 
ExID
�� 
ExDo
�� 
fulN
�� 
cEmA
�� 
LDSb
�� 
ExKr
�� 
ExGI
�� 
rqAt
�� 
LDMx
�� 
pDSS
�� 
addr
�� 
SrvR
�� 
ppor�� 
�� 
pPSS
�� 
pLSS�� �� 
�� .corecrel****      � null�� (0 newexchangeaccount newExchangeAccount�� 
�� 
cwin
�� .coreclosnull���    obj ��  ��  
�� 
cSch
�� 
enbl
�� .coredelonull���    obj 
�� 
wkOf��� *�,�,E�O*�,�,E�UO��%b  %E�Ob  e  b  �%�%Ec  Y hO� l*�k/j e  ^����lva a kva la a a  E` O_ a ,a   )a �a kva a kva ka a a  OhY hY hUO���*j Ob   f  �*a �a  �a !�%a "�a #b  a $�a %�a &b  a 'b  a (�a )%b  %a *b  a +b  a ,a -b  a .b  a /b  a 0a 1a -b  	a .b  
a /b  a 0a 2a -b  a .b  a /b  a 0a 3a 4 5E` 6Y �*a �a  �a 7�%a "�a #b  a $�a %�a &b  a 'b  a (�a 8%b  %a *b  a +b  a ,a -b  a .b  a /b  a 0a 2a -b  a .b  a /b  a 0a 9a 4 5E` 6O *a :a ;/j <W X = >hOb  *a ?a @/a A,FOf*a ?a B/a A,FO*a ?a C/j DOf*a E,FOPUOPW X = >hascr  ��ޭ