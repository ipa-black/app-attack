package com.explorestack.iab.vast.tags;

import com.appodeal.ads.modules.common.internal.LogConstants;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class WrapperAdTag extends AdContentTag {
    public static final String[] i = {"followAdditionalWrappers", "allowMultipleAds", "fallbackOnNoAd"};

    /* renamed from: h  reason: collision with root package name */
    public String f9646h;

    public WrapperAdTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Wrapper");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.a(name, "Creatives")) {
                    a(e(xmlPullParser));
                } else if (VastXmlTag.a(name, "Extensions")) {
                    b(g(xmlPullParser));
                } else if (VastXmlTag.a(name, "Impression")) {
                    m(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, LogConstants.EVENT_ERROR)) {
                    l(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "AdSystem")) {
                    a(new AdSystemTag(xmlPullParser));
                } else if (VastXmlTag.a(name, "VASTAdTagURI")) {
                    n(VastXmlTag.c(xmlPullParser));
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Wrapper");
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return i;
    }

    public String getVastAdTagUri() {
        return this.f9646h;
    }

    public final void n(String str) {
        this.f9646h = str;
    }
}
