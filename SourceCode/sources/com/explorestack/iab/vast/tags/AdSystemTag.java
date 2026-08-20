package com.explorestack.iab.vast.tags;

import com.unity3d.ads.metadata.MediationMetaData;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class AdSystemTag extends VastXmlTag {

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f9600c = {MediationMetaData.KEY_VERSION};

    public AdSystemTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return f9600c;
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public boolean isTextSupported() {
        return true;
    }
}
