package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import com.explorestack.iab.utils.IabElementStyle;
import com.explorestack.iab.vast.VastLog;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class PostBannerTag extends VastXmlTag {
    public static final /* synthetic */ boolean o = true;

    /* renamed from: g  reason: collision with root package name */
    public String f9631g;

    /* renamed from: c  reason: collision with root package name */
    public final IabElementStyle f9627c = new IabElementStyle();

    /* renamed from: d  reason: collision with root package name */
    public final IabElementStyle f9628d = new IabElementStyle();

    /* renamed from: e  reason: collision with root package name */
    public final IabElementStyle f9629e = new IabElementStyle();

    /* renamed from: f  reason: collision with root package name */
    public final IabElementStyle f9630f = new IabElementStyle();

    /* renamed from: h  reason: collision with root package name */
    public float f9632h = 0.0f;
    public float i = 0.0f;
    public boolean j = true;
    public boolean k = false;
    public boolean l = false;
    public boolean m = false;
    public boolean n = false;

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public void a(XmlPullParser xmlPullParser) {
        IabElementStyle iabElementStyle;
        xmlPullParser.require(2, null, "Postbanner");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                try {
                    String name = xmlPullParser.getName();
                    if (VastXmlTag.a(name, "CloseTime")) {
                        String c2 = VastXmlTag.c(xmlPullParser);
                        if (TextUtils.isEmpty(c2)) {
                            continue;
                        } else {
                            if (!o && c2 == null) {
                                throw new AssertionError();
                            }
                            this.f9632h = Float.parseFloat(c2);
                        }
                    } else if (VastXmlTag.a(name, "Duration")) {
                        String c3 = VastXmlTag.c(xmlPullParser);
                        if (TextUtils.isEmpty(c3)) {
                            continue;
                        } else {
                            if (!o && c3 == null) {
                                throw new AssertionError();
                            }
                            this.i = Float.parseFloat(c3);
                        }
                    } else {
                        if (VastXmlTag.a(name, "ClosableView")) {
                            iabElementStyle = this.f9627c;
                        } else if (VastXmlTag.a(name, "Countdown")) {
                            iabElementStyle = this.f9628d;
                        } else if (VastXmlTag.a(name, "LoadingView")) {
                            iabElementStyle = this.f9629e;
                        } else if (VastXmlTag.a(name, "Progress")) {
                            iabElementStyle = this.f9630f;
                        } else if (VastXmlTag.a(name, "UseNativeClose")) {
                            this.l = VastXmlTag.b(xmlPullParser);
                        } else if (VastXmlTag.a(name, "IgnoresSafeAreaLayoutGuide")) {
                            this.k = VastXmlTag.b(xmlPullParser);
                        } else if (VastXmlTag.a(name, "ProductLink")) {
                            this.f9631g = VastXmlTag.c(xmlPullParser);
                        } else if (VastXmlTag.a(name, "R1")) {
                            this.m = VastXmlTag.b(xmlPullParser);
                        } else if (VastXmlTag.a(name, "R2")) {
                            this.n = VastXmlTag.b(xmlPullParser);
                        } else {
                            VastXmlTag.d(xmlPullParser);
                        }
                        VastXmlTag.a(xmlPullParser, iabElementStyle);
                    }
                } catch (Throwable th) {
                    VastLog.a("VastXmlTag", th);
                }
            }
        }
        xmlPullParser.require(3, null, "Postbanner");
    }

    public IabElementStyle getCloseStyle() {
        return this.f9627c;
    }

    public float getCloseTimeSec() {
        return this.f9632h;
    }

    public IabElementStyle getCountDownStyle() {
        return this.f9628d;
    }

    public float getDurationSec() {
        return this.i;
    }

    public IabElementStyle getLoadingStyle() {
        return this.f9629e;
    }

    public String getProductLink() {
        return this.f9631g;
    }

    public IabElementStyle getProgressStyle() {
        return this.f9630f;
    }

    public boolean isForceUseNativeClose() {
        return this.l;
    }

    public boolean isIgnoreSafeArea() {
        return this.k;
    }

    public boolean isR1() {
        return this.m;
    }

    public boolean isR2() {
        return this.n;
    }

    public boolean isVisible() {
        return this.j;
    }

    public void setCloseTimeSec(int i) {
        this.f9632h = i;
    }

    public void setVisible(boolean z) {
        this.j = z;
    }
}
