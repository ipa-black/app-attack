package com.applovin.exoplayer2;

import java.io.IOException;
/* loaded from: classes.dex */
public class ai extends IOException {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f1348a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1349b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ai(String str, Throwable th, boolean z, int i) {
        super(str, th);
        this.f1348a = z;
        this.f1349b = i;
    }

    public static ai a(String str) {
        return new ai(str, null, false, 1);
    }

    public static ai a(String str, Throwable th) {
        return new ai(str, th, true, 0);
    }

    public static ai b(String str, Throwable th) {
        return new ai(str, th, true, 1);
    }
}
