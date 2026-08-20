package org.apache.asn1.codec.stateful;
/* loaded from: classes5.dex */
public interface DecoderMonitor {
    void callbackOccured(StatefulDecoder statefulDecoder, DecoderCallback decoderCallback, Object obj);

    void callbackSet(StatefulDecoder statefulDecoder, DecoderCallback decoderCallback, DecoderCallback decoderCallback2);

    void error(StatefulDecoder statefulDecoder, Exception exc);

    void fatalError(StatefulDecoder statefulDecoder, Exception exc);

    void warning(StatefulDecoder statefulDecoder, Exception exc);
}
