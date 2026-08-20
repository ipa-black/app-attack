package com.explorestack.iab.vast.processor;

import android.util.Pair;
import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastLog;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.tags.AdContentTag;
import com.explorestack.iab.vast.tags.AdTag;
import com.explorestack.iab.vast.tags.AdVerificationsExtensionTag;
import com.explorestack.iab.vast.tags.AppodealExtensionTag;
import com.explorestack.iab.vast.tags.CompanionAdsCreativeTag;
import com.explorestack.iab.vast.tags.CompanionTag;
import com.explorestack.iab.vast.tags.CreativeContentTag;
import com.explorestack.iab.vast.tags.CreativeTag;
import com.explorestack.iab.vast.tags.ExtensionTag;
import com.explorestack.iab.vast.tags.InLineAdTag;
import com.explorestack.iab.vast.tags.LinearCreativeTag;
import com.explorestack.iab.vast.tags.MediaFileTag;
import com.explorestack.iab.vast.tags.VastTag;
import com.explorestack.iab.vast.tags.VideoClicksTag;
import com.explorestack.iab.vast.tags.WrapperAdTag;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public final VastRequest f9583a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9584b;

    /* renamed from: c  reason: collision with root package name */
    public b<MediaFileTag> f9585c;

    /* renamed from: d  reason: collision with root package name */
    public final Stack<AdContentTag> f9586d;

    /* renamed from: e  reason: collision with root package name */
    public int f9587e;

    public c(VastRequest vastRequest, b<MediaFileTag> bVar) {
        this(vastRequest, bVar, 5);
    }

    public c(VastRequest vastRequest, b<MediaFileTag> bVar, int i) {
        this.f9586d = new Stack<>();
        this.f9587e = 0;
        this.f9583a = vastRequest;
        this.f9585c = bVar;
        this.f9584b = i;
    }

    public final Pair<LinearCreativeTag, MediaFileTag> a(InLineAdTag inLineAdTag) {
        LinearCreativeTag linearCreativeTag;
        List<MediaFileTag> mediaFileTagList;
        ArrayList arrayList = new ArrayList();
        for (CreativeTag creativeTag : inLineAdTag.getCreativeTagList()) {
            if (creativeTag != null) {
                CreativeContentTag creativeContentTag = creativeTag.getCreativeContentTag();
                if ((creativeContentTag instanceof LinearCreativeTag) && (mediaFileTagList = (linearCreativeTag = (LinearCreativeTag) creativeContentTag).getMediaFileTagList()) != null && !mediaFileTagList.isEmpty()) {
                    for (MediaFileTag mediaFileTag : mediaFileTagList) {
                        arrayList.add(new Pair(linearCreativeTag, mediaFileTag));
                    }
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        b<MediaFileTag> bVar = this.f9585c;
        Pair<LinearCreativeTag, MediaFileTag> a2 = bVar != null ? bVar.a(arrayList) : null;
        return a2 != null ? a2 : new Pair<>(null, null);
    }

    public final d a(AdContentTag adContentTag, VastTag vastTag, e eVar) {
        d dVar = new d();
        int i = 0;
        while (true) {
            if (i >= vastTag.getAdTagList().size()) {
                if (dVar.b() == -1 && adContentTag != null) {
                    dVar.a(adContentTag, 303);
                }
                return dVar;
            }
            AdTag adTag = vastTag.getAdTagList().get(i);
            if (adTag != null && adTag.getAdContentTag() != null) {
                AdContentTag adContentTag2 = adTag.getAdContentTag();
                if (adContentTag2 instanceof InLineAdTag) {
                    d b2 = b((InLineAdTag) adContentTag2);
                    if (b2.d()) {
                        return b2;
                    }
                    a(b2.a());
                    if (adContentTag == null) {
                        dVar.a(b2.b());
                    } else if (b2.e()) {
                        dVar.a(adContentTag, b2.b());
                    }
                } else if ((adContentTag2 instanceof WrapperAdTag) && eVar.c()) {
                    d a2 = a((WrapperAdTag) adContentTag2);
                    if (a2.d()) {
                        return a2;
                    }
                    a(a2.a());
                    if (adContentTag != null) {
                        dVar.a(adContentTag, a2.e() ? a2.b() : 303);
                    } else {
                        dVar.a(303);
                    }
                    if (i == 0 && !eVar.b()) {
                        return dVar;
                    }
                }
                b(adContentTag2);
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x011b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.explorestack.iab.vast.processor.d a(com.explorestack.iab.vast.tags.WrapperAdTag r11) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.vast.processor.c.a(com.explorestack.iab.vast.tags.WrapperAdTag):com.explorestack.iab.vast.processor.d");
    }

    public d a(String str) {
        int i;
        VastTag a2;
        VastLog.d("VastProcessor", "process");
        d dVar = new d();
        try {
            a2 = com.explorestack.iab.vast.tags.a.a(str);
        } catch (Exception unused) {
            i = 100;
        }
        if (a2 == null || !a2.hasAd()) {
            i = 101;
            dVar.a(i);
            return dVar;
        }
        return a(null, a2, new e());
    }

    public final ArrayList<String> a() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f9586d.empty()) {
            return arrayList;
        }
        Iterator<AdContentTag> it = this.f9586d.iterator();
        while (it.hasNext()) {
            AdContentTag next = it.next();
            if (next != null && next.getErrorUrlList() != null) {
                arrayList.addAll(next.getErrorUrlList());
            }
        }
        return arrayList;
    }

    public final ArrayList<CompanionTag> a(AdContentTag adContentTag) {
        ArrayList<CompanionTag> arrayList = new ArrayList<>();
        for (CreativeTag creativeTag : adContentTag.getCreativeTagList()) {
            if (creativeTag != null) {
                CreativeContentTag creativeContentTag = creativeTag.getCreativeContentTag();
                if (creativeContentTag instanceof CompanionAdsCreativeTag) {
                    CompanionAdsCreativeTag companionAdsCreativeTag = (CompanionAdsCreativeTag) creativeContentTag;
                    if (companionAdsCreativeTag.getCompanionTagList() != null) {
                        arrayList.addAll(companionAdsCreativeTag.getCompanionTagList());
                    }
                }
            }
        }
        return arrayList;
    }

    public void a(List<String> list) {
        this.f9583a.fireErrorUrls(list, null);
    }

    public final void a(List<String> list, CompanionAdsCreativeTag companionAdsCreativeTag) {
        List<String> companionClickTrackingList;
        for (CompanionTag companionTag : companionAdsCreativeTag.getCompanionTagList()) {
            if (!companionTag.hasCreative() && (companionClickTrackingList = companionTag.getCompanionClickTrackingList()) != null) {
                list.addAll(companionClickTrackingList);
            }
        }
    }

    public final void a(Map<TrackingEvent, List<String>> map, Map<TrackingEvent, List<String>> map2) {
        if (map2 == null || map2.isEmpty()) {
            return;
        }
        for (Map.Entry<TrackingEvent, List<String>> entry : map2.entrySet()) {
            TrackingEvent key = entry.getKey();
            List<String> list = map.get(key);
            if (list == null) {
                list = new ArrayList<>();
                map.put(key, list);
            }
            list.addAll(entry.getValue());
        }
    }

    public final d b(InLineAdTag inLineAdTag) {
        int i;
        this.f9586d.push(inLineAdTag);
        d dVar = new d();
        Pair<LinearCreativeTag, MediaFileTag> a2 = a(inLineAdTag);
        if (a2 == null) {
            i = 101;
        } else if (a2.first != null || a2.second != null) {
            ArrayList<String> arrayList = new ArrayList<>();
            ArrayList<String> arrayList2 = new ArrayList<>();
            ArrayList<String> arrayList3 = new ArrayList<>();
            EnumMap<TrackingEvent, List<String>> enumMap = new EnumMap<>(TrackingEvent.class);
            ArrayList arrayList4 = new ArrayList();
            AppodealExtensionTag appodealExtensionTag = null;
            if (!this.f9586d.empty()) {
                Iterator<AdContentTag> it = this.f9586d.iterator();
                while (it.hasNext()) {
                    AdContentTag next = it.next();
                    if (next != null) {
                        if (next.getImpressionUrlList() != null) {
                            arrayList.addAll(next.getImpressionUrlList());
                        }
                        if (next.getCreativeTagList() != null) {
                            for (CreativeTag creativeTag : next.getCreativeTagList()) {
                                if (creativeTag != null) {
                                    CreativeContentTag creativeContentTag = creativeTag.getCreativeContentTag();
                                    if (creativeContentTag instanceof LinearCreativeTag) {
                                        LinearCreativeTag linearCreativeTag = (LinearCreativeTag) creativeContentTag;
                                        VideoClicksTag videoClicksTag = linearCreativeTag.getVideoClicksTag();
                                        if (videoClicksTag != null && videoClicksTag.getClickTrackingUrlList() != null) {
                                            arrayList2.addAll(videoClicksTag.getClickTrackingUrlList());
                                        }
                                        a(enumMap, linearCreativeTag.getTrackingEventListMap());
                                    } else if (creativeContentTag instanceof CompanionAdsCreativeTag) {
                                        a(arrayList3, (CompanionAdsCreativeTag) creativeContentTag);
                                    }
                                }
                            }
                        }
                        List<ExtensionTag> extensionTagList = next.getExtensionTagList();
                        if (extensionTagList != null) {
                            for (ExtensionTag extensionTag : extensionTagList) {
                                if (extensionTag instanceof AppodealExtensionTag) {
                                    if (appodealExtensionTag == null) {
                                        appodealExtensionTag = (AppodealExtensionTag) extensionTag;
                                    }
                                } else if (extensionTag instanceof AdVerificationsExtensionTag) {
                                    arrayList4.add((AdVerificationsExtensionTag) extensionTag);
                                }
                            }
                        }
                    }
                }
            }
            VastAd vastAd = new VastAd((LinearCreativeTag) a2.first, (MediaFileTag) a2.second);
            vastAd.d(arrayList);
            vastAd.c(a());
            vastAd.a(arrayList2);
            vastAd.setWrapperCompanionClickTrackingUrlList(arrayList3);
            vastAd.a(enumMap);
            vastAd.b(a((AdContentTag) inLineAdTag));
            vastAd.a(appodealExtensionTag);
            vastAd.setAdVerificationsExtensionList(arrayList4);
            dVar.a(0);
            dVar.a(vastAd);
            return dVar;
        } else {
            i = 403;
        }
        dVar.a(inLineAdTag, i);
        return dVar;
    }

    public void b(AdContentTag adContentTag) {
        if (this.f9586d.empty()) {
            return;
        }
        int search = this.f9586d.search(adContentTag);
        for (int i = 0; i < search; i++) {
            this.f9586d.pop();
        }
    }

    public final boolean b() {
        return this.f9587e >= this.f9584b;
    }
}
