package com.applovin.impl.mediation.debugger.ui.b.a;

import android.content.Context;
import android.text.SpannedString;
import com.applovin.impl.mediation.debugger.ui.d.c;
import com.applovin.impl.sdk.k;
/* loaded from: classes.dex */
public class b extends c {

    /* renamed from: a  reason: collision with root package name */
    private final k.a f5061a;
    private final Context o;
    private final boolean p;

    public b(k.a aVar, boolean z, Context context) {
        super(c.b.RIGHT_DETAIL);
        this.f5061a = aVar;
        this.o = context;
        this.f5116d = new SpannedString(aVar.a());
        this.p = z;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.c
    public boolean c() {
        return true;
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.c
    public SpannedString i_() {
        return new SpannedString(this.f5061a.b(this.o));
    }

    @Override // com.applovin.impl.mediation.debugger.ui.d.c
    public boolean j_() {
        Boolean a2 = this.f5061a.a(this.o);
        if (a2 != null) {
            return a2.equals(Boolean.valueOf(this.p));
        }
        return false;
    }
}
