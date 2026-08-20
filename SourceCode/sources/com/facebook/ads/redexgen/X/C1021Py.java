package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.ads.internal.exoplayer2.thirdparty.offline.DownloadAction;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Py  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1021Py {
    public static C1021Py A09;
    public static byte[] A0A;
    public static final DownloadAction.Deserializer[] A0B;
    public C0716Dt A00;
    @Nullable
    public InterfaceC0794Gx A01;
    public File A02;
    public boolean A03;
    public final C1202Xb A06;
    public final Handler A04 = new Handler(Looper.getMainLooper());
    public final SparseArray<C1019Pw> A05 = new SparseArray<>();
    public final Runnable A08 = new RunnableC1018Pv(this);
    public final InterfaceC0709Dm A07 = new JL(this);

    public static String A07(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 103);
        }
        return new String(copyOfRange);
    }

    public static void A0C() {
        A0A = new byte[]{-103, -69, -14, -19, -34, -20, -77, -103, -69, -3, 20, 15, 0, 14, -69, -24, 19, 27, 18, 16, 19, 5, 8, 9, 8, -46, -60, -9, 24, 5, 24, 9, -34, -60, 27, 72, 72, 69, 72, 4, -10, 41, 74, 55, 74, 59, 16, -10, -44, -31, -13, -21, 33, 36, 46, 55, -19, 33, 35, 52, 41, 47, 46, 51, -40, -37, -27, -18, -92, -37, -26, -18, -27, -29, -26, -40, -37, -22, 33, 36, 51, -40, -42, -40, -35, -38};
    }

    static {
        A0C();
        A0B = new DownloadAction.Deserializer[]{VJ.A03};
    }

    @VisibleForTesting
    public C1021Py(C1202Xb c1202Xb, @Nullable C0716Dt c0716Dt) {
        this.A06 = c1202Xb;
        if (c0716Dt != null) {
            this.A00 = c0716Dt;
            c0716Dt.A0Q(this.A07);
        }
        A01().A0P();
    }

    private synchronized C0716Dt A01() {
        if (this.A00 == null) {
            this.A00 = new C0716Dt(new C0721Dy(A03(), A02()), 10, 5, new File(A06(), A07(52, 12, 89)), A0B);
            this.A00.A0Q(this.A07);
        }
        return this.A00;
    }

    private InterfaceC1130Ue A02() {
        return new C2N(A07(78, 3, 89), null);
    }

    private final synchronized InterfaceC0794Gx A03() {
        if (this.A01 == null) {
            this.A01 = new UQ(new File(A06(), A07(64, 14, 16)), new C0644Ai(IK.A0O(this.A06)));
        }
        return this.A01;
    }

    public static UT A04(C1136Uk c1136Uk, InterfaceC0794Gx interfaceC0794Gx) {
        return new UT(interfaceC0794Gx, c1136Uk, new C1132Ug(), null, 2, null);
    }

    public static synchronized C1021Py A05(C1202Xb c1202Xb) {
        C1021Py c1021Py;
        synchronized (C1021Py.class) {
            if (A09 == null) {
                A09 = new C1021Py(c1202Xb, null);
            }
            c1021Py = A09;
        }
        return c1021Py;
    }

    private File A06() {
        if (this.A02 == null) {
            this.A02 = this.A06.getCacheDir();
        }
        return this.A02;
    }

    @Nullable
    public static String A08(C1202Xb c1202Xb, Uri uri) {
        try {
            if (!IK.A1N(c1202Xb)) {
                return null;
            }
            return new URI(uri.getScheme(), uri.getAuthority(), uri.getPath(), null, uri.getFragment()).toString();
        } catch (URISyntaxException e2) {
            c1202Xb.A07().A9C(A07(81, 5, 14), C05787s.A0u, new C05797t(e2));
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09() {
        C0715Ds[] A0S;
        for (C0715Ds c0715Ds : A01().A0S()) {
            int taskId = c0715Ds.A02;
            C1019Pw c1019Pw = this.A05.get(taskId);
            if (c1019Pw != null) {
                int i = c0715Ds.A01;
                if (i == 2 || c0715Ds.A03 > c1019Pw.A00) {
                    String str = A07(15, 19, 61) + i + A07(0, 8, 18) + c0715Ds.A03;
                    c1019Pw.A01.AAl(c1019Pw.A02);
                    this.A05.remove(taskId);
                } else if (i == 4 || i == 3) {
                    String str2 = A07(34, 14, 111) + i;
                    c1019Pw.A01.AAx(c0715Ds.A05);
                    this.A05.remove(taskId);
                }
            }
            String str3 = A07(48, 4, 25) + taskId + A07(8, 7, 52) + c0715Ds.A03;
        }
    }

    private void A0A() {
        if (!this.A03) {
            this.A03 = true;
            this.A04.post(this.A08);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B() {
        this.A04.removeCallbacks(this.A08);
        this.A03 = false;
    }

    public final GW A0F(Context context) {
        return A04(new C1136Uk(context, (InterfaceC0790Gt<? super GX>) null, A02()), A03());
    }

    public final void A0G(Uri uri, InterfaceC1020Px interfaceC1020Px, long j) {
        String A08 = A08(this.A06, uri);
        if (A08 == null) {
            A08 = uri.toString();
        }
        boolean A0H = A0H(A08);
        this.A05.put(A01().A0O(new VJ(uri, false, null, A08)), new C1019Pw(interfaceC1020Px, j, A0H, null));
        A0A();
    }

    public final boolean A0H(String str) {
        return A03().A5z(str, 0L, 1L) > 0;
    }
}
