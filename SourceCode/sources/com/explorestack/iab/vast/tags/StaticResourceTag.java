package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class StaticResourceTag extends VastXmlTag {

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f9633c = {"creativeType"};

    public StaticResourceTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return f9633c;
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public boolean isTextSupported() {
        return true;
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public boolean isValidTag() {
        String a2 = a("creativeType");
        if (TextUtils.isEmpty(a2)) {
            return false;
        }
        return a2.matches("image/.*(?i)(gif|jpeg|jpg|bmp|png)");
    }
}
