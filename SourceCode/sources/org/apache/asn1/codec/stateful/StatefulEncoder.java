package org.apache.asn1.codec.stateful;

import org.apache.asn1.codec.EncoderException;
/* loaded from: classes5.dex */
public interface StatefulEncoder {
    void encode(Object obj) throws EncoderException;

    void setCallback(EncoderCallback encoderCallback);

    void setEncoderMonitor(EncoderMonitor encoderMonitor);
}
