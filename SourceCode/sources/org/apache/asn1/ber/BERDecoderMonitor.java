package org.apache.asn1.ber;

import org.apache.asn1.codec.stateful.DecoderMonitor;
/* loaded from: classes5.dex */
public interface BERDecoderMonitor extends DecoderMonitor {
    void lengthDecoded(Tuple tuple);

    void tagDecoded(Tuple tuple);
}
