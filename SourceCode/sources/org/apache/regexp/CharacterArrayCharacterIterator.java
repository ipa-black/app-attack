package org.apache.regexp;
/* loaded from: classes3.dex */
public final class CharacterArrayCharacterIterator implements CharacterIterator {
    private final int len;
    private final int off;
    private final char[] src;

    public CharacterArrayCharacterIterator(char[] cArr, int i, int i2) {
        this.src = cArr;
        this.off = i;
        this.len = i2;
    }

    @Override // org.apache.regexp.CharacterIterator
    public String substring(int i, int i2) {
        return new String(this.src, this.off + i, i2);
    }

    @Override // org.apache.regexp.CharacterIterator
    public String substring(int i) {
        return new String(this.src, this.off + i, this.len);
    }

    @Override // org.apache.regexp.CharacterIterator
    public char charAt(int i) {
        return this.src[this.off + i];
    }

    @Override // org.apache.regexp.CharacterIterator
    public boolean isEnd(int i) {
        return i >= this.len;
    }
}
