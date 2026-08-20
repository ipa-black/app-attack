package org.apache.asn1.codec.stateful;
/* loaded from: classes5.dex */
public abstract class AbstractStatefulDecoder implements StatefulDecoder {
    private DecoderCallback cb;
    private DecoderMonitor monitor;

    public AbstractStatefulDecoder() {
        this.cb = null;
        this.monitor = null;
    }

    public AbstractStatefulDecoder(DecoderCallback decoderCallback) {
        this.cb = null;
        this.monitor = null;
        setCallback(decoderCallback);
    }

    public AbstractStatefulDecoder(DecoderMonitor decoderMonitor) {
        this.cb = null;
        this.monitor = decoderMonitor;
    }

    public AbstractStatefulDecoder(DecoderCallback decoderCallback, DecoderMonitor decoderMonitor) {
        this.cb = null;
        this.monitor = decoderMonitor;
        setCallback(decoderCallback);
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void setCallback(DecoderCallback decoderCallback) {
        DecoderCallback decoderCallback2 = this.cb;
        this.cb = decoderCallback;
        DecoderMonitor decoderMonitor = this.monitor;
        if (decoderMonitor != null) {
            decoderMonitor.callbackSet(this, decoderCallback2, decoderCallback);
        }
    }

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void setDecoderMonitor(DecoderMonitor decoderMonitor) {
        this.monitor = decoderMonitor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void decodeOccurred(Object obj) {
        DecoderCallback decoderCallback = this.cb;
        if (decoderCallback != null) {
            decoderCallback.decodeOccurred(this, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DecoderMonitor getDecoderMonitor() {
        return this.monitor;
    }
}
