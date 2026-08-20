package org.apache.asn1.ber;

import org.apache.asn1.codec.stateful.EncoderCallback;
/* loaded from: classes5.dex */
public interface BEREncoderCallback extends EncoderCallback {
    void lengthEncoded(Tuple tuple);

    void partialValueEncoded(Tuple tuple);

    void tagEncoded(Tuple tuple);
}
