package com.explorestack.iab.vast.tags;

import com.explorestack.iab.vast.VastLog;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class CompanionAdsCreativeTag extends CreativeContentTag {

    /* renamed from: c  reason: collision with root package name */
    public final List<CompanionTag> f9609c;

    public CompanionAdsCreativeTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        this.f9609c = new ArrayList();
        xmlPullParser.require(2, null, "CompanionAds");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (VastXmlTag.a(xmlPullParser.getName(), "Companion")) {
                    CompanionTag companionTag = new CompanionTag(xmlPullParser);
                    if (companionTag.isValidTag()) {
                        this.f9609c.add(companionTag);
                    } else {
                        VastLog.d("VastXmlTag", "Creative Companion: is not valid. Skipping it.");
                    }
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "CompanionAds");
    }

    public List<CompanionTag> getCompanionTagList() {
        return this.f9609c;
    }
}
