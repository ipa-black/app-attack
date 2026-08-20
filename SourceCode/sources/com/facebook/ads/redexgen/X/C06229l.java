package com.facebook.ads.redexgen.X;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C;
/* renamed from: com.facebook.ads.redexgen.X.9l  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C06229l {
    public int A00;
    public int A01;
    public Handler A03;
    public Object A04;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final InterfaceC06209j A0A;
    public final InterfaceC06219k A0B;
    public final AbstractC06309u A0C;
    public long A02 = C.TIME_UNSET;
    public boolean A05 = true;

    public C06229l(InterfaceC06209j interfaceC06209j, InterfaceC06219k interfaceC06219k, AbstractC06309u abstractC06309u, int i, Handler handler) {
        this.A0A = interfaceC06209j;
        this.A0B = interfaceC06219k;
        this.A0C = abstractC06309u;
        this.A03 = handler;
        this.A01 = i;
    }

    public final int A00() {
        return this.A00;
    }

    public final int A01() {
        return this.A01;
    }

    public final long A02() {
        return this.A02;
    }

    public final Handler A03() {
        return this.A03;
    }

    public final InterfaceC06219k A04() {
        return this.A0B;
    }

    public final C06229l A05() {
        HD.A04(!this.A09);
        if (this.A02 == C.TIME_UNSET) {
            HD.A03(this.A05);
        }
        this.A09 = true;
        this.A0A.AEk(this);
        return this;
    }

    public final C06229l A06(int i) {
        HD.A04(!this.A09);
        this.A00 = i;
        return this;
    }

    public final C06229l A07(@Nullable Object obj) {
        HD.A04(!this.A09);
        this.A04 = obj;
        return this;
    }

    public final AbstractC06309u A08() {
        return this.A0C;
    }

    public final Object A09() {
        return this.A04;
    }

    public final synchronized void A0A(boolean z) {
        this.A07 |= z;
        this.A08 = true;
        notifyAll();
    }

    public final boolean A0B() {
        return this.A05;
    }

    public final synchronized boolean A0C() throws InterruptedException {
        HD.A04(this.A09);
        HD.A04(this.A03.getLooper().getThread() != Thread.currentThread());
        while (!this.A08) {
            wait();
        }
        return this.A07;
    }

    public final synchronized boolean A0D() {
        return this.A06;
    }
}
