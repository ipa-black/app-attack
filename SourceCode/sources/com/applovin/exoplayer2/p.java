package com.applovin.exoplayer2;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.applovin.exoplayer2.g;
import java.io.IOException;
/* loaded from: classes.dex */
public final class p extends ak {

    /* renamed from: h  reason: collision with root package name */
    public static final g.a<p> f4031h = new g.a() { // from class: com.applovin.exoplayer2.p$$ExternalSyntheticLambda0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            return p.m128$r8$lambda$2z2sB96fqLegmebYg4owYHuMdo(bundle);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f4032a;

    /* renamed from: b  reason: collision with root package name */
    public final String f4033b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4034c;

    /* renamed from: d  reason: collision with root package name */
    public final v f4035d;

    /* renamed from: e  reason: collision with root package name */
    public final int f4036e;

    /* renamed from: f  reason: collision with root package name */
    public final com.applovin.exoplayer2.h.o f4037f;

    /* renamed from: g  reason: collision with root package name */
    final boolean f4038g;

    /* renamed from: $r8$lambda$2z2sB96fqLegmebYg4owYHu-Mdo  reason: not valid java name */
    public static /* synthetic */ p m128$r8$lambda$2z2sB96fqLegmebYg4owYHuMdo(Bundle bundle) {
        return new p(bundle);
    }

    private p(int i, Throwable th, int i2) {
        this(i, th, null, i2, null, -1, null, 4, false);
    }

    private p(int i, Throwable th, String str, int i2, String str2, int i3, v vVar, int i4, boolean z) {
        this(a(i, str, str2, i3, vVar, i4), th, i2, i, str2, i3, vVar, i4, null, SystemClock.elapsedRealtime(), z);
    }

    private p(Bundle bundle) {
        super(bundle);
        this.f4032a = bundle.getInt(a(1001), 2);
        this.f4033b = bundle.getString(a(1002));
        this.f4034c = bundle.getInt(a(1003), -1);
        this.f4035d = (v) com.applovin.exoplayer2.l.c.a(v.F, bundle.getBundle(a(1004)));
        this.f4036e = bundle.getInt(a(1005), 4);
        this.f4038g = bundle.getBoolean(a(1006), false);
        this.f4037f = null;
    }

    private p(String str, Throwable th, int i, int i2, String str2, int i3, v vVar, int i4, com.applovin.exoplayer2.h.o oVar, long j, boolean z) {
        super(str, th, i, j);
        boolean z2 = false;
        com.applovin.exoplayer2.l.a.a(!z || i2 == 1);
        com.applovin.exoplayer2.l.a.a((th != null || i2 == 3) ? true : z2);
        this.f4032a = i2;
        this.f4033b = str2;
        this.f4034c = i3;
        this.f4035d = vVar;
        this.f4036e = i4;
        this.f4037f = oVar;
        this.f4038g = z;
    }

    public static p a(IOException iOException, int i) {
        return new p(0, iOException, i);
    }

    @Deprecated
    public static p a(RuntimeException runtimeException) {
        return a(runtimeException, 1000);
    }

    public static p a(RuntimeException runtimeException, int i) {
        return new p(2, runtimeException, i);
    }

    public static p a(Throwable th, String str, int i, v vVar, int i2, boolean z, int i3) {
        return new p(1, th, null, i3, str, i, vVar, vVar == null ? 4 : i2, z);
    }

    private static String a(int i, String str, String str2, int i2, v vVar, int i3) {
        String str3 = i != 0 ? i != 1 ? i != 3 ? "Unexpected runtime error" : "Remote error" : str2 + " error, index=" + i2 + ", format=" + vVar + ", format_supported=" + h.a(i3) : "Source error";
        return !TextUtils.isEmpty(str) ? str3 + ": " + str : str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p a(com.applovin.exoplayer2.h.o oVar) {
        return new p((String) com.applovin.exoplayer2.l.ai.a(getMessage()), getCause(), this.i, this.f4032a, this.f4033b, this.f4034c, this.f4035d, this.f4036e, oVar, this.j, this.f4038g);
    }
}
