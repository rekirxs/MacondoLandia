micIndex = 0;
micChannel = -1;
peakDisplay = 0;
samplesRead = 0;
frameCount = 0;

var _count = audio_get_recorder_count();
if (_count > micIndex) {
    micChannel = audio_start_recording(micIndex);
}