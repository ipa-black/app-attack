package antlr.collections.impl;

import antlr.CharFormatter;
import org.apache.commons.collections.primitives.ArrayUnsignedIntList;
/* loaded from: classes.dex */
public class BitSet implements Cloneable {
    protected static final int BITS = 64;
    protected static final int LOG_BITS = 6;
    protected static final int MOD_MASK = 63;
    protected static final int NIBBLE = 4;
    protected long[] bits;

    private static final long bitMask(int i) {
        return 1 << (i & 63);
    }

    private final int numWordsToHold(int i) {
        return (i >> 6) + 1;
    }

    private static final int wordNumber(int i) {
        return i >> 6;
    }

    public BitSet() {
        this(64);
    }

    public BitSet(long[] jArr) {
        this.bits = jArr;
    }

    public BitSet(int i) {
        this.bits = new long[((i - 1) >> 6) + 1];
    }

    public void add(int i) {
        int wordNumber = wordNumber(i);
        if (wordNumber >= this.bits.length) {
            growToInclude(i);
        }
        long[] jArr = this.bits;
        jArr[wordNumber] = jArr[wordNumber] | bitMask(i);
    }

    public BitSet and(BitSet bitSet) {
        BitSet bitSet2 = (BitSet) clone();
        bitSet2.andInPlace(bitSet);
        return bitSet2;
    }

    public void andInPlace(BitSet bitSet) {
        int min = Math.min(this.bits.length, bitSet.bits.length);
        for (int i = min - 1; i >= 0; i--) {
            long[] jArr = this.bits;
            jArr[i] = jArr[i] & bitSet.bits[i];
        }
        while (true) {
            long[] jArr2 = this.bits;
            if (min >= jArr2.length) {
                return;
            }
            jArr2[min] = 0;
            min++;
        }
    }

    public void clear() {
        for (int length = this.bits.length - 1; length >= 0; length--) {
            this.bits[length] = 0;
        }
    }

    public void clear(int i) {
        int wordNumber = wordNumber(i);
        if (wordNumber >= this.bits.length) {
            growToInclude(i);
        }
        long[] jArr = this.bits;
        jArr[wordNumber] = jArr[wordNumber] & (~bitMask(i));
    }

    public Object clone() {
        try {
            BitSet bitSet = (BitSet) super.clone();
            long[] jArr = new long[this.bits.length];
            bitSet.bits = jArr;
            long[] jArr2 = this.bits;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            return bitSet;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public int degree() {
        int i = 0;
        for (int length = this.bits.length - 1; length >= 0; length--) {
            long j = this.bits[length];
            if (j != 0) {
                for (int i2 = 63; i2 >= 0; i2--) {
                    if (((1 << i2) & j) != 0) {
                        i++;
                    }
                }
            }
        }
        return i;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof BitSet)) {
            return false;
        }
        BitSet bitSet = (BitSet) obj;
        int min = Math.min(this.bits.length, bitSet.bits.length);
        int i = min;
        while (true) {
            int i2 = i - 1;
            if (i > 0) {
                if (this.bits[i2] != bitSet.bits[i2]) {
                    return false;
                }
                i = i2;
            } else {
                long[] jArr = this.bits;
                if (jArr.length > min) {
                    int length = jArr.length;
                    while (true) {
                        int i3 = length - 1;
                        if (length <= min) {
                            return true;
                        }
                        if (this.bits[i3] != 0) {
                            return false;
                        }
                        length = i3;
                    }
                } else {
                    long[] jArr2 = bitSet.bits;
                    if (jArr2.length <= min) {
                        return true;
                    }
                    int length2 = jArr2.length;
                    while (true) {
                        int i4 = length2 - 1;
                        if (length2 <= min) {
                            return true;
                        }
                        if (bitSet.bits[i4] != 0) {
                            return false;
                        }
                        length2 = i4;
                    }
                }
            }
        }
    }

