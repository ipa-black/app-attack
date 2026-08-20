package org.apache.asn1.codec.binary;

import org.apache.asn1.codec.BinaryDecoder;
import org.apache.asn1.codec.BinaryEncoder;
import org.apache.asn1.codec.DecoderException;
import org.apache.asn1.codec.EncoderException;
/* loaded from: classes5.dex */
public class Hex implements BinaryEncoder, BinaryDecoder {
    private static final char[] DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static byte[] decodeHex(char[] cArr) throws DecoderException {
        int length = cArr.length;
        if ((length & 1) != 0) {
            throw new DecoderException("Odd number of characters.");
        }
        byte[] bArr = new byte[length >> 1];
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i + 1;
            i += 2;
            bArr[i2] = (byte) (((toDigit(cArr[i], i) << 4) | toDigit(cArr[i3], i3)) & 255);
            i2++;
        }
        return bArr;
    }

    protected static int toDigit(char c2, int i) throws DecoderException {
        int digit = Character.digit(c2, 16);
        if (digit != -1) {
            return digit;
        }
        throw new DecoderException(new StringBuffer("Illegal hexadecimal charcter ").append(c2).append(" at index ").append(i).toString());
    }

    public static char[] encodeHex(byte[] bArr) {
        char[] cArr = new char[bArr.length << 1];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = DIGITS;
            cArr[i] = cArr2[(b2 & 240) >>> 4];
            i += 2;
            cArr[i2] = cArr2[b2 & 15];
        }
        return cArr;
    }

    @Override // org.apache.asn1.codec.BinaryDecoder
    public byte[] decode(byte[] bArr) throws DecoderException {
        return decodeHex(new String(bArr).toCharArray());
    }

    @Override // org.apache.asn1.codec.Decoder
    public Object decode(Object obj) throws DecoderException {
        try {
            return decodeHex(obj instanceof String ? ((String) obj).toCharArray() : (char[]) obj);
        } catch (ClassCastException e2) {
            throw new DecoderException(e2.getMessage());
        }
    }

    @Override // org.apache.asn1.codec.BinaryEncoder
    public byte[] encode(byte[] bArr) {
        return new String(encodeHex(bArr)).getBytes();
    }

    @Override // org.apache.asn1.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        try {
            return encodeHex(obj instanceof String ? ((String) obj).getBytes() : (byte[]) obj);
        } catch (ClassCastException e2) {
            throw new EncoderException(e2.getMessage());
        }
    }
}
