   M S B A M L   `   `   `  ����H  DShaderToy.NET, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:ShaderToy.NETShaderToy.NET  5   	   9!clr-namespace:ShaderToy.NET.AudioShaderToy.NET.Audio  5   	   R NSharpGL.WPF, Version=2.4.0.0, Culture=neutral, PublicKeyToken=27fc851303210b27>.clr-namespace:SharpGL.WPF;assembly=SharpGL.WPFSharpGL.WPF 5   	   U QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5	   	       ShaderToy.NET.MainWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:ShaderToy.NET     5   	   1aud!clr-namespace:ShaderToy.NET.Audio     5   	   BsharpGL.clr-namespace:SharpGL.WPF;assembly=SharpGL.WPF     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5	   	     � Title$  Shadertoy.NET��5
      
���   �$	��720��5   	   $
��1280��6    � 	Resources 5         b2v��%   &	        �� 5   
   6'   5      .��5      �� $��5,0,5,5q�6   ���	#FF0E7EAE._�5      � -   5        $��MainGrid��5       � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $	��250 �6   .+�5   
   �� -   5        $��OpenGLBorder��5      $��0q�6%   ._�5        SharpGL.WPF.OpenGLControl  -   5        $��OpenGLControl��5   $      RenderContextType$	 FBO=�5         DrawFPS . 6%   5      �� 5      -   5        $��Right=�5      $��Bottom=�62   $��25q�6M   .��5      �� $��Image/full-screen.png��6   $��20��67   $��20��6B   5      �� 5      $��1��6   
�������.+�5!      �� 
���   �$��1q�6)    �� CornerRadius$ 5��6=   $��15,10,15,15q�6N   ._�5"      �� .+�5#      �� $��5q�6   .��6'   
Shader :61   �� 5$      -   5        $��shaderSelector��5$      $��20,10,20,20q�65   $��Stretch=�5%      ��5&      �� 5'      .R�5(   "   �  5)   &   �� 5*   *   $��* �6;   �� 5+   *   $
��auto �6;   .+�5-   &   �� ��60   �� *Name+�� 5.   &   $��1��6,   $��Image/speaker.png��6<   $
��None=�6W   5/   #   50      ��52      �� 53       �� 
TargetType" ��6$   .�54   "   ��  �� Property � �� �� Value$ Stretch=�6O   55      57      58      59      �� 5;      
���   �$��1q�6)   $ 5��6=   $��
15,0,15,15q�6N   ._�5<      �� .+�5=      �� $��5q�6   .��6'   Channel 0 (Audio) :6<   �� 5>      	 �� Orientation$	 
Horizontal=�6%   $��20,3,3,3q�6>   .+�5?      	� -   5        $��Mic_RB��5?   *   
 	� 	GroupName$
 	audio_src��68   $��
Microphone��6N   $��4q�6c    d� 	IsChecked$
 TrueY�6n   	� 5@      -   5        $��File_RB��5@   *   $
 	audio_src��69   $
��File��6O   $��8,4,4,4q�6^   5A      *   $ShaderToy.NET.Audio.SpectrumAnalyser  5B      -   5          Name$ SpecAnalyser��5B   /   $��50��6E   � 5C      $��20,10,20,20q�6$   y�69   �� *	IsChecked+ �� ElementName$ File_RB�� �� 	Converter# [  .+�5D      �� -	   5        $��Play_Button��5D   !   {�.  .��5E      F� 
��� d �$��3q�64   $��15��6?   $��15��6J   "����        �@B @B �    �� 	 �� Stretch$
 Fill=�6q    �� StrokeLineJoin$ Round=�6�   5F      �� 5G      -
   5        $��Pause_Button��5G   !   $��5,0,0,0q�6I   {�.  .��5H      F� 
���  ��$��15��61   $��15��6<   $��3q�6H   O����        �@B     �@B @B �    @B ���     ���-     ���- @B р� @B 	$
 Fill=�6�   $ Round=�6�   5I      �� 5J      -   5        $��Stop_Button��5J   !   $��5,0,0,0q�6G   {�.  .��5K      �� 
����  �$��15��68   $��15��6C   $��3q�6O    �� RadiusX$ 2��6Z    �� RadiusY$ 2��6f   5L      �� 5M      -   5        $��5,0,0,0q�5M   4   .��5N      �� $��20��6$   $��20��6/   $��Image/open-file.png��6;   5O      5P      � 5Q      $��
20,10,20,5q�6$   y�68   �� *	IsChecked+$ Mic_RB��# [  .+�5R      �� -   5        $��MicStart_Button��5R   %   .��5S   "   F� 
���  ��$��3q�62   $��15��6=   $��15��6H   )����        �@B @B � ��
 ��
 ��
	$
 Fill=�6y   $ Round=�6�   5T      �� 5U      -   5        $��MicStop_Button��5U   %   $��5,0,0,0q�6L   {�.  .��5V   "   �� 
����  �$��15��6<   $��15��6G   $��3q�6S   $ 2��6^   $ 2��6j   5W      5X      �� 5Y      -   5        $��MicCombo��5Y   #   $��
20,5,20,20q�63   y�6G   �� *	IsChecked+$ Mic_RB��# [  5Z      5[      �� 5]      
���   �$��1q�6)   $ 5��6=   $��
15,0,15,15q�6N   ._�5^      �� .+�5_      �� $��5q�6   .��6'   Channel 1 (Image) :6<   �� 5`      $	��100��6   ���#AAA$��1q�6=   $��
20,10,20,0q�6Q   $ 5��6e   ._�5a      �� -   5        $��CHO_ImageBox��5a       5b      � 5c      $��20,10,20,20q�6$   .+�5d      �� -   5        $��5,0,0,0q�5d   8   .��5e   "   �� $��20��6(   $��20��63   $��Image/open-file.png��6?   5f      5g      5h      5i      5m      5o      5p      5q      