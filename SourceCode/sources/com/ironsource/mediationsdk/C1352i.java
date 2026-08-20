package com.ironsource.mediationsdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.ironsource.mediationsdk.i  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1352i {

    /* renamed from: a  reason: collision with root package name */
    private ConcurrentHashMap<String, ArrayList<a>> f11140a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private int f11141b;

    /* renamed from: com.ironsource.mediationsdk.i$a */
    /* loaded from: classes3.dex */
    public enum a {
        ISAuctionPerformanceDidntAttemptToLoad,
        ISAuctionPerformanceFailedToLoad,
        ISAuctionPerformanceLoadedSuccessfully,
        ISAuctionPerformanceFailedToShow,
        ISAuctionPerformanceShowedSuccessfully,
        ISAuctionPerformanceNotPartOfWaterfall
    }

    public C1352i(List<String> list, int i) {
        this.f11141b = i;
        for (String str : list) {
            ArrayList<a> arrayList = new ArrayList<>();
            this.f11140a.put(str, arrayList);
        }
    }

    public final String a(String str) {
        ArrayList<a> arrayList = this.f11140a.get(str);
        String str2 = "";
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<a> it = arrayList.iterator();
            StringBuilder append = new StringBuilder("").append(it.next().ordinal());
            while (true) {
                str2 = append.toString();
                if (!it.hasNext()) {
                    break;
                }
                append = new StringBuilder().append(str2 + ",").append(it.next().ordinal());
            }
        }
        return str2;
    }

    public final void a(ConcurrentHashMap<String, a> concurrentHashMap) {
        if (this.f11141b == 0) {
            return;
        }
        for (String str : this.f11140a.keySet()) {
            a aVar = a.ISAuctionPerformanceNotPartOfWaterfall;
            if (concurrentHashMap.containsKey(str)) {
                aVar = concurrentHashMap.get(str);
            }
            ArrayList<a> arrayList = this.f11140a.get(str);
            if (this.f11141b != -1 && arrayList.size() == this.f11141b) {
                arrayList.remove(0);
            }
            arrayList.add(aVar);
        }
    }
}
