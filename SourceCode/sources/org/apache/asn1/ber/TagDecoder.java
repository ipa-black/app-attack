package org.apache.asn1.ber;

import java.nio.ByteBuffer;
import org.apache.asn1.codec.DecoderException;
import org.apache.asn1.codec.stateful.AbstractStatefulDecoder;
/* loaded from: classes5.dex */
public class TagDecoder extends AbstractStatefulDecoder {
    private final Tag tag = new Tag();

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void decode(Object obj) throws DecoderException {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        while (byteBuffer.hasRemaining()) {
            this.tag.add(byteBuffer.get());
            if (this.tag.isFixated()) {
                decodeOccurred(this.tag);
                this.tag.clear();
                return;
            }
        }
    }
}
