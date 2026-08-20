package org.apache.mina.common;
/* loaded from: classes4.dex */
class ByteBufferHexDumper {
    private static final byte[] highDigits;
    private static final byte[] lowDigits;

    ByteBufferHexDumper() {
    }

    static {
        byte[] bArr = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};
        byte[] bArr2 = new byte[256];
        byte[] bArr3 = new byte[256];
        for (int i = 0; i < 256; i++) {
            bArr2[i] = bArr[i >>> 4];
            bArr3[i] = bArr[i & 15];
        }
        highDigits = bArr2;
        lowDigits = bArr3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getHexdump(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        if (remaining == 0) {
            return "empty";
        }
        StringBuffer stringBuffer = new StringBuffer((byteBuffer.remaining() * 3) - 1);
        int position = byteBuffer.position();
        int i = byteBuffer.get() & 255;
        stringBuffer.append((char) highDigits[i]);
        stringBuffer.append((char) lowDigits[i]);
        while (true) {
            remaining--;
            if (remaining > 0) {
                stringBuffer.append(' ');
                int i2 = byteBuffer.get() & 255;
                stringBuffer.append((char) highDigits[i2]);
                stringBuffer.append((char) lowDigits[i2]);
            } else {
                byteBuffer.position(position);
                return stringBuffer.toString();
            }
        }
    }
}
