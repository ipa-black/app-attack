package com.explorestack.iab.vast.tags;

import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class VideoClicksTag extends VastXmlTag {

    /* renamed from: c  reason: collision with root package name */
    public String f9643c;

    /* renamed from: d  reason: collision with root package name */
    public List<String> f9644d;

    /* renamed from: e  reason: collision with root package name */
    public List<String> f9645e;

    public VideoClicksTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "VideoClicks");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.a(name, "ClickThrough")) {
                    n(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "ClickTracking")) {
                    l(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "CustomClick")) {
                    m(VastXmlTag.c(xmlPullParser));
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "VideoClicks");
    }

    public String getClickThroughUrl() {
        return this.f9643c;
    }

    public List<String> getClickTrackingUrlList() {
        return this.f9644d;
    }

    public final void l(String str) {
        if (this.f9644d == null) {
            this.f9644d = new ArrayList();
        }
        this.f9644d.add(str);
    }

    public final void m(String str) {
        if (this.f9645e == null) {
            this.f9645e = new ArrayList();
        }
        this.f9645e.add(str);
    }

    public final void n(String str) {
        this.f9643c = str;
    }
}
