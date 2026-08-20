package org.apache.asn1.ber;

import org.apache.asn1.codec.stateful.DecoderCallback;
/* loaded from: classes5.dex */
public interface BERDecoderCallback extends DecoderCallback {
    void lengthDecoded(Tuple tuple);

    void partialValueDecoded(Tuple tuple);

    void tagDecoded(Tuple tuple);
}
