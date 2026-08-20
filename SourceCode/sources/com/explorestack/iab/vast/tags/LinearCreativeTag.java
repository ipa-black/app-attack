package com.explorestack.iab.vast.tags;

import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastLog;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public class LinearCreativeTag extends CreativeContentTag {
    public static final String[] i = {"skipoffset"};

    /* renamed from: c  reason: collision with root package name */
    public String f9620c;

    /* renamed from: d  reason: collision with root package name */
    public List<MediaFileTag> f9621d;

    /* renamed from: e  reason: collision with root package name */
    public VideoClicksTag f9622e;

    /* renamed from: f  reason: collision with root package name */
    public String f9623f;

    /* renamed from: g  reason: collision with root package name */
    public EnumMap<TrackingEvent, List<String>> f9624g;

    /* renamed from: h  reason: collision with root package name */
    public int f9625h;

    public LinearCreativeTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        this.f9625h = -1;
        xmlPullParser.require(2, null, "Linear");
        int e2 = VastXmlTag.e(a("skipoffset"));
        if (e2 > -1) {
            a(e2);
        }
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.a(name, "Duration")) {
                    setDuration(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "MediaFiles")) {
                    a(e(xmlPullParser));
                } else if (VastXmlTag.a(name, "VideoClicks")) {
                    a(new VideoClicksTag(xmlPullParser));
                } else if (VastXmlTag.a(name, "AdParameters")) {
                    setAdParameters(VastXmlTag.c(xmlPullParser));
                } else if (VastXmlTag.a(name, "TrackingEvents")) {
                    a(new TrackingEventsTag(xmlPullParser).b());
                } else {
                    VastXmlTag.d(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Linear");
    }

    public static List<MediaFileTag> e(XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "MediaFiles");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (VastXmlTag.a(xmlPullParser.getName(), "MediaFile")) {
                    MediaFileTag mediaFileTag = new MediaFileTag(xmlPullParser);
                    if (mediaFileTag.isValidTag()) {
                        arrayList.add(mediaFileTag);
                    } else {
                        VastLog.d("VastXmlTag", "MediaFile: is not valid. Skipping it.");
                    }
                }
                VastXmlTag.d(xmlPullParser);
            }
        }
        xmlPullParser.require(3, null, "MediaFiles");
        return arrayList;
    }

    public final void a(int i2) {
        this.f9625h = i2;
    }

    public final void a(VideoClicksTag videoClicksTag) {
        this.f9622e = videoClicksTag;
    }

    public final void a(EnumMap<TrackingEvent, List<String>> enumMap) {
        this.f9624g = enumMap;
    }

    public final void a(List<MediaFileTag> list) {
        this.f9621d = list;
    }

    public String getAdParameters() {
        return this.f9623f;
    }

    public String getDuration() {
        return this.f9620c;
    }

    public List<MediaFileTag> getMediaFileTagList() {
        return this.f9621d;
    }

    public int getSkipOffsetSec() {
        return this.f9625h;
    }

    @Override // com.explorestack.iab.vast.tags.VastXmlTag
    public String[] getSupportedAttributes() {
        return i;
    }

    public Map<TrackingEvent, List<String>> getTrackingEventListMap() {
        return this.f9624g;
    }

    public VideoClicksTag getVideoClicksTag() {
        return this.f9622e;
    }

    public void setAdParameters(String str) {
        this.f9623f = str;
    }

    public void setDuration(String str) {
        this.f9620c = str;
    }
}
