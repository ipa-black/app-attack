package com.applovin.exoplayer2;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.applovin.exoplayer2.b.n;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class n implements au {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4018a;

    /* renamed from: d  reason: collision with root package name */
    private boolean f4021d;

    /* renamed from: f  reason: collision with root package name */
    private boolean f4023f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f4024g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f4025h;
    private boolean i;
    private boolean j;
    private boolean k;

    /* renamed from: b  reason: collision with root package name */
    private int f4019b = 0;

    /* renamed from: c  reason: collision with root package name */
    private long f4020c = 5000;

    /* renamed from: e  reason: collision with root package name */
    private com.applovin.exoplayer2.f.k f4022e = com.applovin.exoplayer2.f.k.f2821a;

    public n(Context context) {
        this.f4018a = context;
    }

    protected com.applovin.exoplayer2.b.h a(Context context, boolean z, boolean z2, boolean z3) {
        return new com.applovin.exoplayer2.b.n(com.applovin.exoplayer2.b.e.a(context), new n.c(new com.applovin.exoplayer2.b.f[0]), z, z2, z3 ? 1 : 0);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:5|(1:7)|8|9|10|11|(2:12|13)|15|16|17|18|19|(2:21|22)) */
    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:12|13)|15|16|17|18|19|(2:21|22)) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00c2, code lost:
        r9 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cd, code lost:
        r8 = r9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void a(android.content.Context r17, int r18, com.applovin.exoplayer2.f.k r19, boolean r20, android.os.Handler r21, com.applovin.exoplayer2.m.n r22, long r23, java.util.ArrayList<com.applovin.exoplayer2.ar> r25) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.n.a(android.content.Context, int, com.applovin.exoplayer2.f.k, boolean, android.os.Handler, com.applovin.exoplayer2.m.n, long, java.util.ArrayList):void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:5|(1:7)|8|9|10|11|(2:12|13)|15|16|17|18|19|(2:21|22)) */
    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:12|13)|15|16|17|18|19|(2:21|22)) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a6, code lost:
        r7 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b1, code lost:
        r6 = r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void a(android.content.Context r16, int r17, com.applovin.exoplayer2.f.k r18, boolean r19, com.applovin.exoplayer2.b.h r20, android.os.Handler r21, com.applovin.exoplayer2.b.g r22, java.util.ArrayList<com.applovin.exoplayer2.ar> r23) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.n.a(android.content.Context, int, com.applovin.exoplayer2.f.k, boolean, com.applovin.exoplayer2.b.h, android.os.Handler, com.applovin.exoplayer2.b.g, java.util.ArrayList):void");
    }

    protected void a(Context context, int i, ArrayList<ar> arrayList) {
        arrayList.add(new com.applovin.exoplayer2.m.a.b());
    }

    protected void a(Context context, Handler handler, int i, ArrayList<ar> arrayList) {
    }

    protected void a(Context context, com.applovin.exoplayer2.g.e eVar, Looper looper, int i, ArrayList<ar> arrayList) {
        arrayList.add(new com.applovin.exoplayer2.g.f(eVar, looper));
    }

    protected void a(Context context, com.applovin.exoplayer2.i.l lVar, Looper looper, int i, ArrayList<ar> arrayList) {
        arrayList.add(new com.applovin.exoplayer2.i.m(lVar, looper));
    }

    @Override // com.applovin.exoplayer2.au
    public ar[] a(Handler handler, com.applovin.exoplayer2.m.n nVar, com.applovin.exoplayer2.b.g gVar, com.applovin.exoplayer2.i.l lVar, com.applovin.exoplayer2.g.e eVar) {
        ArrayList<ar> arrayList = new ArrayList<>();
        a(this.f4018a, this.f4019b, this.f4022e, this.f4021d, handler, nVar, this.f4020c, arrayList);
        com.applovin.exoplayer2.b.h a2 = a(this.f4018a, this.i, this.j, this.k);
        if (a2 != null) {
            a(this.f4018a, this.f4019b, this.f4022e, this.f4021d, a2, handler, gVar, arrayList);
        }
        a(this.f4018a, lVar, handler.getLooper(), this.f4019b, arrayList);
        a(this.f4018a, eVar, handler.getLooper(), this.f4019b, arrayList);
        a(this.f4018a, this.f4019b, arrayList);
        a(this.f4018a, handler, this.f4019b, arrayList);
        return (ar[]) arrayList.toArray(new ar[0]);
    }
}
