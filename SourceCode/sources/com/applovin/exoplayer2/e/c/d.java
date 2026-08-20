package com.applovin.exoplayer2.e.c;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.y;
/* loaded from: classes.dex */
abstract class d {

    /* renamed from: a  reason: collision with root package name */
    protected final x f2122a;

    /* loaded from: classes.dex */
    public static final class a extends ai {
        public a(String str) {
            super(str, null, false, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(x xVar) {
        this.f2122a = xVar;
    }

    protected abstract boolean a(y yVar) throws ai;

    protected abstract boolean a(y yVar, long j) throws ai;

    public final boolean b(y yVar, long j) throws ai {
        return a(yVar) && a(yVar, j);
    }
}
