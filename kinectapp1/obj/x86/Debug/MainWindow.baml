   M S B A M L   `   `   `  ����^  ZMicrosoft.Samples.Kinect.WpfViewers, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null�^clr-namespace:Microsoft.Samples.Kinect.WpfViewers;assembly=Microsoft.Samples.Kinect.WpfViewers#Microsoft.Samples.Kinect.WpfViewers  5   c    
kinectapp1    WpfApplication1.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   mmy^clr-namespace:Microsoft.Samples.Kinect.WpfViewers;assembly=Microsoft.Samples.Kinect.WpfViewers     5   c   -   5          � Title$  
MainWindow��5   	   $	��350��6   $	��800��6)   .��5      � .+�5   
   =   7Microsoft.Samples.Kinect.WpfViewers.KinectSensorChooser  -   5        $��kinectSensorChooser1��5   P   $
��Left=�6!   $��
198,91,0,0q�6<   $	��Top=�6l   $	��250��6�   ;   5Microsoft.Samples.Kinect.WpfViewers.KinectColorViewer  5   
   -   5        $��kinectColorViewer1��5   M   $
��Left=�6   $��	15,15,0,0q�6:   $	��Top=�6g   $	��320��6   $	��240��6�   ;   5Microsoft.Samples.Kinect.WpfViewers.KinectDepthViewer  5   
   -   5        $��kinectDepthViewer1��5   N   $
��Left=�6   $��
450,87,0,0q�6:   $	��Top=�6h   $	��320��6�   $	��240��6�   5   /Microsoft.Samples.Kinect.WpfViewers.ImageViewer   Kinect 6�   ��  �� ElementName$ kinectSensorChooser1�� �� Path$ Kinect�5	      5
      