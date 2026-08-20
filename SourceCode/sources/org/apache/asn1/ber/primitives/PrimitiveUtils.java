package org.apache.asn1.ber.primitives;

import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
/* loaded from: classes5.dex */
public class PrimitiveUtils {
    private static final int FOUR_BYTE_MAX = Integer.MAX_VALUE;
    private static final int FOUR_BYTE_MIN = Integer.MIN_VALUE;
    private static final int ONE_BYTE_MAX = 127;
    private static final int ONE_BYTE_MIN = -128;
    private static final int THREE_BYTE_MAX = 8388607;
    private static final int THREE_BYTE_MIN = -8388608;
    private static final int TWO_BYTE_MAX = 32767;
    private static final int TWO_BYTE_MIN = -32768;
    private static final byte[] TRUE_ARRAY = {-1};
    private static final byte[] FALSE_ARRAY = {0};

    public static boolean berDecodeBoolean(byte b2) {
        return b2 != 0;
    }

    public static byte encodeBooleanAsByte(boolean z) {
        return z ? (byte) -1 : (byte) 0;
    }

    public static byte[] encodeBoolean(boolean z) {
        return z ? TRUE_ARRAY : FALSE_ARRAY;
    }

    public static boolean derCerDecodeBoolean(byte b2) {
        if (b2 == 0) {
            return false;
        }
        if (b2 == 255) {
            return true;
        }
        throw new IllegalArgumentException(new StringBuffer("For DER and CER encodings of boolean values the only  permisable values are 0x00 for false and 0xFF for true. A value of ").append((int) b2).append(" is not allowed!").toString());
    }

    public static byte[] encodeInt(int i) {
        if (i < ONE_BYTE_MIN || i > 127) {
            if (i < TWO_BYTE_MIN || i > TWO_BYTE_MAX) {
                if (i < THREE_BYTE_MIN || i > THREE_BYTE_MAX) {
                    if (i < Integer.MIN_VALUE || i > Integer.MAX_VALUE) {
                        return null;
                    }
                    return new byte[]{(byte) (i >> 24), (byte) (i >> 16), (byte) (i >> 8), (byte) i};
                }
                return new byte[]{(byte) (i >> 16), (byte) (i >> 8), (byte) i};
            }
            return new byte[]{(byte) (i >> 8), (byte) i};
        }
        return new byte[]{(byte) i};
    }

    public static int decodeInt(byte[] bArr, int i, int i2) {
        int i3;
        byte b2;
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            byte b3 = bArr[i];
            return (b3 & 128) == 128 ? b3 | (-256) : b3 & 255;
        }
        if (i2 == 2) {
            byte b4 = bArr[i];
            i3 = (b4 & 128) == 128 ? (b4 << 8) | SupportMenu.CATEGORY_MASK : b4 << 8;
            b2 = bArr[i + 1];
        } else if (i2 == 3) {
            byte b5 = bArr[i];
            i3 = ((b5 & 128) == 128 ? (b5 << 16) | ViewCompat.MEASURED_STATE_MASK : b5 << 16) | (65280 & (bArr[i + 1] << 8));
            b2 = bArr[i + 2];
        } else if (i2 == 4) {
            i3 = ((bArr[i] << 24) & ViewCompat.MEASURED_STATE_MASK) | ((bArr[i + 1] << 16) & 16711680) | (65280 & (bArr[i + 2] << 8));
            b2 = bArr[i + 3];
        } else {
            throw new IllegalArgumentException("Length should be in range [0-4]");
        }
        return (b2 & 255) | i3;
    }
}
