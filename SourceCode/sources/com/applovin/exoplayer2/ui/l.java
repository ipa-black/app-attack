package com.applovin.exoplayer2.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.ui.SubtitleView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
final class l extends FrameLayout implements SubtitleView.a {

    /* renamed from: a  reason: collision with root package name */
    private final b f4169a;

    /* renamed from: b  reason: collision with root package name */
    private final WebView f4170b;

    /* renamed from: c  reason: collision with root package name */
    private List<com.applovin.exoplayer2.i.a> f4171c;

    /* renamed from: d  reason: collision with root package name */
    private c f4172d;

    /* renamed from: e  reason: collision with root package name */
    private float f4173e;

    /* renamed from: f  reason: collision with root package name */
    private int f4174f;

    /* renamed from: g  reason: collision with root package name */
    private float f4175g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applovin.exoplayer2.ui.l$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4177a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f4177a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4177a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4177a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public l(Context context) {
        this(context, null);
    }

    public l(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4171c = Collections.emptyList();
        this.f4172d = c.f4115a;
        this.f4173e = 0.0533f;
        this.f4174f = 0;
        this.f4175g = 0.08f;
        b bVar = new b(context, attributeSet);
        this.f4169a = bVar;
        WebView webView = new WebView(context, attributeSet) { // from class: com.applovin.exoplayer2.ui.l.1
            @Override // android.webkit.WebView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                super.onTouchEvent(motionEvent);
                return false;
            }

            @Override // android.view.View
            public boolean performClick() {
                super.performClick();
                return false;
            }
        };
        this.f4170b = webView;
        webView.setBackgroundColor(0);
        addView(bVar);
        addView(webView);
    }

    private static String a(int i) {
        return i != 1 ? i != 2 ? "horizontal-tb" : "vertical-lr" : "vertical-rl";
    }

    private String a(int i, float f2) {
        float a2 = j.a(i, f2, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return a2 == -3.4028235E38f ? "unset" : ai.a("%.2fpx", Float.valueOf(a2 / getContext().getResources().getDisplayMetrics().density));
    }

    private static String a(Layout.Alignment alignment) {
        if (alignment == null) {
            return TtmlNode.CENTER;
        }
        int i = AnonymousClass2.f4177a[alignment.ordinal()];
        return i != 1 ? i != 2 ? TtmlNode.CENTER : TtmlNode.END : TtmlNode.START;
    }

    private static String a(com.applovin.exoplayer2.i.a aVar) {
        if (aVar.r != 0.0f) {
            return ai.a("%s(%.2fdeg)", (aVar.q == 2 || aVar.q == 1) ? "skewY" : "skewX", Float.valueOf(aVar.r));
        }
        return "";
    }

    private static String a(c cVar) {
        int i = cVar.f4119e;
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "unset" : ai.a("-0.05em -0.05em 0.15em %s", e.a(cVar.f4120f)) : ai.a("0.06em 0.08em 0.15em %s", e.a(cVar.f4120f)) : ai.a("0.1em 0.12em 0.15em %s", e.a(cVar.f4120f)) : ai.a("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", e.a(cVar.f4120f));
    }

    private static int b(int i) {
        if (i != 1) {
            return i != 2 ? 0 : -100;
        }
        return -50;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0145, code lost:
        if (r5 != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0148, code lost:
        if (r5 != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x014a, code lost:
        r11 = com.google.android.exoplayer2.text.ttml.TtmlNode.LEFT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x014b, code lost:
        r20 = r11;
        r18 = org.apache.ldap.server.jndi.JavaLdapSupport.TOP_ATTR;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0201  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b() {
        /*
            Method dump skipped, instructions count: 622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.ui.l.b():void");
    }

    public void a() {
        this.f4170b.destroy();
    }

    @Override // com.applovin.exoplayer2.ui.SubtitleView.a
    public void a(List<com.applovin.exoplayer2.i.a> list, c cVar, float f2, int i, float f3) {
        this.f4172d = cVar;
        this.f4173e = f2;
        this.f4174f = i;
        this.f4175g = f3;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            com.applovin.exoplayer2.i.a aVar = list.get(i2);
            if (aVar.f3167e != null) {
                arrayList.add(aVar);
            } else {
                arrayList2.add(aVar);
            }
        }
        if (!this.f4171c.isEmpty() || !arrayList2.isEmpty()) {
            this.f4171c = arrayList2;
            b();
        }
        this.f4169a.a(arrayList, cVar, f2, i, f3);
        invalidate();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!z || this.f4171c.isEmpty()) {
            return;
        }
        b();
    }
}
