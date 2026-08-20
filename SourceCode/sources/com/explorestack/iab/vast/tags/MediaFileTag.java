package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import io.bidmachine.utils.IabUtils;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class MediaFileTag extends VastXmlTag {

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f9626c = {"delivery", SessionDescription.ATTR_TYPE, IabUtils.KEY_WIDTH, IabUtils.KEY_HEIGHT, "codec", "id", "bitrate", "minBitrate", "maxBitrate", "scalable", "maintainAspectRatio", "apiFramework"};

    public MediaFileTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    public String getApiFramework() {
        return a("apiFramework");
    }

    public int getHeight() {
        return b(IabUtils.KEY_HEIGHT);
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return f9626c;
    }

    public String getType() {
        return a(SessionDescription.ATTR_TYPE);
    }

    public int getWidth() {
        return b(IabUtils.KEY_WIDTH);
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public boolean isTextSupported() {
        return true;
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public boolean isValidTag() {
        return (TextUtils.isEmpty(a(SessionDescription.ATTR_TYPE)) || TextUtils.isEmpty(a(IabUtils.KEY_WIDTH)) || TextUtils.isEmpty(a(IabUtils.KEY_HEIGHT)) || TextUtils.isEmpty(getText())) ? false : true;
    }
}