    public static Vector getRanges(int[] iArr) {
        if (iArr.length == 0) {
            return null;
        }
        int i = 0;
        int i2 = iArr[0];
        int i3 = iArr[iArr.length - 1];
        if (iArr.length <= 2) {
            return null;
        }
        Vector vector = new Vector(5);
        while (i < iArr.length - 2) {
            int length = iArr.length - 1;
            int i4 = i + 1;
            int i5 = i4;
            while (true) {
                if (i5 >= iArr.length) {
                    break;
                }
                int i6 = i5 - 1;
                if (iArr[i5] != iArr[i6] + 1) {
                    length = i6;
                    break;
                }
                i5++;
            }
            if (length - i > 2) {
                vector.appendElement(new IntRange(iArr[i], iArr[length]));
            }
            i = i4;
        }
        return vector;
    }

    public void growToInclude(int i) {
        long[] jArr = new long[Math.max(this.bits.length << 1, numWordsToHold(i))];
        long[] jArr2 = this.bits;
        System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
        this.bits = jArr;
    }

    public boolean member(int i) {
        int wordNumber = wordNumber(i);
        long[] jArr = this.bits;
        return wordNumber < jArr.length && (jArr[wordNumber] & bitMask(i)) != 0;
    }

    public boolean nil() {
        for (int length = this.bits.length - 1; length >= 0; length--) {
            if (this.bits[length] != 0) {
                return false;
            }
        }
        return true;
    }

    public BitSet not() {
        BitSet bitSet = (BitSet) clone();
        bitSet.notInPlace();
        return bitSet;
    }

    public void notInPlace() {
        for (int length = this.bits.length - 1; length >= 0; length--) {
            long[] jArr = this.bits;
            jArr[length] = ~jArr[length];
        }
    }

    public void notInPlace(int i) {
        notInPlace(0, i);
    }

    public void notInPlace(int i, int i2) {
        growToInclude(i2);
        while (i <= i2) {
            int wordNumber = wordNumber(i);
            long[] jArr = this.bits;
            jArr[wordNumber] = jArr[wordNumber] ^ bitMask(i);
            i++;
        }
    }

    public static BitSet of(int i) {
        BitSet bitSet = new BitSet(i + 1);
        bitSet.add(i);
        return bitSet;
    }

    public BitSet or(BitSet bitSet) {
        BitSet bitSet2 = (BitSet) clone();
        bitSet2.orInPlace(bitSet);
        return bitSet2;
    }

    public void orInPlace(BitSet bitSet) {
        long[] jArr = bitSet.bits;
        if (jArr.length > this.bits.length) {
            setSize(jArr.length);
        }
        for (int min = Math.min(this.bits.length, bitSet.bits.length) - 1; min >= 0; min--) {
            long[] jArr2 = this.bits;
            jArr2[min] = jArr2[min] | bitSet.bits[min];
        }
    }

    public void remove(int i) {
        int wordNumber = wordNumber(i);
        if (wordNumber >= this.bits.length) {
            growToInclude(i);
        }
        long[] jArr = this.bits;
        jArr[wordNumber] = jArr[wordNumber] & (~bitMask(i));
    }

    private void setSize(int i) {
        long[] jArr = new long[i];
        System.arraycopy(this.bits, 0, jArr, 0, Math.min(i, this.bits.length));
        this.bits = jArr;
    }

    public int size() {
        return this.bits.length << 6;
    }

    public int lengthInLongWords() {
        return this.bits.length;
    }

    public boolean subset(BitSet bitSet) {
        if (bitSet == null || !(bitSet instanceof BitSet)) {
            return false;
        }
        return and(bitSet).equals(this);
    }

    public void subtractInPlace(BitSet bitSet) {
        if (bitSet == null) {
            return;
        }
        int i = 0;
        while (true) {
            long[] jArr = this.bits;
            if (i >= jArr.length) {
                return;
            }
            long[] jArr2 = bitSet.bits;
            if (i >= jArr2.length) {
                return;
            }
            jArr[i] = jArr[i] & (~jArr2[i]);
            i++;
        }
    }

