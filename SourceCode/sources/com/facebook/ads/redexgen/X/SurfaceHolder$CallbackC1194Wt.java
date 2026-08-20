package com.facebook.ads.redexgen.X;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.Metadata;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.facebook.ads.redexgen.X.Wt  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class SurfaceHolder$CallbackC1194Wt implements IG, AM, FU, DC, SurfaceHolder.Callback, TextureView.SurfaceTextureListener {
    public static String[] A01 = {"nMHZhEZSp5EcTMzj890UQSIKsf7nOssk", "WLzxKTE2vNTMCpqDs", "SfczCGFglH", "X5aT15p3N3rGxVL5g", "GbnJfxrb9aQYK7s9S1Y8QTSWgx7P8ZxV", "tLWa3XxeFvyx8wOT4", "wILb6N7ReXeeP8cmU", "dyBLf42uqj"};
    public final /* synthetic */ C0701De A00;

    public SurfaceHolder$CallbackC1194Wt(C0701De c0701De) {
        this.A00 = c0701De;
    }

    @Override // com.facebook.ads.redexgen.X.AM
    public final void AAG(String str, long j, long j2) {
        Iterator it = C0701De.A0D(this.A00).iterator();
        while (it.hasNext()) {
            ((AM) it.next()).AAG(str, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AM
    public final void AAH(C0651Ap c0651Ap) {
        Iterator it = C0701De.A0D(this.A00).iterator();
        while (it.hasNext()) {
            AM am = (AM) it.next();
            String[] strArr = A01;
            if (strArr[1].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A01[4] = "5uZ3F86UAJ67QZD2oUJwcWpEFJTFqeup";
            am.AAH(c0651Ap);
        }
        C0701De.A04(this.A00, null);
        C0701De.A06(this.A00, null);
        C0701De.A00(this.A00, 0);
    }

    @Override // com.facebook.ads.redexgen.X.AM
    public final void AAI(C0651Ap c0651Ap) {
        C0701De.A06(this.A00, c0651Ap);
        Iterator it = C0701De.A0D(this.A00).iterator();
        while (it.hasNext()) {
            ((AM) it.next()).AAI(c0651Ap);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AM
    public final void AAJ(Format format) {
        C0701De.A04(this.A00, format);
        Iterator it = C0701De.A0D(this.A00).iterator();
        while (it.hasNext()) {
            ((AM) it.next()).AAJ(format);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AM
    public final void AAK(int i) {
        C0701De.A00(this.A00, i);
        Iterator it = C0701De.A0D(this.A00).iterator();
        while (it.hasNext()) {
            ((AM) it.next()).AAK(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AM
    public final void AAL(int i, long j, long j2) {
        Iterator it = C0701De.A0D(this.A00).iterator();
        while (it.hasNext()) {
            ((AM) it.next()).AAL(i, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.FU
    public final void AAf(List<FQ> list) {
        C0701De.A08(this.A00, list);
        Iterator it = C0701De.A09(this.A00).iterator();
        while (it.hasNext()) {
            ((FU) it.next()).AAf(list);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IG
    public final void AAr(int i, long j) {
        Iterator it = C0701De.A0B(this.A00).iterator();
        while (it.hasNext()) {
            ((IG) it.next()).AAr(i, j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.DC
    public final void ABl(Metadata metadata) {
        Iterator it = C0701De.A0A(this.A00).iterator();
        while (it.hasNext()) {
            ((DC) it.next()).ABl(metadata);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IG
    public final void ACL(Surface surface) {
        if (C0701De.A01(this.A00) == surface) {
            Iterator it = C0701De.A0C(this.A00).iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
        Iterator it2 = C0701De.A0B(this.A00).iterator();
        while (it2.hasNext()) {
            ((IG) it2.next()).ACL(surface);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IG
    public final void ACw(String str, long j, long j2) {
        Iterator it = C0701De.A0B(this.A00).iterator();
        while (it.hasNext()) {
            ((IG) it.next()).ACw(str, j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IG
    public final void ACx(C0651Ap c0651Ap) {
        Iterator it = C0701De.A0B(this.A00).iterator();
        while (it.hasNext()) {
            ((IG) it.next()).ACx(c0651Ap);
        }
        C0701De.A03(this.A00, null);
        String[] strArr = A01;
        if (strArr[1].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        A01[0] = "zG8NefRqMKYqbgzRufdCrC4W5rqrDhRZ";
        C0701De.A05(this.A00, null);
    }

    @Override // com.facebook.ads.redexgen.X.IG
    public final void ACy(C0651Ap c0651Ap) {
        C0701De.A05(this.A00, c0651Ap);
        Iterator it = C0701De.A0B(this.A00).iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            if (A01[0].charAt(5) == '7') {
                throw new RuntimeException();
            }
            A01[4] = "B3QwduSxUwudXX0SLqqw26pCzLpqq2sU";
            if (hasNext) {
                ((IG) it.next()).ACy(c0651Ap);
            } else {
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.IG
    public final void AD3(Format format) {
        C0701De.A03(this.A00, format);
        Iterator it = C0701De.A0B(this.A00).iterator();
        while (it.hasNext()) {
            ((IG) it.next()).AD3(format);
        }
    }

    @Override // com.facebook.ads.redexgen.X.IG
    public final void AD9(int i, int i2, int i3, float f2) {
        Iterator it = C0701De.A0C(this.A00).iterator();
        while (it.hasNext()) {
            ((I7) it.next()).AD9(i, i2, i3, f2);
        }
        Iterator it2 = C0701De.A0B(this.A00).iterator();
        while (true) {
            boolean hasNext = it2.hasNext();
            String[] strArr = A01;
            if (strArr[3].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            A01[4] = "2vUTxC8fdDWhhRkArIujhTo4qLvFXYNt";
            if (hasNext) {
                ((IG) it2.next()).AD9(i, i2, i3, f2);
            } else {
                return;
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        C0701De.A0H(this.A00, new Surface(surfaceTexture), true);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        C0701De.A0H(this.A00, null, true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        C0701De.A0H(this.A00, surfaceHolder.getSurface(), false);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        C0701De.A0H(this.A00, null, false);
    }
}
