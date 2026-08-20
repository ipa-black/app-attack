package org.apache.asn1.ber;

import java.nio.ByteBuffer;
import org.apache.asn1.codec.DecoderException;
import org.apache.asn1.codec.stateful.AbstractStatefulDecoder;
/* loaded from: classes5.dex */
public class LengthDecoder extends AbstractStatefulDecoder {
    private final Length length = new Length();

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void decode(Object obj) throws DecoderException {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        while (byteBuffer.hasRemaining()) {
            this.length.add(byteBuffer.get());
            if (this.length.isFixated()) {
                decodeOccurred(this.length);
                this.length.clear();
                return;
            }
        }
    }
}
