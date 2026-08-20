package jdbm.helper;

import java.io.Serializable;
import java.util.Comparator;
/* loaded from: classes5.dex */
public final class ByteArrayComparator implements Comparator, Serializable {
    static final long serialVersionUID = 1;

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        if (obj != null) {
            if (obj2 == null) {
                throw new IllegalArgumentException("Argument 'obj2' is null");
            }
            return compareByteArray((byte[]) obj, (byte[]) obj2);
        }
        throw new IllegalArgumentException("Argument 'obj1' is null");
    }

    public static int compareByteArray(byte[] bArr, byte[] bArr2) {
        int min = Math.min(bArr.length, bArr2.length);
        for (int i = 0; i < min; i++) {
            byte b2 = bArr[i];
            if (b2 >= 0) {
                byte b3 = bArr2[i];
                if (b3 < 0 || b2 < b3) {
                    return -1;
                }
                if (b2 > b3) {
                    return 1;
                }
            } else {
                byte b4 = bArr2[i];
                if (b4 >= 0) {
                    return 1;
                }
                if (b2 < b4) {
                    return -1;
                }
                if (b2 > b4) {
                    return 1;
                }
            }
        }
        if (bArr.length == bArr2.length) {
            return 0;
        }
        return bArr.length < bArr2.length ? -1 : 1;
    }
}
