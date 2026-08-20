package org.apache.ldap.common.berlib.asn1;

import java.nio.ByteBuffer;
import org.apache.commons.lang.ArrayUtils;
/* loaded from: classes3.dex */
public class BufferUtils {
    public static byte[] getArray(ByteBuffer byteBuffer) {
        byte[] bArr = ArrayUtils.EMPTY_BYTE_ARRAY;
        if (byteBuffer == null || byteBuffer.remaining() == 0) {
            return bArr;
        }
        if (byteBuffer.limit() == byteBuffer.capacity() && byteBuffer.hasArray()) {
            return byteBuffer.array();
        }
        byte[] bArr2 = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr2);
        return bArr2;
    }
}
