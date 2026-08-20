package com.explorestack.iab.vast.tags;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class AdContentTag extends VastXmlTag {

    /* renamed from: c  reason: collision with root package name */
    public AdSystemTag f9595c;

    /* renamed from: d  reason: collision with root package name */
    public List<CreativeTag> f9596d;

    /* renamed from: e  reason: collision with root package name */
    public List<ExtensionTag> f9597e;

    /* renamed from: f  reason: collision with root package name */
    public List<String> f9598f;

    /* renamed from: g  reason: collision with root package name */
    public List<String> f9599g;

    public AdContentTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    public void a(AdSystemTag adSystemTag) {
        this.f9595c = adSystemTag;
    }

    public void a(List<CreativeTag> list) {
        this.f9596d = list;
    }

    public void b(List<ExtensionTag> list) {
        this.f9597e = list;
    }

    public List<CreativeTag> e(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "Creatives");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (VastXmlTag.a(xmlPullParser.getName(), "Creative")) {
                    arrayList.add(new CreativeTag(xmlPullParser));
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Creatives");
        return arrayList;
    }

    public final ExtensionTag f(XmlPullParser xmlPullParser) {
        ExtensionTag extensionTag;
        xmlPullParser.require(2, null, "Extension");
        String a2 = new ExtensionTag(xmlPullParser).a(SessionDescription.ATTR_TYPE);
        if (VastXmlTag.a(a2, "appodeal")) {
            extensionTag = new AppodealExtensionTag(xmlPullParser);
        } else if (VastXmlTag.a(a2, "AdVerifications")) {
            ExtensionTag extensionTag2 = null;
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    if (VastXmlTag.a(xmlPullParser.getName(), "AdVerifications")) {
                        extensionTag2 = new AdVerificationsExtensionTag(xmlPullParser);
                    } else {
                        VastXmlTag.d(xmlPullParser);
                    }
                }
            }
            extensionTag = extensionTag2;
        } else {
            VastXmlTag.d(xmlPullParser);
            extensionTag = null;
        }
        xmlPullParser.require(3, null, "Extension");
        return extensionTag;
    }

    public List<ExtensionTag> g(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "Extensions");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (VastXmlTag.a(xmlPullParser.getName(), "Extension")) {
                    ExtensionTag f2 = f(xmlPullParser);
                    if (f2 != null) {
                        arrayList.add(f2);
                    }
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Extensions");
        return arrayList;
    }

    public List<CreativeTag> getCreativeTagList() {
        return this.f9596d;
    }

    public List<String> getErrorUrlList() {
        return this.f9599g;
    }

    public List<ExtensionTag> getExtensionTagList() {
        return this.f9597e;
    }

    public List<String> getImpressionUrlList() {
        return this.f9598f;
    }

    public void l(String str) {
        if (this.f9599g == null) {
            this.f9599g = new ArrayList();
        }
        this.f9599g.add(str);
    }

    public void m(String str) {
        if (this.f9598f == null) {
            this.f9598f = new ArrayList();
        }
        this.f9598f.add(str);
    }
}
