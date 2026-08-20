package com.explorestack.iab.vast.tags;

import com.unity3d.ads.metadata.MediationMetaData;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class VastTag extends VastXmlTag {

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f9636d = {MediationMetaData.KEY_VERSION};

    /* renamed from: c  reason: collision with root package name */
    public final List<AdTag> f9637c;

    public VastTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        this.f9637c = new ArrayList();
        xmlPullParser.require(2, null, "VAST");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (VastXmlTag.a(xmlPullParser.getName(), "Ad")) {
                    this.f9637c.add(new AdTag(xmlPullParser));
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "VAST");
    }

    public List<AdTag> getAdTagList() {
        return this.f9637c;
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return f9636d;
    }

    public boolean hasAd() {
        List<AdTag> list = this.f9637c;
        return list != null && list.size() > 0;
    }
}
