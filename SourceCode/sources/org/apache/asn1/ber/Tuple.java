package org.apache.asn1.ber;

import java.nio.ByteBuffer;
import java.util.List;
import org.apache.commons.lang.ArrayUtils;
/* loaded from: classes5.dex */
public class Tuple {
    private static final int BIT_13 = 16384;
    private static final int BIT_15 = 65536;
    private static final int BIT_20 = 2097152;
    private static final int BIT_23 = 16777216;
    private static final int BIT_27 = 268435456;
    private static final int BIT_5 = 32;
    private static final int BIT_6 = 64;
    private static final int BIT_7 = 128;
    private static final ByteBuffer EMPTY_BUFFER = ByteBuffer.wrap(ArrayUtils.EMPTY_BYTE_ARRAY);
    int id;
    int index;
    boolean isPrimitive;
    int length;
    int rawTag;
    TypeClass typeClass;
    ByteBuffer valueChunk;
    int valueIndex;

    public Tuple() {
        this.rawTag = 0;
        this.id = 0;
        this.isPrimitive = true;
        this.typeClass = TypeClass.APPLICATION;
        this.length = 0;
        this.valueChunk = EMPTY_BUFFER;
        this.index = -1;
        this.valueIndex = -1;
    }

    public Tuple(int i, int i2) {
        this(i, i2, TypeClass.APPLICATION);
    }

    public Tuple(int i, int i2, TypeClass typeClass) {
        this.rawTag = 0;
        this.id = 0;
        this.isPrimitive = true;
        this.typeClass = TypeClass.APPLICATION;
        ByteBuffer byteBuffer = EMPTY_BUFFER;
        this.index = -1;
        this.valueIndex = -1;
        this.id = i;
        this.length = i2;
        this.valueChunk = byteBuffer;
        this.isPrimitive = false;
        if (typeClass != null) {
            this.typeClass = typeClass;
        }
    }

    public Tuple(int i, int i2, boolean z, TypeClass typeClass) {
        this.rawTag = 0;
        this.id = 0;
        this.isPrimitive = true;
        this.typeClass = TypeClass.APPLICATION;
        ByteBuffer byteBuffer = EMPTY_BUFFER;
        this.index = -1;
        this.valueIndex = -1;
        this.id = i;
        this.length = i2;
        this.valueChunk = byteBuffer;
        if (typeClass != null) {
            this.typeClass = typeClass;
        }
    }

    public Tuple(int i, TypeClass typeClass) {
        this.rawTag = 0;
        this.id = 0;
        this.isPrimitive = true;
        this.typeClass = TypeClass.APPLICATION;
        ByteBuffer byteBuffer = EMPTY_BUFFER;
        this.index = -1;
        this.valueIndex = -1;
        this.id = i;
        this.isPrimitive = false;
        this.valueChunk = byteBuffer;
        this.length = -2;
        if (typeClass != null) {
            this.typeClass = typeClass;
        }
    }

    public int getId() {
        return this.id;
    }

    public void setId(int i) {
        this.id = i;
        this.rawTag = Tag.setIntEncodedId(this.rawTag, i);
    }

    public int getRawTag() {
        return this.rawTag;
    }

    public void setRawTag(int i) {
        this.rawTag = i;
        this.id = Tag.getTagId(i);
        this.isPrimitive = !Tag.isRawTagConstructed(i);
        this.typeClass = TypeClass.getTypeClass(i >> 24);
    }

    public void setTag(TagEnum tagEnum) {
        this.rawTag = tagEnum.getValue();
        this.id = tagEnum.getTagId();
        this.isPrimitive = !Tag.isRawTagConstructed(tagEnum.getValue());
        this.typeClass = tagEnum.getTypeClass();
    }

    public void setTag(TagEnum tagEnum, boolean z) {
        this.rawTag = tagEnum.getValue();
        this.id = tagEnum.getTagId();
        this.isPrimitive = z;
        this.typeClass = tagEnum.getTypeClass();
    }

    public int getRawPrimitiveTag() {
        return this.rawTag & (-536870913);
    }

    public boolean isIndefinite() {
        return this.length == -2;
    }

    public boolean isIndefiniteTerminator() {
        return this.isPrimitive && this.id == 0 && this.length <= 0 && this.typeClass.equals(TypeClass.UNIVERSAL);
    }

    public boolean isPrimitive() {
        return this.isPrimitive;
    }

    public int getLength() {
        return this.length;
    }

    public void setLength(int i) {
        this.length = i;
    }

    public TypeClass getTypeClass() {
        return this.typeClass;
    }

    public ByteBuffer getLastValueChunk() {
        return this.valueChunk;
    }

    public void setLastValueChunk(ByteBuffer byteBuffer) {
        this.valueChunk = byteBuffer;
    }

    public int size() {
        int tagLength;
        int i;
        if (this.length == -2) {
            tagLength = getTagLength();
            i = getLengthLength();
        } else {
            tagLength = getTagLength() + getLengthLength();
            i = this.length;
        }
        return tagLength + i;
    }

