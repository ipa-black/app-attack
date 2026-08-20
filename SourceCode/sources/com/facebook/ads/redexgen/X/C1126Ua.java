package com.facebook.ads.redexgen.X;

import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* renamed from: com.facebook.ads.redexgen.X.Ua  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1126Ua implements InterfaceC0787Gq {
    public HandlerC0781Gk<? extends InterfaceC0782Gl> A00;
    public IOException A01;
    public final ExecutorService A02;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final <T extends InterfaceC0782Gl> long A04(T t, InterfaceC0780Gj<T> interfaceC0780Gj, int i) {
        Looper myLooper = Looper.myLooper();
        HD.A04(myLooper != null);
        this.A01 = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new HandlerC0781Gk(this, myLooper, t, interfaceC0780Gj, i, elapsedRealtime).A06(0L);
        return elapsedRealtime;
    }

    public C1126Ua(String str) {
        this.A02 = C0815Hs.A0T(str);
    }

    public final void A05() {
        this.A00.A07(false);
    }

    public final void A06(int i) throws IOException {
        IOException iOException = this.A01;
        if (iOException == null) {
            HandlerC0781Gk<? extends InterfaceC0782Gl> handlerC0781Gk = this.A00;
            if (handlerC0781Gk != null) {
                if (i == Integer.MIN_VALUE) {
                    i = handlerC0781Gk.A03;
                }
                handlerC0781Gk.A05(i);
                return;
            }
            return;
        }
        throw iOException;
    }

    public final void A07(@Nullable InterfaceC0783Gm interfaceC0783Gm) {
        HandlerC0781Gk<? extends InterfaceC0782Gl> handlerC0781Gk = this.A00;
        if (handlerC0781Gk != null) {
            handlerC0781Gk.A07(true);
        }
        if (interfaceC0783Gm != null) {
            this.A02.execute(new RunnableC0784Gn(interfaceC0783Gm));
        }
        this.A02.shutdown();
    }

    public final boolean A08() {
        return this.A00 != null;
    }
}
