package org.apache.asn1.ber;

import org.apache.asn1.codec.DecoderException;
/* loaded from: classes5.dex */
public class Tag {
    private static final int CONSTRUCTED_FLAG = 32;
    private static final int FOUR_OCTET_IDMAX = 2097151;
    private static final int LONG_FLAG = 128;
    static final int LONG_MASK = 127;
    private static final int ONE_OCTET_IDMAX = 30;
    static final int SHORT_MASK = 31;
    private static final int THREE_OCTET_IDMAX = 16383;
    private static final int TWO_OCTET_IDMAX = 127;
    private int id = 0;
    private boolean isPrimitive = true;
    private boolean isFixated = false;
    private TypeClass typeClass = TypeClass.APPLICATION;
    private final TagOctetCollector buf = new TagOctetCollector();

    public static final int getTagId(int i) {
        int i2 = (i >> 24) & 31;
        if (i2 != 31) {
            return i2;
        }
        int i3 = (16711680 & i) >> 16;
        int i4 = i3 & 127;
        if ((i3 & 128) == 0) {
            return i4;
        }
        int i5 = (65280 & i) >> 8;
        if (i5 == 0) {
            return i4 << 7;
        }
        int i6 = (i4 << 7) | (i5 & 127);
        if ((i5 & 128) == 0) {
            return i6;
        }
        return (i & 127) | (i6 << 7);
    }

    public static final boolean isConstructed(int i) {
        return (i & 32) == 32;
    }

    public static final boolean isPrimitive(int i) {
        return (i & 32) == 0;
    }

    public static boolean isRawTagConstructed(int i) {
        return (i & 536870912) > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clear() {
        this.id = 0;
        this.isFixated = false;
        this.isPrimitive = true;
        this.typeClass = TypeClass.APPLICATION;
        this.buf.clear();
    }

    void fixate() throws DecoderException {
        this.isFixated = true;
        this.id = getTagId(this.buf);
        this.isPrimitive = isPrimitive(this.buf.get(0));
        this.typeClass = TypeClass.getTypeClass(this.buf.get(0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void add(byte b2) throws DecoderException {
        if (this.isFixated) {
            throw new IllegalStateException("data added to fixated tag");
        }
        this.buf.put(b2);
        if (this.buf.size() == 1) {
            if ((b2 & 31) != 31) {
                fixate();
            }
        } else if ((b2 & 128) == 0) {
            fixate();
        }
    }

    public byte[] getOctets() {
        return this.buf.toArray();
    }

    public int size() {
        return this.buf.size();
    }

    public int getId() {
        return this.id;
    }

    public int getRawTag() {
        return this.buf.getIntValue();
    }

    public boolean isPrimitive() {
        return this.isPrimitive;
    }

    public boolean isFixated() {
        return this.isFixated;
    }

    public TypeClass getTypeClass() {
        return this.typeClass;
    }

    public static final int setIntEncodedId(int i, int i2) {
        int i3;
        if (i2 <= 30) {
            i3 = i2 << 24;
        } else if (i2 <= 127) {
            i |= 520093696;
            i3 = (i2 & 127) << 16;
        } else if (i2 <= THREE_OCTET_IDMAX) {
            i = i | 520093696 | ((i2 & 16256) << 9) | ((i2 & 127) << 8);
            i3 = 8388608;
        } else if (i2 > FOUR_OCTET_IDMAX) {
            throw new IllegalArgumentException(new StringBuffer("Id argument value of ").append(i2).append(" was greater than the maximum supported id of 2097151").toString());
        } else {
            i = i | 520093696 | ((2080768 & i2) << 2) | ((i2 & 16256) << 1) | (i2 & 127);
            i3 = 8421376;
        }
        return i | i3;
    }

    public static final int getIntEncodedTag(TypeClass typeClass, int i, boolean z) {
        int value = typeClass.getValue() << 24;
        if (z) {
            value |= 536870912;
        }
        return setIntEncodedId(value, i);
    }

    public static final int getTagId(byte[] bArr) throws DecoderException {
        if (bArr.length > 4) {
            throw new DecoderException("Tag number is too large.");
        }
        int i = 0;
        int i2 = bArr[0] & 31;
        if (i2 == 31 || bArr.length != 1) {
            for (int i3 = 1; i3 < bArr.length; i3++) {
                i = (i << 7) | (bArr[i3] & Byte.MAX_VALUE);
            }
            return i;
        }
        return i2;
    }

    public static final int getTagId(TagOctetCollector tagOctetCollector) {
        int i = 0;
        int i2 = tagOctetCollector.get(0) & 31;
        if (i2 == 31 || tagOctetCollector.size() != 1) {
            for (int i3 = 1; i3 < tagOctetCollector.size(); i3++) {
                i = (i << 7) | (tagOctetCollector.get(i3) & Byte.MAX_VALUE);
            }
            return i;
        }
        return i2;
    }
}
