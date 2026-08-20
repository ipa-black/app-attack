package com.adcolony.sdk;

import android.content.Context;
import com.adcolony.sdk.e0;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.regex.Matcher;
import kotlin.io.CloseableKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
/* loaded from: classes.dex */
public final class e extends j {
    private String G;
    private String H;

    /* loaded from: classes.dex */
    static final class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            e.super.c();
        }
    }

    public e(Context context, int i, h0 h0Var) {
        super(context, i, h0Var);
        this.G = "";
        this.H = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.adcolony.sdk.c1
    /* renamed from: c */
    public final void b(Exception exc) {
        new e0.a().a(exc.getClass().toString()).a(" during metadata injection w/ metadata = ").a(c0.h(getInfo(), TtmlNode.TAG_METADATA)).a(e0.i);
        AdColonyInterstitial remove = com.adcolony.sdk.a.b().c().f().remove(c0.h(getInfo(), "ad_session_id"));
        if (remove == null) {
            return;
        }
        remove.p();
    }

    private final String p() {
        String str;
        if (this.H.length() > 0) {
            return new Regex("script\\s*src\\s*=\\s*\"mraid.js\"").replaceFirst(this.H, "script src=\"file://" + getMraidFilepath() + Typography.quote);
        }
        FileInputStream fileInputStream = new FileInputStream(this.G);
        try {
            StringBuilder sb = new StringBuilder(fileInputStream.available());
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr, 0, 1024);
                if (read < 0) {
                    break;
                }
                sb.append(new String(bArr, 0, read, Charsets.UTF_8));
            }
            if (StringsKt.contains$default((CharSequence) this.G, (CharSequence) ".html", false, 2, (Object) null)) {
                str = sb.toString();
            } else {
                str = "<html><script>" + ((Object) sb) + "</script></html>";
            }
            CloseableKt.closeFinally(fileInputStream, null);
            return str;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(fileInputStream, th);
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.adcolony.sdk.c1
    public /* synthetic */ String d(f1 f1Var) {
        if (this.H.length() > 0) {
            return "";
        }
        return super.d(f1Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.adcolony.sdk.j, com.adcolony.sdk.c1, com.adcolony.sdk.b1
    public /* synthetic */ void i() {
        h0 message = getMessage();
        f1 a2 = message == null ? null : message.a();
        if (a2 == null) {
            a2 = c0.b();
        }
        this.G = c(a2);
        this.H = c0.h(a2, "interstitial_html");
        super.i();
    }

    @Override // com.adcolony.sdk.b1
    protected /* synthetic */ void j() {
        try {
            h0 message = getMessage();
            f1 a2 = message == null ? null : message.a();
            if (a2 == null) {
                a2 = c0.b();
            }
            String h2 = c0.h(c0.f(a2, "info"), TtmlNode.TAG_METADATA);
            String replaceFirst = new Regex("var\\s*ADC_DEVICE_INFO\\s*=\\s*null\\s*;").replaceFirst(a(p(), c0.h(c0.b(h2), "iab_filepath")), Matcher.quoteReplacement("var ADC_DEVICE_INFO = " + ((Object) h2) + ';'));
            String mUrl = getMUrl();
            if (mUrl.length() == 0) {
                mUrl = getBaseUrl();
            }
            loadDataWithBaseURL(mUrl, replaceFirst, "text/html", null, null);
        } catch (IOException e2) {
            b(e2);
        } catch (IllegalArgumentException e3) {
            b(e3);
        } catch (IndexOutOfBoundsException e4) {
            b(e4);
        }
    }

    @Override // com.adcolony.sdk.b1
    protected /* synthetic */ void k() {
    }

    @Override // com.adcolony.sdk.c1, com.adcolony.sdk.k0
    public void c() {
        if (getDestroyed()) {
            return;
        }
        z0.a(new a(), n() ? 1000L : 0L);
    }
}
