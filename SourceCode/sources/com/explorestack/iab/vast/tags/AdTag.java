package com.explorestack.iab.vast.tags;

import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class AdTag extends VastXmlTag {

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f9601d = {"id"};

    /* renamed from: c  reason: collision with root package name */
    public AdContentTag f9602c;

    public AdTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        AdContentTag inLineAdTag;
        xmlPullParser.require(2, null, "Ad");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.a(name, "InLine")) {
                    inLineAdTag = new InLineAdTag(xmlPullParser);
                } else if (VastXmlTag.a(name, "Wrapper")) {
                    inLineAdTag = new WrapperAdTag(xmlPullParser);
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
                this.f9602c = inLineAdTag;
            }
        }
        xmlPullParser.require(3, null, "Ad");
    }

    public AdContentTag getAdContentTag() {
        return this.f9602c;
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return f9601d;
    }
}
