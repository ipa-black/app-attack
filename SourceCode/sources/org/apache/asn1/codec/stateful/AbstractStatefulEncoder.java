package org.apache.asn1.codec.stateful;
/* loaded from: classes5.dex */
public abstract class AbstractStatefulEncoder implements StatefulEncoder {
    private EncoderCallback cb;
    private EncoderMonitor monitor;

    public AbstractStatefulEncoder() {
        this.cb = null;
        this.monitor = null;
    }

    public AbstractStatefulEncoder(EncoderCallback encoderCallback) {
        this.cb = null;
        this.monitor = null;
        setCallback(encoderCallback);
    }

    public AbstractStatefulEncoder(EncoderMonitor encoderMonitor) {
        this.cb = null;
        this.monitor = encoderMonitor;
    }

    public AbstractStatefulEncoder(EncoderCallback encoderCallback, EncoderMonitor encoderMonitor) {
        this.cb = null;
        this.monitor = encoderMonitor;
        setCallback(encoderCallback);
    }

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void setCallback(EncoderCallback encoderCallback) {
        EncoderCallback encoderCallback2 = this.cb;
        this.cb = encoderCallback;
        EncoderMonitor encoderMonitor = this.monitor;
        if (encoderMonitor != null) {
            encoderMonitor.callbackSet(this, encoderCallback2, encoderCallback);
        }
    }

    @Override // org.apache.asn1.codec.stateful.StatefulEncoder
    public void setEncoderMonitor(EncoderMonitor encoderMonitor) {
        this.monitor = encoderMonitor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void encodeOccurred(Object obj) {
        EncoderCallback encoderCallback = this.cb;
        if (encoderCallback != null) {
            encoderCallback.encodeOccurred(this, obj);
        }
    }

    protected EncoderMonitor getEncoderMonitor() {
        return this.monitor;
    }
}