    public int[] toArray() {
        int[] iArr = new int[degree()];
        int i = 0;
        for (int i2 = 0; i2 < (this.bits.length << 6); i2++) {
            if (member(i2)) {
                iArr[i] = i2;
                i++;
            }
        }
        return iArr;
    }

    public long[] toPackedArray() {
        return this.bits;
    }

    public String toString() {
        return toString(",");
    }

    public String toString(String str) {
        String str2 = "";
        for (int i = 0; i < (this.bits.length << 6); i++) {
            if (member(i)) {
                if (str2.length() > 0) {
                    str2 = new StringBuffer().append(str2).append(str).toString();
                }
                str2 = new StringBuffer().append(str2).append(i).toString();
            }
        }
        return str2;
    }

    public String toString(String str, CharFormatter charFormatter) {
        String str2 = "";
        for (int i = 0; i < (this.bits.length << 6); i++) {
            if (member(i)) {
                if (str2.length() > 0) {
                    str2 = new StringBuffer().append(str2).append(str).toString();
                }
                str2 = new StringBuffer().append(str2).append(charFormatter.literalChar(i)).toString();
            }
        }
        return str2;
    }

    public String toString(String str, Vector vector) {
        if (vector == null) {
            return toString(str);
        }
        String str2 = "";
        for (int i = 0; i < (this.bits.length << 6); i++) {
            if (member(i)) {
                if (str2.length() > 0) {
                    str2 = new StringBuffer().append(str2).append(str).toString();
                }
                if (i >= vector.size()) {
                    str2 = new StringBuffer().append(str2).append("<bad element ").append(i).append(">").toString();
                } else if (vector.elementAt(i) == null) {
                    str2 = new StringBuffer().append(str2).append("<").append(i).append(">").toString();
                } else {
                    str2 = new StringBuffer().append(str2).append((String) vector.elementAt(i)).toString();
                }
            }
        }
        return str2;
    }

    public String toStringOfHalfWords() {
        String str = new String();
        for (int i = 0; i < this.bits.length; i++) {
            if (i != 0) {
                str = new StringBuffer().append(str).append(", ").toString();
            }
            String stringBuffer = new StringBuffer().append(new StringBuffer().append(str).append(this.bits[i] & ArrayUnsignedIntList.MAX_VALUE).append("UL").toString()).append(", ").toString();
            str = new StringBuffer().append(stringBuffer).append((this.bits[i] >>> 32) & ArrayUnsignedIntList.MAX_VALUE).append("UL").toString();
        }
        return str;
    }

    public String toStringOfWords() {
        String str = new String();
        for (int i = 0; i < this.bits.length; i++) {
            if (i != 0) {
                str = new StringBuffer().append(str).append(", ").toString();
            }
            str = new StringBuffer().append(str).append(this.bits[i]).append("L").toString();
        }
        return str;
    }

    public String toStringWithRanges(String str, CharFormatter charFormatter) {
        int[] array = toArray();
        String str2 = "";
        if (array.length == 0) {
            return "";
        }
        int i = 0;
        while (i < array.length) {
            int i2 = 0;
            for (int i3 = i + 1; i3 < array.length && array[i3] == array[i3 - 1] + 1; i3++) {
                i2 = i3;
            }
            if (str2.length() > 0) {
                str2 = new StringBuffer().append(str2).append(str).toString();
            }
            if (i2 - i >= 2) {
                str2 = new StringBuffer().append(new StringBuffer().append(new StringBuffer().append(str2).append(charFormatter.literalChar(array[i])).toString()).append("..").toString()).append(charFormatter.literalChar(array[i2])).toString();
                i = i2;
            } else {
                str2 = new StringBuffer().append(str2).append(charFormatter.literalChar(array[i])).toString();
            }
            i++;
        }
        return str2;
    }
}
