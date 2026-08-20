package com.applovin.exoplayer2;
/* loaded from: classes.dex */
public final class u extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    public final int f4088a;

    public u(int i) {
        super(a(i));
        this.f4088a = i;
    }

    private static String a(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "Undefined timeout." : "Detaching surface timed out." : "Setting foreground mode timed out." : "Player release timed out.";
    }
}
