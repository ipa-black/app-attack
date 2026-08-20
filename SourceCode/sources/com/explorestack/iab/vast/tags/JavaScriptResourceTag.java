package com.explorestack.iab.vast.tags;

import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class JavaScriptResourceTag extends VastXmlTag {

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f9619c = {"apiFramework"};

    public JavaScriptResourceTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return f9619c;
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public boolean isTextSupported() {
        return true;
    }
}
