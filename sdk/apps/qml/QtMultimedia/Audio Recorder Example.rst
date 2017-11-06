.. _sdk_qtmultimedia_audio_recorder_example:

QtMultimedia Audio Recorder Example
===================================


*Audio Recorder* demonstrates how to identify the available devices and supported codecs, and the use of QAudioRecorder class.

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

We display a window for the user to select the appropriate audio input, codec, container, and sample rate. Allow a setting of either quality or bitrate. Finally, the output file can be selected and recording can be started.

The lists are setup using the audioInputs(), supportedAudioCodecs(), supportedContainers(), supportedContainers(), and supportedAudioSampleRates() methods. The quality slider is setup from 0 (zero) to QMultimedia::VeryHighQuality with a default value of QMultimedia::NormalQuality, while the bitrates are hardcoded into the list.

To record audio we simply create a QAudioRecorder object.

.. code:: cpp

    audioRecorder = new QAudioRecorder(this);

And setup the lists as described above. The text on the record and pause buttons are toggled depending on the state of the ``audioRecorder`` object. This means that if the state is QMediaRecorder::StoppedState then the button text will be "Record" and "Pause". In QMediaRecorder::RecordingState the record button will have the text "Stop", and in QMediaRecorder::PausedState the pause button will have the text "Resume".

Pressing the buttons will also result in a toggle based on the state. If recording is stopped, then pressing the record button will setup the QAudioEncoderSettings based on the values of the selection lists, will set the encoding settings and container on the ``audioRecorder`` object, and start recording using the record() method.

.. code:: cpp

        QAudioEncoderSettings settings;
        settings.setCodec(boxValue(ui->audioCodecBox).toString());
        settings.setSampleRate(boxValue(ui->sampleRateBox).toInt());
        settings.setBitRate(boxValue(ui->bitrateBox).toInt());
        settings.setQuality(QMultimedia::EncodingQuality(ui->qualitySlider->value()));
        settings.setEncodingMode(ui->constantQualityRadioButton->isChecked() ?
                                 QMultimedia::ConstantQualityEncoding :
                                 QMultimedia::ConstantBitRateEncoding);
        QString container = boxValue(ui->containerBox).toString();
        audioRecorder->setEncodingSettings(settings, QVideoEncoderSettings(), container);
        audioRecorder->record();

While recording, the status bar of the application is updated with duration information from the durationChanged signal from the ``audioRecorder`` object.

.. code:: cpp

    ui->statusbar->showMessage(tr("Recorded %1 sec").arg(duration / 1000));

Files:

-  audiorecorder/audiorecorder.cpp
-  audiorecorder/audiorecorder.h
-  audiorecorder/audiorecorder.ui
-  audiorecorder/qaudiolevel.cpp
-  audiorecorder/qaudiolevel.h
-  audiorecorder/main.cpp
-  audiorecorder/audiorecorder.pro

