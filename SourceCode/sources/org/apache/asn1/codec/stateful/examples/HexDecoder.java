package org.apache.asn1.codec.stateful.examples;

import java.nio.ByteBuffer;
import org.apache.asn1.codec.DecoderException;
import org.apache.asn1.codec.stateful.AbstractStatefulDecoder;
/* loaded from: classes5.dex */
public class HexDecoder extends AbstractStatefulDecoder {
    private ByteBuffer decoded = ByteBuffer.allocate(128);
    private boolean expectingMsn = true;
    private byte lsn;
    private byte msn;

    @Override // org.apache.asn1.codec.stateful.StatefulDecoder
    public void decode(Object obj) throws DecoderException {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        if (byteBuffer == null || !byteBuffer.hasRemaining()) {
            return;
        }
        while (byteBuffer.hasRemaining()) {
            if (!this.decoded.hasRemaining()) {
                this.decoded.flip();
                super.decodeOccurred(this.decoded);
                this.decoded.clear();
            }
            if (this.expectingMsn) {
                this.msn = byteBuffer.get();
                this.expectingMsn = false;
            } else {
                this.lsn = byteBuffer.get();
                this.expectingMsn = true;
            }
            if (this.expectingMsn) {
                this.decoded.put((byte) (getNibble(this.lsn) | (getNibble(this.msn) << 4)));
            }
        }
        if (this.expectingMsn) {
            this.decoded.flip();
            super.decodeOccurred(this.decoded);
            this.decoded.clear();
        }
    }

    private byte getNibble(byte b2) throws DecoderException {
        if (b2 > 64 && b2 < 91) {
            b2 = (byte) (b2 - 32);
        }
        switch (b2) {
            case 48:
                return (byte) 0;
            case 49:
                return (byte) 1;
            case 50:
                return (byte) 2;
            case 51:
                return (byte) 3;
            case 52:
                return (byte) 4;
            case 53:
                return (byte) 5;
            case 54:
                return (byte) 6;
            case 55:
                return (byte) 7;
            case 56:
                return (byte) 8;
            case 57:
                return (byte) 9;
            default:
                switch (b2) {
                    case 97:
                        return (byte) 10;
                    case 98:
                        return (byte) 11;
                    case 99:
                        return (byte) 12;
                    case 100:
                        return (byte) 13;
                    case 101:
                        return (byte) 14;
                    case 102:
                        return (byte) 15;
                    default:
                        throw new DecoderException(new StringBuffer("non-hex character '").append((char) b2).append("' encountered").toString());
                }
        }
    }
}
