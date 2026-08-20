package com.applovin.exoplayer2.k;

import android.content.Context;
import com.applovin.exoplayer2.k.i;
import com.applovin.exoplayer2.k.q;
@Deprecated
/* loaded from: classes.dex */
public final class p implements i.a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f3674a;

    /* renamed from: b  reason: collision with root package name */
    private final aa f3675b;

    /* renamed from: c  reason: collision with root package name */
    private final i.a f3676c;

    public p(Context context, aa aaVar, i.a aVar) {
        this.f3674a = context.getApplicationContext();
        this.f3675b = aaVar;
        this.f3676c = aVar;
    }

    public p(Context context, String str) {
        this(context, str, (aa) null);
    }

    public p(Context context, String str, aa aaVar) {
        this(context, aaVar, new q.a().a(str));
    }

    @Override // com.applovin.exoplayer2.k.i.a
    /* renamed from: b */
    public o a() {
        o oVar = new o(this.f3674a, this.f3676c.a());
        aa aaVar = this.f3675b;
        if (aaVar != null) {
            oVar.a(aaVar);
        }
        return oVar;
    }
}
