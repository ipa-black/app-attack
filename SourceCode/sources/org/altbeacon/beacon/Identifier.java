package org.altbeacon.beacon;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.LongBuffer;
import java.util.Arrays;
import java.util.UUID;
import java.util.regex.Pattern;
/* loaded from: classes5.dex */
public class Identifier implements Comparable<Identifier>, Serializable {
    private static final int MAX_INTEGER = 65535;
    private final byte[] mValue;
    private static final Pattern HEX_PATTERN = Pattern.compile("^0x[0-9A-Fa-f]*$");
    private static final Pattern HEX_PATTERN_NO_PREFIX = Pattern.compile("^[0-9A-Fa-f]*$");
    private static final Pattern DECIMAL_PATTERN = Pattern.compile("^0|[1-9][0-9]*$");
    private static final Pattern UUID_PATTERN = Pattern.compile("^[0-9A-Fa-f]{8}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{4}-?[0-9A-Fa-f]{12}$");
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static Identifier parse(String str) {
        return parse(str, -1);
    }

    public static Identifier parse(String str, int i) {
        if (str == null) {
            throw new NullPointerException("Identifiers cannot be constructed from null pointers but \"stringValue\" is null.");
        }
        if (HEX_PATTERN.matcher(str).matches()) {
            return parseHex(str.substring(2), i);
        }
        if (UUID_PATTERN.matcher(str).matches()) {
            return parseHex(str.replace("-", ""), i);
        }
        if (DECIMAL_PATTERN.matcher(str).matches()) {
            try {
                int intValue = Integer.valueOf(str).intValue();
                if (i <= 0 || i == 2) {
                    return fromInt(intValue);
                }
                return fromLong(intValue, i);
            } catch (Throwable th) {
                throw new IllegalArgumentException("Unable to parse Identifier in decimal format.", th);
            }
        } else if (HEX_PATTERN_NO_PREFIX.matcher(str).matches()) {
            return parseHex(str, i);
        } else {
            throw new IllegalArgumentException("Unable to parse Identifier.");
        }
    }

    private static Identifier parseHex(String str, int i) {
        String str2 = (str.length() % 2 == 0 ? "" : "0") + str.toUpperCase();
        if (i > 0 && i < str2.length() / 2) {
            str2 = str2.substring(str2.length() - (i * 2));
        }
        if (i > 0 && i > str2.length() / 2) {
            int length = (i * 2) - str2.length();
            StringBuilder sb = new StringBuilder();
            while (sb.length() < length) {
                sb.append("0");
            }
            str2 = sb.toString() + str2;
        }
        int length2 = str2.length() / 2;
        byte[] bArr = new byte[length2];
        for (int i2 = 0; i2 < length2; i2++) {
            int i3 = i2 * 2;
            bArr[i2] = (byte) (Integer.parseInt(str2.substring(i3, i3 + 2), 16) & 255);
        }
        return new Identifier(bArr);
    }

