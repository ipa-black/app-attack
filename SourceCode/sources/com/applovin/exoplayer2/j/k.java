package com.applovin.exoplayer2.j;

import com.applovin.exoplayer2.at;
import com.applovin.exoplayer2.l.ai;
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final int f3567a;

    /* renamed from: b  reason: collision with root package name */
    public final at[] f3568b;

    /* renamed from: c  reason: collision with root package name */
    public final d[] f3569c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f3570d;

    public k(at[] atVarArr, d[] dVarArr, Object obj) {
        this.f3568b = atVarArr;
        this.f3569c = (d[]) dVarArr.clone();
        this.f3570d = obj;
        this.f3567a = atVarArr.length;
    }

    public boolean a(int i) {
        return this.f3568b[i] != null;
    }

    public boolean a(k kVar) {
        if (kVar == null || kVar.f3569c.length != this.f3569c.length) {
            return false;
        }
        for (int i = 0; i < this.f3569c.length; i++) {
            if (!a(kVar, i)) {
                return false;
            }
        }
        return true;
    }

    public boolean a(k kVar, int i) {
        return kVar != null && ai.a(this.f3568b[i], kVar.f3568b[i]) && ai.a(this.f3569c[i], kVar.f3569c[i]);
    }
}