    public void clear() {
        this.id = 0;
        this.index = 0;
        this.rawTag = 0;
        this.isPrimitive = true;
        this.length = -1;
        this.typeClass = TypeClass.APPLICATION;
        this.valueChunk = EMPTY_BUFFER;
        this.valueIndex = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Tuple) {
            Tuple tuple = (Tuple) obj;
            return tuple.id == this.id && tuple.isPrimitive == this.isPrimitive && tuple.length == this.length && tuple.typeClass == this.typeClass;
        }
        return false;
    }

    public Object clone() {
        Tuple tuple = new Tuple();
        tuple.id = this.id;
        tuple.rawTag = this.rawTag;
        tuple.isPrimitive = this.isPrimitive;
        tuple.typeClass = this.typeClass;
        tuple.length = this.length;
        ByteBuffer byteBuffer = this.valueChunk;
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.capacity());
        int position = byteBuffer.position();
        byteBuffer.rewind();
        allocate.put(byteBuffer);
        allocate.limit(byteBuffer.limit());
        byteBuffer.position(position);
        allocate.rewind();
        tuple.valueChunk = allocate;
        tuple.index = this.index;
        tuple.valueIndex = this.valueIndex;
        return tuple;
    }

    public ByteBuffer toEncodedBuffer(List list) {
        int tagLength = getTagLength();
        int lengthLength = getLengthLength();
        int i = tagLength + lengthLength;
        if (this.isPrimitive) {
            i += this.length;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i);
        setTag(allocate, tagLength);
        setLength(allocate, lengthLength);
        if (this.isPrimitive) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                allocate.put((ByteBuffer) list.get(i2));
            }
        }
        return (ByteBuffer) allocate.flip();
    }

    public void setTag(ByteBuffer byteBuffer, int i) {
        if (i >= 6) {
            throw new IllegalArgumentException(new StringBuffer("cannot support id's as large as ").append(this.id).append(" unless we start using longs for the id").toString());
        }
        byte value = (byte) this.typeClass.getValue();
        byteBuffer.position();
        if (!this.isPrimitive) {
            value = (byte) (value | 32);
        }
        int i2 = this.id;
        if (i2 < 31) {
            byteBuffer.put((byte) ((i2 & 31) | value));
            return;
        }
        byteBuffer.put((byte) (value | 31));
        int i3 = i - 1;
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 != 3) {
                    if (i3 != 4) {
                        if (i3 != 5) {
                            return;
                        }
                        byteBuffer.put((byte) (((this.id >> 21) & 127) | 128));
                    }
                    byteBuffer.put((byte) (((this.id >> 21) & 127) | 128));
                }
                byteBuffer.put((byte) (((this.id >> 14) & 127) | 128));
            }
            byteBuffer.put((byte) (((this.id >> 7) & 127) | 128));
        }
        byteBuffer.put((byte) (this.id & 127));
    }

    public void setValueLength(int i) {
        this.length = i;
    }

    public void setLength(ByteBuffer byteBuffer, int i) {
        if (i >= 6) {
            throw new IllegalArgumentException(new StringBuffer("cannot support lengths larger than a max integer using ").append(i).append(" bytes unless we start using longs or BigIntegers for the length").toString());
        }
        int i2 = this.length;
        if (i2 == -2) {
            byteBuffer.put(Byte.MIN_VALUE);
        } else if (i == 1) {
            byteBuffer.put((byte) i2);
        } else {
            byteBuffer.put((byte) ((i - 1) | 128));
            int i3 = i - 2;
            int i4 = i3 << 3;
            int i5 = 0;
            while (i5 <= i3) {
                byteBuffer.put(byteBuffer.position() + i5, (byte) (((255 << i4) & this.length) >> i4));
                i5++;
                i4 -= 8;
            }
            byteBuffer.position((byteBuffer.position() + i) - 1);
        }
    }

    public int getTagLength() {
        int i = this.id;
        if (i < 31) {
            return 1;
        }
        if (i < 64) {
            return 2;
        }
        if (i < 16384) {
            return 3;
        }
        if (i < 2097152) {
            return 4;
        }
        if (i < 268435456) {
            return 5;
        }
        throw new IllegalArgumentException(new StringBuffer("cannot support id's larger than ").append(this.id).append(" unless we start using longs for the id").toString());
    }

    public int getLengthLength() {
        int i = this.length;
        if (i == -2) {
            return 1;
        }
        if (i >= 0) {
            if (i < 128) {
                return 1;
            }
            if (i < 256) {
                return 2;
            }
            if (i < 65536) {
                return 3;
            }
            return i < 16777216 ? 4 : 5;
        }
        throw new IllegalArgumentException(new StringBuffer("integer overflow makes id negative with a value of ").append(this.id).append(" - unless we start using longs for the id there you've hit a limitation").toString());
    }
}
