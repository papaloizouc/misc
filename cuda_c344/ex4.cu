/ *   U d a c i t y   H o m e w o r k   3 
       H D R   T o n e - m a p p i n g 
 
     B a c k g r o u n d   H D R 
     = = = = = = = = = = = = = = 
 
     A   H i g h   D y n a m i c   R a n g e   ( H D R )   i m a g e   c o n t a i n s   a   w i d e r   v a r i a t i o n   o f   i n t e n s i t y 
     a n d   c o l o r   t h a n   i s   a l l o w e d   b y   t h e   R G B   f o r m a t   w i t h   1   b y t e   p e r   c h a n n e l   t h a t   w e 
     h a v e   u s e d   i n   t h e   p r e v i o u s   a s s i g n m e n t . 
 
     T o   s t o r e   t h i s   e x t r a   i n f o r m a t i o n   w e   u s e   s i n g l e   p r e c i s i o n   f l o a t i n g   p o i n t   f o r 
     e a c h   c h a n n e l .     T h i s   a l l o w s   f o r   a n   e x t r e m e l y   w i d e   r a n g e   o f   i n t e n s i t y   v a l u e s . 
 
     I n   t h e   i m a g e   f o r   t h i s   a s s i g n m e n t ,   t h e   i n s i d e   o f   c h u r c h   w i t h   l i g h t   c o m i n g   i n 
     t h r o u g h   s t a i n e d   g l a s s   w i n d o w s ,   t h e   r a w   i n p u t   f l o a t i n g   p o i n t   v a l u e s   f o r   t h e 
     c h a n n e l s   r a n g e   f r o m   0   t o   2 7 5 .     B u t   t h e   m e a n   i s   . 4 1   a n d   9 8 %   o f   t h e   v a l u e s   a r e 
     l e s s   t h a n   3 !     T h i s   m e a n s   t h a t   c e r t a i n   a r e a s   ( t h e   w i n d o w s )   a r e   e x t r e m e l y   b r i g h t 
     c o m p a r e d   t o   e v e r y w h e r e   e l s e .     I f   w e   l i n e a r l y   m a p   t h i s   [ 0 - 2 7 5 ]   r a n g e   i n t o   t h e 
     [ 0 - 2 5 5 ]   r a n g e   t h a t   w e   h a v e   b e e n   u s i n g   t h e n   m o s t   v a l u e s   w i l l   b e   m a p p e d   t o   z e r o ! 
     T h e   o n l y   t h i n g   w e   w i l l   b e   a b l e   t o   s e e   a r e   t h e   v e r y   b r i g h t e s t   a r e a s   -   t h e 
     w i n d o w s   -   e v e r y t h i n g   e l s e   w i l l   a p p e a r   p i t c h   b l a c k . 
 
     T h e   p r o b l e m   i s   t h a t   a l t h o u g h   w e   h a v e   c a m e r a s   c a p a b l e   o f   r e c o r d i n g   t h e   w i d e 
     r a n g e   o f   i n t e n s i t y   t h a t   e x i s t s   i n   t h e   r e a l   w o r l d   o u r   m o n i t o r s   a r e   n o t   c a p a b l e 
     o f   d i s p l a y i n g   t h e m .     O u r   e y e s   a r e   a l s o   q u i t e   c a p a b l e   o f   o b s e r v i n g   a   m u c h   w i d e r 
     r a n g e   o f   i n t e n s i t i e s   t h a n   o u r   i m a g e   f o r m a t s   /   m o n i t o r s   a r e   c a p a b l e   o f 
     d i s p l a y i n g . 
 
     T o n e - m a p p i n g   i s   a   p r o c e s s   t h a t   t r a n s f o r m s   t h e   i n t e n s i t i e s   i n   t h e   i m a g e   s o   t h a t 
     t h e   b r i g h t e s t   v a l u e s   a r e n ' t   n e a r l y   s o   f a r   a w a y   f r o m   t h e   m e a n .     T h a t   w a y   w h e n 
     w e   t r a n s f o r m   t h e   v a l u e s   i n t o   [ 0 - 2 5 5 ]   w e   c a n   a c t u a l l y   s e e   t h e   e n t i r e   i m a g e . 
     T h e r e   a r e   m a n y   w a y s   t o   p e r f o r m   t h i s   p r o c e s s   a n d   i t   i s   a s   m u c h   a n   a r t   a s   a 
     s c i e n c e   -   t h e r e   i s   n o   s i n g l e   " r i g h t "   a n s w e r .     I n   t h i s   h o m e w o r k   w e   w i l l 
     i m p l e m e n t   o n e   p o s s i b l e   t e c h n i q u e . 
 
     B a c k g r o u n d   C h r o m i n a n c e - L u m i n a n c e 
     = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 
     T h e   R G B   s p a c e   t h a t   w e   h a v e   b e e n   u s i n g   t o   r e p r e s e n t   i m a g e s   c a n   b e   t h o u g h t   o f   a s 
     o n e   p o s s i b l e   s e t   o f   a x e s   s p a n n i n g   a   t h r e e   d i m e n s i o n a l   s p a c e   o f   c o l o r .     W e 
     s o m e t i m e s   c h o o s e   o t h e r   a x e s   t o   r e p r e s e n t   t h i s   s p a c e   b e c a u s e   t h e y   m a k e   c e r t a i n 
     o p e r a t i o n s   m o r e   c o n v e n i e n t . 
 
     A n o t h e r   p o s s i b l e   w a y   o f   r e p r e s e n t i n g   a   c o l o r   i m a g e   i s   t o   s e p a r a t e   t h e   c o l o r 
     i n f o r m a t i o n   ( c h r o m a t i c i t y )   f r o m   t h e   b r i g h t n e s s   i n f o r m a t i o n .     T h e r e   a r e 
     m u l t i p l e   d i f f e r e n t   m e t h o d s   f o r   d o i n g   t h i s   -   a   c o m m o n   o n e   d u r i n g   t h e   a n a l o g 
     t e l e v i s i o n   d a y s   w a s   k n o w n   a s   C h r o m i n a n c e - L u m i n a n c e   o r   Y U V . 
 
     W e   c h o o s e   t o   r e p r e s e n t   t h e   i m a g e   i n   t h i s   w a y   s o   t h a t   w e   c a n   r e m a p   o n l y   t h e 
     i n t e n s i t y   c h a n n e l   a n d   t h e n   r e c o m b i n e   t h e   n e w   i n t e n s i t y   v a l u e s   w i t h   t h e   c o l o r 
     i n f o r m a t i o n   t o   f o r m   t h e   f i n a l   i m a g e . 
 
     O l d   T V   s i g n a l s   u s e d   t o   b e   t r a n s m i t t e d   i n   t h i s   w a y   s o   t h a t   b l a c k   &   w h i t e 
     t e l e v i s i o n s   c o u l d   d i s p l a y   t h e   l u m i n a n c e   c h a n n e l   w h i l e   c o l o r   t e l e v i s i o n s   w o u l d 
     d i s p l a y   a l l   t h r e e   o f   t h e   c h a n n e l s . 
 
 
     T o n e - m a p p i n g 
     = = = = = = = = = = = = 
 
     I n   t h i s   a s s i g n m e n t   w e   a r e   g o i n g   t o   t r a n s f o r m   t h e   l u m i n a n c e   c h a n n e l   ( a c t u a l l y 
     t h e   l o g   o f   t h e   l u m i n a n c e ,   b u t   t h i s   i s   u n i m p o r t a n t   f o r   t h e   p a r t s   o f   t h e 
     a l g o r i t h m   t h a t   y o u   w i l l   b e   i m p l e m e n t i n g )   b y   c o m p r e s s i n g   i t s   r a n g e   t o   [ 0 ,   1 ] . 
     T o   d o   t h i s   w e   n e e d   t h e   c u m u l a t i v e   d i s t r i b u t i o n   o f   t h e   l u m i n a n c e   v a l u e s . 
 
     E x a m p l e 
     - - - - - - - 
 
     i n p u t   :   [ 2   4   3   3   1   7   4   5   7   0   9   4   3   2 ] 
     m i n   /   m a x   /   r a n g e :   0   /   9   /   9 
 
     h i s t o   w i t h   3   b i n s :   [ 4   7   3 ] 
 
     c d f   :   [ 4   1 1   1 4 ] 
 
 
     Y o u r   t a s k   i s   t o   c a l c u l a t e   t h i s   c u m u l a t i v e   d i s t r i b u t i o n   b y   f o l l o w i n g   t h e s e 
     s t e p s . 
 
 * / 
 
 
 # i n c l u d e   " r e f e r e n c e _ c a l c . c p p " 
 # i n c l u d e   " u t i l s . h " 
 
 # i n c l u d e   < s t d i o . h > 
 
 # d e f i n e   N U M _ B A N K S   3 2 
 # d e f i n e   L O G _ N U M _ B A N K S   5 
 # d e f i n e   C O N F L I C T _ F R E E _ O F F S E T ( n )   \ 
         ( ( n )   > >   N U M _ B A N K S   +   ( n )   > >   ( 2   *   L O G _ N U M _ B A N K S ) ) 
 
 # d e f i n e   M I N ( a , b )   ( ( ( a ) < ( b ) ) ? ( a ) : ( b ) ) 
 # d e f i n e   M A X ( a , b )   ( ( ( a ) > ( b ) ) ? ( a ) : ( b ) ) 
 
 
 / * 
 F o r   B a n k   C o n f l i c t s : 
 h t t p s : / / w w w . y o u t u b e . c o m / w a t c h ? v = C Z g M 3 D E B p l E 
 h t t p : / / h t t p . d e v e l o p e r . n v i d i a . c o m / G P U G e m s 3 / g p u g e m s 3 _ c h 3 9 . h t m l 
 
 R e d u c e : 
 f o r   d   =   0   t o   l o g 2   n      1   d o 
       