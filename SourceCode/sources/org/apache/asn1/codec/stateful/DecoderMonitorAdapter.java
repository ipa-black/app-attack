package org.apache.asn1.codec.stateful;
/* loaded from: classes5.dex */
public class DecoderMonitorAdapter implements DecoderMonitor {
    @Override // org.apache.asn1.codec.stateful.DecoderMonitor
    public void callbackOccured(StatefulDecoder statefulDecoder, DecoderCallback decoderCallback, Object obj) {
    }

    @Override // org.apache.asn1.codec.stateful.DecoderMonitor
    public void callbackSet(StatefulDecoder statefulDecoder, DecoderCallback decoderCallback, DecoderCallback decoderCallback2) {
    }

    @Override // org.apache.asn1.codec.stateful.DecoderMonitor
    public void error(StatefulDecoder statefulDecoder, Exception exc) {
        System.err.println(new StringBuffer("ERROR: ").append(exc.getMessage()).toString());
    }

    @Override // org.apache.asn1.codec.stateful.DecoderMonitor
    public void fatalError(StatefulDecoder statefulDecoder, Exception exc) {
        System.err.println(new StringBuffer("FATAL: ").append(exc.getMessage()).toString());
    }

    @Override // org.apache.asn1.codec.stateful.DecoderMonitor
    public void warning(StatefulDecoder statefulDecoder, Exception exc) {
        System.err.println(new StringBuffer("WARN: ").append(exc.getMessage()).toString());
    }
}
