package jdbm.helper;

import androidx.core.view.MotionEventCompat;
import java.io.UnsupportedEncodingException;
import kotlin.jvm.internal.ShortCompanionObject;
import org.apache.commons.collections.primitives.ArrayUnsignedIntList;
/* loaded from: classes5.dex */
public class Conversion {
    public static byte[] convertToByteArray(String str) {
        try {
            return str.getBytes("UTF8");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            throw new Error("Platform doesn't support UTF8 encoding");
        }
    }

    public static byte[] convertToByteArray(byte b2) {
        return new byte[]{(byte) (b2 ^ Byte.MIN_VALUE)};
    }

    public static byte[] convertToByteArray(short s) {
        byte[] bArr = new byte[2];
        pack2(bArr, 0, (short) (s ^ ShortCompanionObject.MIN_VALUE));
        return bArr;
    }

    public static byte[] convertToByteArray(int i) {
        byte[] bArr = new byte[4];
        pack4(bArr, 0, i ^ Integer.MIN_VALUE);
        return bArr;
    }

    public static byte[] convertToByteArray(long j) {
        byte[] bArr = new byte[8];
        pack8(bArr, 0, j ^ Long.MIN_VALUE);
        return bArr;
    }

    public static String convertToString(byte[] bArr) {
        try {
            return new String(bArr, "UTF8");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            throw new Error("Platform doesn't support UTF8 encoding");
        }
    }

    public static int convertToInt(byte[] bArr) {
        return unpack4(bArr, 0) ^ Integer.MIN_VALUE;
    }

    public static long convertToLong(byte[] bArr) {
        return ((unpack4(bArr, 0) << 32) + (unpack4(bArr, 4) & ArrayUnsignedIntList.MAX_VALUE)) ^ Long.MIN_VALUE;
    }

    static int unpack4(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | (bArr[i] << 24) | ((bArr[i + 1] << 16) & 16711680) | ((bArr[i + 2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    static final void pack2(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 8);
        bArr[i + 1] = (byte) i2;
    }

    static final void pack4(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    static final void pack8(byte[] bArr, int i, long j) {
        pack4(bArr, 0, (int) (j >> 32));
        pack4(bArr, 4, (int) j);
    }

    public static void main(String[] strArr) {
        System.out.println(new StringBuffer("int value of 5 is: ").append(convertToInt(convertToByteArray(5))).toString());
        System.out.println(new StringBuffer("int value of -1 is: ").append(convertToInt(convertToByteArray(-1))).toString());
        System.out.println(new StringBuffer("int value of 22111000 is: ").append(convertToInt(convertToByteArray(22111000))).toString());
        System.out.println(new StringBuffer("long value of 5 is: ").append(convertToLong(convertToByteArray(5L))).toString());
        System.out.println(new StringBuffer("long value of -1 is: ").append(convertToLong(convertToByteArray(-1L))).toString());
        System.out.println(new StringBuffer("long value of 1112223334445556667 is: ").append(convertToLong(convertToByteArray(1112223334445556667L))).toString());
    }
}
