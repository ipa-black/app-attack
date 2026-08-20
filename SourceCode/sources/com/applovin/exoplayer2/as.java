package com.applovin.exoplayer2;
/* loaded from: classes.dex */
public interface as {
    static int a(int i, int i2, int i3) {
        return i | i2 | i3;
    }

    static int b(int i) {
        return a(i, 0, 0);
    }

    static int c(int i) {
        return i & 7;
    }

    static int d(int i) {
        return i & 32;
    }

    int a();

    int a(v vVar) throws p;

    int o() throws p;

    String y();
}
