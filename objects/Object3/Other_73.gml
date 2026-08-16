var _channel = async_load[? "channel_index"];

if (_channel == micChannel) {
    var _len = async_load[? "data_len"];
    var _src = async_load[? "buffer_id"];
    var _numSamples = _len div 2;
    var _maxVal = 0;

    buffer_seek(_src, buffer_seek_start, 0);
    repeat (_numSamples) {
        var _sampleVal = buffer_read(_src, buffer_s16);
        if (_sampleVal < 0) _sampleVal = -_sampleVal;
        if (_sampleVal > _maxVal) _maxVal = _sampleVal;
    }

    peakDisplay = _maxVal;
    samplesRead = _numSamples;
    frameCount++;
}