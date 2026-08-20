package com.explorestack.iab.vast.tags;

import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class AdVerificationsExtensionTag extends ExtensionTag {

    /* renamed from: d  reason: collision with root package name */
    public final List<VerificationTag> f9603d;

    public AdVerificationsExtensionTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        this.f9603d = new ArrayList();
        xmlPullParser.require(2, null, "AdVerifications");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (VastXmlTag.a(xmlPullParser.getName(), "Verification")) {
                    this.f9603d.add(new VerificationTag(xmlPullParser));
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "AdVerifications");
    }

    public List<VerificationTag> getVerificationTagList() {
        return this.f9603d;
    }
}
