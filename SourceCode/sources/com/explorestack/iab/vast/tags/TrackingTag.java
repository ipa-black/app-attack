package com.explorestack.iab.vast.tags;

import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class TrackingTag extends VastXmlTag {

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f9635c = {"event"};

    public TrackingTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return f9635c;
    }
}
