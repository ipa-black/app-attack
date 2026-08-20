package com.explorestack.iab.vast.tags;

import com.explorestack.iab.utils.IabElementStyle;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class AppodealExtensionTag extends ExtensionTag implements com.explorestack.iab.vast.a {

    /* renamed from: d  reason: collision with root package name */
    public final IabElementStyle f9604d;

    /* renamed from: e  reason: collision with root package name */
    public final IabElementStyle f9605e;

    /* renamed from: f  reason: collision with root package name */
    public final IabElementStyle f9606f;

    /* renamed from: g  reason: collision with root package name */
    public final IabElementStyle f9607g;

    /* renamed from: h  reason: collision with root package name */
    public final IabElementStyle f9608h;
    public final IabElementStyle i;
    public final IabElementStyle j;
    public final IabElementStyle k;
    public final PostBannerTag l;
    public Integer m;
    public Integer n;
    public CompanionTag o;
    public Boolean p;
    public Float q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public Integer v;

    public AppodealExtensionTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        IabElementStyle iabElementStyle;
        IabElementStyle iabElementStyle2;
        IabElementStyle iabElementStyle3;
        IabElementStyle iabElementStyle4;
        this.f9604d = new IabElementStyle();
        this.f9605e = new IabElementStyle();
        this.f9606f = new IabElementStyle();
        this.f9607g = new IabElementStyle();
        this.f9608h = new IabElementStyle();
        this.i = new IabElementStyle();
        this.j = new IabElementStyle();
        this.k = new IabElementStyle();
        this.l = new PostBannerTag();
        this.r = false;
        this.s = false;
        this.t = false;
        this.u = false;
        xmlPullParser.require(2, null, "Extension");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.a(name, "Video")) {
                    iabElementStyle = this.f9604d;
                } else if (VastXmlTag.a(name, "LoadingView")) {
                    iabElementStyle = this.j;
                } else if (VastXmlTag.a(name, "Countdown")) {
                    iabElementStyle = this.k;
                } else if (VastXmlTag.a(name, "Progress")) {
                    iabElementStyle = this.f9608h;
                } else if (VastXmlTag.a(name, "ClosableView")) {
                    iabElementStyle = this.f9607g;
                } else if (VastXmlTag.a(name, "Mute")) {
                    iabElementStyle = this.f9606f;
                } else if (VastXmlTag.a(name, "CTA")) {
                    iabElementStyle = this.f9605e;
                } else if (VastXmlTag.a(name, "RepeatView")) {
                    iabElementStyle = this.i;
                } else if (VastXmlTag.a(name, "Postbanner")) {
                    this.l.parse(xmlPullParser);
                } else if (VastXmlTag.a(name, "Autorotate")) {
                    this.p = Boolean.valueOf(VastXmlTag.b(xmlPullParser));
                } else if (VastXmlTag.a(name, "R1")) {
                    this.t = VastXmlTag.b(xmlPullParser);
                } else if (VastXmlTag.a(name, "R2")) {
                    this.u = VastXmlTag.b(xmlPullParser);
                } else if (VastXmlTag.a(name, "ForceOrientation")) {
                    this.v = VastXmlTag.g(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "CtaText")) {
                    this.f9605e.setContent(VastXmlTag.c(xmlPullParser));
                } else {
                    if (VastXmlTag.a(name, "ShowCta")) {
                        iabElementStyle2 = this.f9605e;
                    } else if (VastXmlTag.a(name, "ShowMute")) {
                        iabElementStyle2 = this.f9606f;
                    } else if (VastXmlTag.a(name, "ShowCompanion")) {
                        this.l.setVisible(VastXmlTag.b(xmlPullParser));
                    } else if (VastXmlTag.a(name, "CompanionCloseTime")) {
                        int f2 = VastXmlTag.f(VastXmlTag.c(xmlPullParser));
                        if (f2 > -1) {
                            this.l.setCloseTimeSec(f2);
                        }
                    } else if (VastXmlTag.a(name, "Muted")) {
                        this.r = VastXmlTag.b(xmlPullParser);
                    } else if (VastXmlTag.a(name, "VideoClickable")) {
                        this.s = VastXmlTag.b(xmlPullParser);
                    } else {
                        if (VastXmlTag.a(name, "CtaXPosition")) {
                            iabElementStyle3 = this.f9605e;
                        } else {
                            if (VastXmlTag.a(name, "CtaYPosition")) {
                                iabElementStyle4 = this.f9605e;
                            } else if (VastXmlTag.a(name, "CloseXPosition")) {
                                iabElementStyle3 = this.f9607g;
                            } else if (VastXmlTag.a(name, "CloseYPosition")) {
                                iabElementStyle4 = this.f9607g;
                            } else if (VastXmlTag.a(name, "MuteXPosition")) {
                                iabElementStyle3 = this.f9606f;
                            } else if (VastXmlTag.a(name, "MuteYPosition")) {
                                iabElementStyle4 = this.f9606f;
                            } else if (VastXmlTag.a(name, "AssetsColor")) {
                                Integer c2 = VastXmlTag.c(VastXmlTag.c(xmlPullParser));
                                if (c2 != null) {
                                    this.m = c2;
                                }
                            } else if (VastXmlTag.a(name, "AssetsBackgroundColor")) {
                                Integer c3 = VastXmlTag.c(VastXmlTag.c(xmlPullParser));
                                if (c3 != null) {
                                    this.n = c3;
                                }
                            } else if (VastXmlTag.a(name, "Companion")) {
                                CompanionTag companionTag = new CompanionTag(xmlPullParser);
                                if (companionTag.isValidTag() && companionTag.hasCreative()) {
                                    this.o = companionTag;
                                }
                            } else if (VastXmlTag.a(name, "CloseTime")) {
                                String c4 = VastXmlTag.c(xmlPullParser);
                                if (c4 != null) {
                                    this.q = Float.valueOf(Float.parseFloat(c4));
                                }
                            } else if (VastXmlTag.a(name, "ShowProgress")) {
                                iabElementStyle2 = this.f9608h;
                            } else {
                                VastXmlTag.d(xmlPullParser);
                            }
                            iabElementStyle4.setVerticalPosition(VastXmlTag.i(VastXmlTag.c(xmlPullParser)));
                        }
                        iabElementStyle3.setHorizontalPosition(VastXmlTag.h(VastXmlTag.c(xmlPullParser)));
                    }
                    iabElementStyle2.setVisible(Boolean.valueOf(VastXmlTag.b(xmlPullParser)));
                }
                VastXmlTag.a(xmlPullParser, iabElementStyle);
            }
        }
        xmlPullParser.require(3, null, "Extension");
    }

    @Override // com.explorestack.iab.vast.a
    public Integer getAssetsBackgroundColor() {
        return this.n;
    }

    @Override // com.explorestack.iab.vast.a
    public Integer getAssetsColor() {
        return this.m;
    }

    @Override // com.explorestack.iab.vast.a
    public IabElementStyle getCloseStyle() {
        return this.f9607g;
    }

    @Override // com.explorestack.iab.vast.a
    public Float getCloseTimeSec() {
        return this.q;
    }

    public CompanionTag getCompanionTag() {
        return this.o;
    }

    @Override // com.explorestack.iab.vast.a
    public IabElementStyle getCountDownStyle() {
        return this.k;
    }

    @Override // com.explorestack.iab.vast.a
    public IabElementStyle getCtaStyle() {
        return this.f9605e;
    }

    @Override // com.explorestack.iab.vast.a
    public Integer getForceOrientation() {
        return this.v;
    }

    @Override // com.explorestack.iab.vast.a
    public IabElementStyle getLoadingStyle() {
        return this.j;
    }

    @Override // com.explorestack.iab.vast.a
    public IabElementStyle getMuteStyle() {
        return this.f9606f;
    }

    @Override // com.explorestack.iab.vast.a
    public PostBannerTag getPostBannerTag() {
        return this.l;
    }

    @Override // com.explorestack.iab.vast.a
    public IabElementStyle getProgressStyle() {
        return this.f9608h;
    }

    @Override // com.explorestack.iab.vast.a
    public IabElementStyle getRepeatStyle() {
        return this.i;
    }

    @Override // com.explorestack.iab.vast.a
    public IabElementStyle getVideoStyle() {
        return this.f9604d;
    }

    @Override // com.explorestack.iab.vast.a
    public Boolean isAutoRotate() {
        return this.p;
    }

    public boolean isMuted() {
        return this.r;
    }

    @Override // com.explorestack.iab.vast.a
    public boolean isR1() {
        return this.t;
    }

    @Override // com.explorestack.iab.vast.a
    public boolean isR2() {
        return this.u;
    }

    @Override // com.explorestack.iab.vast.a
    public boolean isVideoClickable() {
        return this.s;
    }
}
