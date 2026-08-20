package antlr.collections.impl;
/* loaded from: classes.dex */
public class IntRange {
    int begin;
    int end;

    public IntRange(int i, int i2) {
        this.begin = i;
        this.end = i2;
    }

    public String toString() {
        return new StringBuffer().append(this.begin).append("..").append(this.end).toString();
    }
}
