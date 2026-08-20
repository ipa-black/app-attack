package com.facebook.ads.redexgen.X;

import android.view.Surface;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.facebook.ads.internal.exoplayer2.thirdparty.analytics.AnalyticsCollector;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.Metadata;
import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.facebook.ads.redexgen.X.Wr  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1192Wr implements InterfaceC06149d, DC, AM, IG, InterfaceC0730Eh, GR, B3 {
    public static String[] A05 = {"3ui7943oJKQ0earBMheCpqpPzXrDt0u1", "Y87VavrouiKi9z", "P6cMiRGLac5hfjC0tRGIGRLUUUjxE7XX", "Gp12Iojej9PCs1Iei8EmhswJ2d7MPPra", "iPLJe15l61uvnh9YTjVALhylcUuC36cq", "JkCpp1uc3ZLfv8H0X3nexU5u26UQU15j", "bG94g9DZx4SnKjROolD8g6Osz0P9GRGH", "l5hRkIxgm3MuCDpPoC4K2VrrhVSesDup"};
    public InterfaceC06199i A00;
    public final HG A03;
    public final CopyOnWriteArraySet<InterfaceC06359z> A04 = new CopyOnWriteArraySet<>();
    public final C06329w A02 = new C06329w();
    public final C06299t A01 = new C06299t();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.facebook.ads.redexgen.X.9y] */
    private final C06349y A04(final int i, @Nullable final ER er) {
        HD.A01(this.A00);
        final long A5B = this.A03.A5B();
        final AbstractC06309u A6N = this.A00.A6N();
        final long A6G = i == this.A00.A6O() ? (er == null || !er.A01()) ? this.A00.A6G() : (this.A00.A6I() == er.A00 && this.A00.A6J() == er.A01) ? this.A00.A6L() : 0L : (i >= A6N.A01() || (er != null && er.A01())) ? 0L : A6N.A0B(i, this.A01).A00();
        final long A5v = this.A00.A5v() - this.A00.A6G();
        final long A6L = this.A00.A6L();
        return new Object(A5B, A6N, i, er, A6G, A6L, A5v) { // from class: com.facebook.ads.redexgen.X.9y
            public final int A00;
            public final long A01;
            public final long A02;
            public final long A03;
            public final long A04;
            public final AbstractC06309u A05;
            @Nullable
            public final ER A06;

            {
                this.A03 = A5B;
                this.A05 = A6N;
                this.A00 = i;
                this.A06 = er;
                this.A02 = A6G;
                this.A01 = A6L;
                this.A04 = A5v;
            }
        };
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.GR
    public final void AAN(int i, long j, long j2) {
        A01();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    public C1192Wr(@Nullable InterfaceC06199i interfaceC06199i, HG hg) {
        this.A00 = interfaceC06199i;
        this.A03 = (HG) HD.A01(hg);
    }

    private C06349y A00() {
        return A05(this.A02.A03());
    }

    private C06349y A01() {
        return A05(this.A02.A04());
    }

    private C06349y A02() {
        return A05(this.A02.A05());
    }

    private C06349y A03() {
        return A05(this.A02.A06());
    }

    private C06349y A05(@Nullable C06339x c06339x) {
        if (c06339x == null) {
            Object A01 = HD.A01(this.A00);
            String[] strArr = A05;
            if (strArr[5].charAt(24) != strArr[3].charAt(24)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A05;
            strArr2[4] = "It2FvVQ6GuD0QkNXfVFrE8OCooaDSMpJ";
            strArr2[2] = "a2HOGJm5UwCLA4g7R7QNf278R1ClTDAB";
            int A6O = ((InterfaceC06199i) A01).A6O();
            return A04(A6O, this.A02.A07(A6O));
        }
        return A04(c06339x.A00, c06339x.A01);
    }

    public final void A06() {
        if (!this.A02.A0F()) {
            C06349y A02 = A02();
            C06329w c06329w = this.A02;
            if (A05[7].charAt(15) == 'w') {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[4] = "qsPEDs7YPcMFbl4XVvGjNAFSUVJ30e5d";
            strArr[2] = "wNEtz3pAWSMGqURdz3XYnwNQJEjBbTAW";
            c06329w.A09();
            Iterator<InterfaceC06359z> it = this.A04.iterator();
            while (it.hasNext()) {
                it.next().onSeekStarted(A02);
            }
        }
    }

    public final void A07() {
        ArrayList arrayList;
        arrayList = this.A02.A05;
        List<AnalyticsCollector.WindowAndMediaPeriodId> activeMediaPeriods = new ArrayList<>(arrayList);
        Iterator<AnalyticsCollector.WindowAndMediaPeriodId> it = activeMediaPeriods.iterator();
        while (it.hasNext()) {
            C06339x c06339x = (C06339x) it.next();
            ABi(c06339x.A00, c06339x.A01);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AM
    public final void AAG(String str, long j, long j2) {
        C06349y A03 = A03();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInitialized(A03, 1, str, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AM
    public final void AAH(C0651Ap c0651Ap) {
        C06349y A00 = A00();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderDisabled(A00, 1, c0651Ap);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AM
    public final void AAI(C0651Ap c0651Ap) {
        C06349y A02 = A02();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderEnabled(A02, 1, c0651Ap);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AM
    public final void AAJ(Format format) {
        C06349y A03 = A03();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInputFormatChanged(A03, 1, format);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AM
    public final void AAK(int i) {
        C06349y A03 = A03();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onAudioSessionId(A03, i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AM
    public final void AAL(int i, long j, long j2) {
        C06349y A03 = A03();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onAudioUnderrun(A03, i, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0730Eh
    public final void AAm(int i, @Nullable ER er, C0729Eg c0729Eg) {
        C06349y A04 = A04(i, er);
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A05[7].charAt(15) == 'w') {
                throw new RuntimeException();
            }
            A05[7] = "A4QXCUmAUOBVX64TvaZ46B5z8oAUnNZh";
            if (hasNext) {
                it.next().onDownstreamFormatChanged(A04, c0729Eg);
            } else {
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void AAn() {
        C06349y A03 = A03();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDrmKeysLoaded(A03);
        }
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void AAo() {
        C06349y A03 = A03();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A05[7].charAt(15) == 'w') {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[4] = "H8nHlV26gM4XBGJAm7WOVvtwu96ZUK2X";
            strArr[2] = "PAYN32B5Yp2dRtm6BiBsWpdjvopWw5ut";
            if (hasNext) {
                it.next().onDrmKeysRemoved(A03);
            } else {
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void AAp() {
        C06349y A03 = A03();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDrmKeysRestored(A03);
        }
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void AAq(Exception exc) {
        C06349y A03 = A03();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDrmSessionManagerError(A03, exc);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IG
    public final void AAr(int i, long j) {
        C06349y A00 = A00();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDroppedVideoFrames(A00, i, j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0730Eh
    public final void ABR(int i, @Nullable ER er, C0728Ef c0728Ef, C0729Eg c0729Eg) {
        A04(i, er);
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0730Eh
    public final void ABT(int i, @Nullable ER er, C0728Ef c0728Ef, C0729Eg c0729Eg) {
        A04(i, er);
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A05[7].charAt(15) == 'w') {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[0] = "U0y5Da5mII5YR5LLA1Yw3vUoz2XQzjRa";
            strArr[6] = "AsACfu1w80VTJMOzwO3g8Y2nz7gc0iIE";
            if (!hasNext) {
                return;
            }
            it.next();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0730Eh
    public final void ABW(int i, @Nullable ER er, C0728Ef c0728Ef, C0729Eg c0729Eg, IOException iOException, boolean z) {
        C06349y A04 = A04(i, er);
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onLoadError(A04, c0728Ef, c0729Eg, iOException, z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0730Eh
    public final void ABY(int i, @Nullable ER er, C0728Ef c0728Ef, C0729Eg c0729Eg) {
        A04(i, er);
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06149d
    public final void ABa(boolean z) {
        C06349y A02 = A02();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onLoadingChanged(A02, z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0730Eh
    public final void ABh(int i, ER er) {
        this.A02.A0B(i, er);
        C06349y A04 = A04(i, er);
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onMediaPeriodCreated(A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0730Eh
    public final void ABi(int i, ER er) {
        this.A02.A0C(i, er);
        C06349y A04 = A04(i, er);
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onMediaPeriodReleased(A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.DC
    public final void ABl(Metadata metadata) {
        C06349y A02 = A02();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onMetadata(A02, metadata);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06149d
    public final void AC1(C06119a c06119a) {
        C06349y A02 = A02();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            InterfaceC06359z next = it.next();
            if (A05[7].charAt(15) == 'w') {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[5] = "tyr0dpEvlbVKV2bQNXg9NMaK2xy6BoSW";
            strArr[3] = "0QT1knH3BDrt7WSXrhNoOdrd2qYVbD8e";
            next.onPlaybackParametersChanged(A02, c06119a);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06149d
    public final void AC3(C9F c9f) {
        C06349y A02 = A02();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onPlayerError(A02, c9f);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06149d
    public final void AC5(boolean z, int i) {
        C06349y A02 = A02();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            String[] strArr = A05;
            if (strArr[0].charAt(24) != strArr[6].charAt(24)) {
                throw new RuntimeException();
            }
            A05[1] = "LXJ0q";
            if (!hasNext) {
                return;
            }
            InterfaceC06359z next = it.next();
            String[] strArr2 = A05;
            if (strArr2[4].charAt(29) != strArr2[2].charAt(29)) {
                String[] strArr3 = A05;
                strArr3[5] = "X7wD26nry5cKRUDoaHEW6GIg2BkBQsxF";
                strArr3[3] = "mBKm4QAdZAalWFRu5fZgU4pH2nbenvRU";
                next.onPlayerStateChanged(A02, z, i);
            } else {
                String[] strArr4 = A05;
                strArr4[5] = "Z6EwV7KsnuzYN7ajnraaFM2k28xO4kcl";
                strArr4[3] = "L2gfOX15V0Xhx6fkmzEhPGDX2RpQhPed";
                next.onPlayerStateChanged(A02, z, i);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06149d
    public final void AC7(int i) {
        this.A02.A0A(i);
        C06349y A02 = A02();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onPositionDiscontinuity(A02, i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0730Eh
    public final void ACH(int i, ER er) {
        this.A02.A0D(i, er);
        C06349y A04 = A04(i, er);
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onReadingStarted(A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IG
    public final void ACL(Surface surface) {
        C06349y A03 = A03();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onRenderedFirstFrame(A03, surface);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06149d
    public final void ACW() {
        if (this.A02.A0F()) {
            this.A02.A08();
            C06349y A02 = A02();
            Iterator<InterfaceC06359z> it = this.A04.iterator();
            while (it.hasNext()) {
                it.next().onSeekProcessed(A02);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06149d
    public final void ACl(AbstractC06309u abstractC06309u, @Nullable Object obj, int i) {
        this.A02.A0E(abstractC06309u);
        C06349y A02 = A02();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onTimelineChanged(A02, i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06149d
    public final void ACn(TrackGroupArray trackGroupArray, GK gk) {
        C06349y A02 = A02();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onTracksChanged(A02, trackGroupArray, gk);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IG
    public final void ACw(String str, long j, long j2) {
        C06349y A03 = A03();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInitialized(A03, 2, str, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IG
    public final void ACx(C0651Ap c0651Ap) {
        C06349y A00 = A00();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderDisabled(A00, 2, c0651Ap);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IG
    public final void ACy(C0651Ap c0651Ap) {
        C06349y A02 = A02();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderEnabled(A02, 2, c0651Ap);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IG
    public final void AD3(Format format) {
        C06349y A03 = A03();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onDecoderInputFormatChanged(A03, 2, format);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IG
    public final void AD9(int i, int i2, int i3, float f2) {
        C06349y A03 = A03();
        Iterator<InterfaceC06359z> it = this.A04.iterator();
        while (it.hasNext()) {
            it.next().onVideoSizeChanged(A03, i, i2, i3, f2);
        }
    }
}
