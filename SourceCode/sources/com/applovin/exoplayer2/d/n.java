package com.applovin.exoplayer2.d;

import com.applovin.exoplayer2.l.ai;
import java.util.UUID;
/* loaded from: classes.dex */
public final class n implements com.applovin.exoplayer2.c.b {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f2034a;

    /* renamed from: b  reason: collision with root package name */
    public final UUID f2035b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f2036c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f2037d;

    static {
        f2034a = "Amazon".equals(ai.f3783c) && ("AFTM".equals(ai.f3784d) || "AFTB".equals(ai.f3784d));
    }

    public n(UUID uuid, byte[] bArr, boolean z) {
        this.f2035b = uuid;
        this.f2036c = bArr;
        this.f2037d = z;
    }
}
