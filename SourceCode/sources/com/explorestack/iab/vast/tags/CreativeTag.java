package com.explorestack.iab.vast.tags;

import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class CreativeTag extends VastXmlTag {

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f9616d = {"id", "adID"};

    /* renamed from: c  reason: collision with root package name */
    public CreativeContentTag f9617c;

    public CreativeTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        CreativeContentTag linearCreativeTag;
        xmlPullParser.require(2, null, "Creative");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.a(name, "Linear")) {
                    linearCreativeTag = new LinearCreativeTag(xmlPullParser);
                } else if (VastXmlTag.a(name, "CompanionAds")) {
                    linearCreativeTag = new CompanionAdsCreativeTag(xmlPullParser);
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
                this.f9617c = linearCreativeTag;
            }
        }
        xmlPullParser.require(3, null, "Creative");
    }

    public CreativeContentTag getCreativeContentTag() {
        return this.f9617c;
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return f9616d;
    }
}
