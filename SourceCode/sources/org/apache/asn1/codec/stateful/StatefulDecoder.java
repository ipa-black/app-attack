package org.apache.asn1.codec.stateful;

import org.apache.asn1.codec.DecoderException;
/* loaded from: classes5.dex */
public interface StatefulDecoder {
    void decode(Object obj) throws DecoderException;

    void setCallback(DecoderCallback decoderCallback);

    void setDecoderMonitor(DecoderMonitor decoderMonitor);
}
