package com.explorestack.iab.vast.tags;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class ExtensionTag extends VastXmlTag {

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f9618c = {SessionDescription.ATTR_TYPE};

    public ExtensionTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return f9618c;
    }
}
