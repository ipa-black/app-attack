package com.explorestack.iab.vast.tags;

import android.text.TextUtils;
import com.explorestack.iab.mraid.g;
import com.explorestack.iab.vast.TrackingEvent;
import io.bidmachine.utils.IabUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class CompanionTag extends VastXmlTag {
    public static final String[] j = {IabUtils.KEY_WIDTH, IabUtils.KEY_HEIGHT, "id", "assetWidth", "assetHeight", "expandedWidth", "expandedHeight", "apiFramework", "adSlotID", "required"};

    /* renamed from: c  reason: collision with root package name */
    public StaticResourceTag f9610c;

    /* renamed from: d  reason: collision with root package name */
    public String f9611d;

    /* renamed from: e  reason: collision with root package name */
    public String f9612e;

    /* renamed from: f  reason: collision with root package name */
    public String f9613f;

    /* renamed from: g  reason: collision with root package name */
    public List<String> f9614g;

    /* renamed from: h  reason: collision with root package name */
    public Map<TrackingEvent, List<String>> f9615h;
    public String i;

    public CompanionTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        xmlPullParser.require(2, null, "Companion");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.a(name, "StaticResource")) {
                    StaticResourceTag staticResourceTag = new StaticResourceTag(xmlPullParser);
                    if (staticResourceTag.isValidTag()) {
                        a(staticResourceTag);
                    }
                } else if (VastXmlTag.a(name, "IFrameResource")) {
                    n(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "HTMLResource")) {
                    setHtmlResource(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "CompanionClickThrough")) {
                    m(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "CompanionClickTracking")) {
                    l(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "TrackingEvents")) {
                    a(new TrackingEventsTag(xmlPullParser).b());
                } else if (VastXmlTag.a(name, "AdParameters")) {
                    setAdParameters(VastXmlTag.c(xmlPullParser));
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Companion");
    }

    public final void a(StaticResourceTag staticResourceTag) {
        this.f9610c = staticResourceTag;
    }

    public final void a(Map<TrackingEvent, List<String>> map) {
        this.f9615h = map;
    }

    public String getAdParameters() {
        return this.i;
    }

    public String getCompanionClickThrough() {
        return this.f9613f;
    }

    public List<String> getCompanionClickTrackingList() {
        return this.f9614g;
    }

    public int getHeight() {
        return b(IabUtils.KEY_HEIGHT);
    }

    public String getHtml() {
        String htmlForMraid = getHtmlForMraid();
        if (htmlForMraid != null) {
            return g.d(htmlForMraid);
        }
        return null;
    }

    public String getHtmlForMraid() {
        String str = this.f9612e;
        if (str != null) {
            return str;
        }
        StaticResourceTag staticResourceTag = this.f9610c;
        if (staticResourceTag != null) {
            return String.format("<script type='text/javascript'>document.write('<a style=\"display: flex; width: 100%%; height: 100%%; justify-content: center; align-items: center\" href=\"%s\" target=\"_blank\"><img style=\"border-style: none; height: 100%%; width: 100%%; object-fit: contain;\" src=\"%s\"/></a>');</script>", this.f9613f, staticResourceTag.getText());
        }
        if (this.f9611d != null) {
            return String.format("<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"%s\" height=\"%s\" src=\"%s\"></iframe>", Integer.valueOf(getWidth()), Integer.valueOf(getHeight()), this.f9611d);
        }
        return null;
    }

    public String getHtmlResource() {
        return this.f9612e;
    }

    public String getIFrameResource() {
        return this.f9611d;
    }

    public StaticResourceTag getStaticResourceTag() {
        return this.f9610c;
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return j;
    }

    public Map<TrackingEvent, List<String>> getTrackingEventListMap() {
        return this.f9615h;
    }

    public int getWidth() {
        return b(IabUtils.KEY_WIDTH);
    }

    public boolean hasCreative() {
        return (this.f9612e == null && this.f9610c == null && this.f9611d == null) ? false : true;
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public boolean isValidTag() {
        return (TextUtils.isEmpty(a(IabUtils.KEY_WIDTH)) || TextUtils.isEmpty(a(IabUtils.KEY_HEIGHT))) ? false : true;
    }

    public final void l(String str) {
        if (this.f9614g == null) {
            this.f9614g = new ArrayList();
        }
        this.f9614g.add(str);
    }

    public final void m(String str) {
        this.f9613f = str;
    }

    public final void n(String str) {
        this.f9611d = str;
    }

    public void setAdParameters(String str) {
        this.i = str;
    }

    public void setHtmlResource(String str) {
        this.f9612e = str;
    }
}
