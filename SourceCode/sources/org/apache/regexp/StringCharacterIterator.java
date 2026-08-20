package org.apache.regexp;
/* loaded from: classes3.dex */
public final class StringCharacterIterator implements CharacterIterator {
    private final String src;

    public StringCharacterIterator(String str) {
        this.src = str;
    }

    @Override // org.apache.regexp.CharacterIterator
    public String substring(int i, int i2) {
        return this.src.substring(i, i2);
    }

    @Override // org.apache.regexp.CharacterIterator
    public String substring(int i) {
        return this.src.substring(i);
    }

    @Override // org.apache.regexp.CharacterIterator
    public char charAt(int i) {
        return this.src.charAt(i);
    }

    @Override // org.apache.regexp.CharacterIterator
    public boolean isEnd(int i) {
        return i >= this.src.length();
    }
}
