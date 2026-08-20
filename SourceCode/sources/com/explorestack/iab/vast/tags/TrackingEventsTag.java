package com.explorestack.iab.vast.tags;

import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastLog;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
class TrackingEventsTag extends VastXmlTag {

    /* renamed from: c  reason: collision with root package name */
    public final EnumMap<TrackingEvent, List<String>> f9634c;

    public TrackingEventsTag(XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        TrackingEvent trackingEvent;
        this.f9634c = new EnumMap<>(TrackingEvent.class);
        xmlPullParser.require(2, null, "TrackingEvents");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (VastXmlTag.a(xmlPullParser.getName(), "Tracking")) {
                    String a2 = new TrackingTag(xmlPullParser).a("event");
                    try {
                        trackingEvent = TrackingEvent.valueOf(a2);
                    } catch (Exception unused) {
                        VastLog.d("VastXmlTag", String.format("Event: %s is not valid. Skipping it.", a2));
                        trackingEvent = null;
                    }
                    if (trackingEvent != null) {
                        String c2 = VastXmlTag.c(xmlPullParser);
                        List<String> list = this.f9634c.get(trackingEvent);
                        if (list != null) {
                            list.add(c2);
                        } else {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(c2);
                            this.f9634c.put((EnumMap<TrackingEvent, List<String>>) trackingEvent, (TrackingEvent) arrayList);
                        }
                    }
                }
                VastXmlTag.d(xmlPullParser);
            }
        }
        xmlPullParser.require(3, null, "TrackingEvents");
    }

    public EnumMap<TrackingEvent, List<String>> b() {
        return this.f9634c;
    }
}
