package org.apache.asn1.codec.stateful;
/* loaded from: classes5.dex */
public interface EncoderMonitor {
    public static final EncoderMonitor INSTANCE = new EncoderMonitorAdapter();

    void callbackOccured(StatefulEncoder statefulEncoder, EncoderCallback encoderCallback, Object obj);

    void callbackSet(StatefulEncoder statefulEncoder, EncoderCallback encoderCallback, EncoderCallback encoderCallback2);

    void error(StatefulEncoder statefulEncoder, Exception exc);

    void fatalError(StatefulEncoder statefulEncoder, Exception exc);

    void warning(StatefulEncoder statefulEncoder, Exception exc);
}