    public static Identifier fromLong(long j, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Identifier length must be > 0.");
        }
        byte[] bArr = new byte[i];
        for (int i2 = i - 1; i2 >= 0; i2--) {
            bArr[i2] = (byte) (255 & j);
            j >>= 8;
        }
        return new Identifier(bArr);
    }

    public static Identifier fromInt(int i) {
        if (i < 0 || i > 65535) {
            throw new IllegalArgumentException("Identifiers can only be constructed from integers between 0 and 65535 (inclusive).");
        }
        return new Identifier(new byte[]{(byte) (i >> 8), (byte) i});
    }

    public static Identifier fromBytes(byte[] bArr, int i, int i2, boolean z) {
        if (bArr == null) {
            throw new NullPointerException("Identifiers cannot be constructed from null pointers but \"bytes\" is null.");
        }
        if (i < 0 || i > bArr.length) {
            throw new ArrayIndexOutOfBoundsException("start < 0 || start > bytes.length");
        }
        if (i2 <= bArr.length) {
            if (i > i2) {
                throw new IllegalArgumentException("start > end");
            }
            byte[] copyOfRange = Arrays.copyOfRange(bArr, i, i2);
            if (z) {
                reverseArray(copyOfRange);
            }
            return new Identifier(copyOfRange);
        }
        throw new ArrayIndexOutOfBoundsException("end > bytes.length");
    }

    public static Identifier fromUuid(UUID uuid) {
        ByteBuffer allocate = ByteBuffer.allocate(16);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        return new Identifier(allocate.array());
    }

    @Deprecated
    public Identifier(Identifier identifier) {
        if (identifier == null) {
            throw new NullPointerException("Identifiers cannot be constructed from null pointers but \"identifier\" is null.");
        }
        this.mValue = identifier.mValue;
    }

    protected Identifier(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("Identifiers cannot be constructed from null pointers but \"value\" is null.");
        }
        this.mValue = bArr;
    }

    public String toString() {
        byte[] bArr = this.mValue;
        if (bArr.length == 2) {
            return Integer.toString(toInt());
        }
        if (bArr.length == 16) {
            return toUuid().toString();
        }
        return toHexString();
    }

    public int toInt() {
        if (this.mValue.length > 2) {
            throw new UnsupportedOperationException("Only supported for Identifiers with max byte length of 2");
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = this.mValue;
            if (i >= bArr.length) {
                return i2;
            }
            i2 |= (bArr[i] & 255) << (((bArr.length - i) - 1) * 8);
            i++;
        }
    }

    public byte[] toByteArrayOfSpecifiedEndianness(boolean z) {
        byte[] bArr = this.mValue;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        if (!z) {
            reverseArray(copyOf);
        }
        return copyOf;
    }

    private static void reverseArray(byte[] bArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            int length = (bArr.length - i) - 1;
            byte b2 = bArr[i];
            bArr[i] = bArr[length];
            bArr[length] = b2;
        }
    }

    public int getByteCount() {
        return this.mValue.length;
    }

    public int hashCode() {
        return Arrays.hashCode(this.mValue);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Identifier) {
            return Arrays.equals(this.mValue, ((Identifier) obj).mValue);
        }
        return false;
    }

    public String toHexString() {
        int length = this.mValue.length;
        char[] cArr = new char[(length * 2) + 2];
        cArr[0] = '0';
        cArr[1] = 'x';
        int i = 2;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            char[] cArr2 = HEX_DIGITS;
            byte b2 = this.mValue[i2];
            cArr[i] = cArr2[(b2 & 240) >>> 4];
            i += 2;
            cArr[i3] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    @Deprecated
    public String toUuidString() {
        return toUuid().toString();
    }

    public UUID toUuid() {
        byte[] bArr = this.mValue;
        if (bArr.length != 16) {
            throw new UnsupportedOperationException("Only Identifiers backed by a byte array with length of exactly 16 can be UUIDs.");
        }
        LongBuffer asLongBuffer = ByteBuffer.wrap(bArr).asLongBuffer();
        return new UUID(asLongBuffer.get(), asLongBuffer.get());
    }

    public byte[] toByteArray() {
        return (byte[]) this.mValue.clone();
    }

    @Override // java.lang.Comparable
    public int compareTo(Identifier identifier) {
        byte[] bArr = this.mValue;
        int length = bArr.length;
        byte[] bArr2 = identifier.mValue;
        if (length != bArr2.length) {
            return bArr.length < bArr2.length ? -1 : 1;
        }
        int i = 0;
        while (true) {
            byte[] bArr3 = this.mValue;
            if (i >= bArr3.length) {
                return 0;
            }
            byte b2 = bArr3[i];
            byte b3 = identifier.mValue[i];
            if (b2 != b3) {
                return b2 < b3 ? -1 : 1;
            }
            i++;
        }
    }
}
