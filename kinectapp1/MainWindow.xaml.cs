using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Microsoft.Kinect;
using Emgu.CV;
using Emgu.Util;
using Emgu.CV.Structure;


namespace WpfApplication1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        KinectSensor _sensor;

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            kinectSensorChooser1.KinectSensorChanged += new DependencyPropertyChangedEventHandler(kinectSensorChooser1_KinectSensorChanged);
        }

        void kinectSensorChooser1_KinectSensorChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            KinectSensor oldSensor = (KinectSensor)e.OldValue;
            KinectStop(oldSensor);

            KinectSensor _sensor = (KinectSensor)e.NewValue;

            _sensor.ColorStream.Enable();
            _sensor.DepthStream.Enable();
            _sensor.SkeletonStream.Enable();
            //_sensor.AllFramesReady += new EventHandler<AllFramesReadyEventArgs>(_sensor_AllFramesReady);

            try
            {
                _sensor.Start();
                kinectColorViewer1.Kinect = kinectSensorChooser1.Kinect;
              
            }
            catch
            {
                kinectSensorChooser1.AppConflictOccurred();
            }
        }

        void _sensor_AllFramesReady(object sender, AllFramesReadyEventArgs e)
        {
           
        }

        void KinectStop(KinectSensor sensor)
        {
            if (sensor != null)
            {
                sensor.Stop();
            }
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            KinectStop(kinectSensorChooser1.Kinect);
        }
    }
}
