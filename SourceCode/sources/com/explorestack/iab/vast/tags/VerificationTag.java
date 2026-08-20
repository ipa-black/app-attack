package com.explorestack.iab.vast.tags;

import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class VerificationTag extends VastXmlTag {

    /* renamed from: e  reason: collision with root package name */
    public static final String[] f9640e = {"vendor"};

    /* renamed from: c  reason: collision with root package name */
    public JavaScriptResourceTag f9641c;

    /* renamed from: d  reason: collision with root package name */
    public String f9642d;

    public VerificationTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Verification");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.a(name, "JavaScriptResource")) {
                    this.f9641c = new JavaScriptResourceTag(xmlPullParser);
                } else if (VastXmlTag.a(name, "VerificationParameters")) {
                    this.f9642d = VastXmlTag.c(xmlPullParser);
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Verification");
    }

    public JavaScriptResourceTag getJavaScriptResourceTag() {
        return this.f9641c;
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return f9640e;
    }

    public String getVendor() {
        return a("vendor");
    }

    public String getVerificationParameters() {
        return this.f9642d;
    }
}
