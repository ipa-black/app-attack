package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.facebook.ads.redexgen.X.Ee  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0727Ee {
    public static String[] A04 = {"XHo", "ubtbrXFiKU0aMD9WZdFFXMvL5SNCKhBD", "k9cdhOGQS1oEdCdR21VeueSE4nGT", "BZNadIlHUT8LbNbZ8qdMYncW4fXCJJFh", "22DNreJXUwzG5I9t9ymbmjKefjfUTWMr", "OkM0GcBH5aVjMNZagw1JqhxPR8ijdnHI", "ik3Hzc9el9B7KCBCFVHKN4tCPL2D2JGF", "0FgMGgJ2UsG2ZcXwt2m5OtQLezKmVI44"};
    public final int A00;
    @Nullable
    public final ER A01;
    public final long A02;
    public final CopyOnWriteArrayList<C0726Ed> A03;

    public C0727Ee() {
        this(new CopyOnWriteArrayList(), 0, null, 0L);
    }

    public C0727Ee(CopyOnWriteArrayList<C0726Ed> copyOnWriteArrayList, int i, @Nullable ER er, long j) {
        this.A03 = copyOnWriteArrayList;
        this.A00 = i;
        this.A01 = er;
        this.A02 = j;
    }

    private long A00(long j) {
        long A01 = AnonymousClass99.A01(j);
        if (A01 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long mediaTimeMs = this.A02;
        return mediaTimeMs + A01;
    }

    private void A01(Handler handler, Runnable runnable) {
        if (handler.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }

    @CheckResult
    public final C0727Ee A02(int i, @Nullable ER er, long j) {
        return new C0727Ee(this.A03, i, er, j);
    }

    public final void A03() {
        HD.A04(this.A01 != null);
        Iterator<C0726Ed> it = this.A03.iterator();
        while (it.hasNext()) {
            C0726Ed next = it.next();
            InterfaceC0730Eh listener = next.A01;
            A01(next.A00, new EU(this, listener));
        }
    }

    public final void A04() {
        HD.A04(this.A01 != null);
        String[] strArr = A04;
        if (strArr[4].charAt(4) != strArr[1].charAt(4)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[4] = "rYA4ryMG3XFm73cnSWA4HWNW3HUxv7KC";
        strArr2[1] = "1YJ2rSWw51hvYcz1kikUBhJeKIWd76IZ";
        Iterator<C0726Ed> it = this.A03.iterator();
        while (it.hasNext()) {
            C0726Ed next = it.next();
            InterfaceC0730Eh listener = next.A01;
            A01(next.A00, new EV(this, listener));
        }
    }

    public final void A05() {
        HD.A04(this.A01 != null);
        Iterator<C0726Ed> it = this.A03.iterator();
        while (it.hasNext()) {
            C0726Ed next = it.next();
            InterfaceC0730Eh listener = next.A01;
            A01(next.A00, new RunnableC0723Ea(this, listener));
        }
    }

    public final void A06(int i, @Nullable Format format, int i2, @Nullable Object obj, long j) {
        A0C(new C0729Eg(1, i, format, i2, obj, A00(j), C.TIME_UNSET));
    }

    public final void A07(Handler handler, InterfaceC0730Eh interfaceC0730Eh) {
        HD.A03((handler == null || interfaceC0730Eh == null) ? false : true);
        this.A03.add(new C0726Ed(handler, interfaceC0730Eh));
    }

    public final void A08(C0728Ef c0728Ef, C0729Eg c0729Eg) {
        Iterator<C0726Ed> it = this.A03.iterator();
        while (it.hasNext()) {
            C0726Ed next = it.next();
            InterfaceC0730Eh listener = next.A01;
            A01(next.A00, new EY(this, listener, c0728Ef, c0729Eg));
        }
    }

    public final void A09(C0728Ef c0728Ef, C0729Eg c0729Eg) {
        Iterator<C0726Ed> it = this.A03.iterator();
        while (it.hasNext()) {
            C0726Ed next = it.next();
            InterfaceC0730Eh listener = next.A01;
            A01(next.A00, new EX(this, listener, c0728Ef, c0729Eg));
        }
    }

    public final void A0A(C0728Ef c0728Ef, C0729Eg c0729Eg) {
        Iterator<C0726Ed> it = this.A03.iterator();
        while (it.hasNext()) {
            C0726Ed next = it.next();
            InterfaceC0730Eh listener = next.A01;
            A01(next.A00, new EW(this, listener, c0728Ef, c0729Eg));
        }
    }

    public final void A0B(C0728Ef c0728Ef, C0729Eg c0729Eg, IOException iOException, boolean z) {
        Iterator<C0726Ed> it = this.A03.iterator();
        while (it.hasNext()) {
            C0726Ed next = it.next();
            A01(next.A00, new EZ(this, next.A01, c0728Ef, c0729Eg, iOException, z));
        }
    }

    public final void A0C(C0729Eg c0729Eg) {
        Iterator<C0726Ed> it = this.A03.iterator();
        while (it.hasNext()) {
            C0726Ed next = it.next();
            InterfaceC0730Eh listener = next.A01;
            A01(next.A00, new RunnableC0725Ec(this, listener, c0729Eg));
        }
    }

    public final void A0D(InterfaceC0730Eh interfaceC0730Eh) {
        Iterator<C0726Ed> it = this.A03.iterator();
        while (it.hasNext()) {
            C0726Ed listenerAndHandler = it.next();
            if (listenerAndHandler.A01 == interfaceC0730Eh) {
                this.A03.remove(listenerAndHandler);
            }
        }
    }

    public final void A0E(C0774Gb c0774Gb, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3) {
        A0A(new C0728Ef(c0774Gb, j3, 0L, 0L), new C0729Eg(i, i2, format, i3, obj, A00(j), A00(j2)));
    }

    public final void A0F(C0774Gb c0774Gb, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5) {
        A08(new C0728Ef(c0774Gb, j3, j4, j5), new C0729Eg(i, i2, format, i3, obj, A00(j), A00(j2)));
    }

    public final void A0G(C0774Gb c0774Gb, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5) {
        A09(new C0728Ef(c0774Gb, j3, j4, j5), new C0729Eg(i, i2, format, i3, obj, A00(j), A00(j2)));
    }

    public final void A0H(C0774Gb c0774Gb, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
        A0B(new C0728Ef(c0774Gb, j3, j4, j5), new C0729Eg(i, i2, format, i3, obj, A00(j), A00(j2)), iOException, z);
    }
}
