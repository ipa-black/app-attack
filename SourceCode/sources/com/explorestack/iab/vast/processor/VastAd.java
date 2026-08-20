package com.explorestack.iab.vast.processor;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.tags.AdVerificationsExtensionTag;
import com.explorestack.iab.vast.tags.AppodealExtensionTag;
import com.explorestack.iab.vast.tags.CompanionTag;
import com.explorestack.iab.vast.tags.LinearCreativeTag;
import com.explorestack.iab.vast.tags.MediaFileTag;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class VastAd implements Parcelable {
    public static final Parcelable.Creator<VastAd> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public VastRequest f9572a;

    /* renamed from: b  reason: collision with root package name */
    public final LinearCreativeTag f9573b;

    /* renamed from: c  reason: collision with root package name */
    public final MediaFileTag f9574c;

    /* renamed from: d  reason: collision with root package name */
    public ArrayList<CompanionTag> f9575d;

    /* renamed from: e  reason: collision with root package name */
    public ArrayList<String> f9576e;

    /* renamed from: f  reason: collision with root package name */
    public ArrayList<String> f9577f;

    /* renamed from: g  reason: collision with root package name */
    public ArrayList<String> f9578g;

    /* renamed from: h  reason: collision with root package name */
    public ArrayList<String> f9579h;
    public EnumMap<TrackingEvent, List<String>> i;
    public AppodealExtensionTag j;
    public List<AdVerificationsExtensionTag> k = new ArrayList();

    /* loaded from: classes2.dex */
    public class a implements Parcelable.Creator<VastAd> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public VastAd createFromParcel(Parcel parcel) {
            return new VastAd(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public VastAd[] newArray(int i) {
            return new VastAd[i];
        }
    }

    public VastAd(Parcel parcel) {
        this.f9573b = (LinearCreativeTag) parcel.readSerializable();
        this.f9574c = (MediaFileTag) parcel.readSerializable();
        this.f9575d = (ArrayList) parcel.readSerializable();
        this.f9576e = parcel.createStringArrayList();
        this.f9577f = parcel.createStringArrayList();
        this.f9578g = parcel.createStringArrayList();
        this.f9579h = parcel.createStringArrayList();
        this.i = (EnumMap) parcel.readSerializable();
        this.j = (AppodealExtensionTag) parcel.readSerializable();
        parcel.readList(this.k, AdVerificationsExtensionTag.class.getClassLoader());
    }

    public VastAd(LinearCreativeTag linearCreativeTag, MediaFileTag mediaFileTag) {
        this.f9573b = linearCreativeTag;
        this.f9574c = mediaFileTag;
    }

    public void a(int i) {
        VastRequest vastRequest = this.f9572a;
        if (vastRequest != null) {
            vastRequest.sendError(i);
        }
    }

    public void a(AppodealExtensionTag appodealExtensionTag) {
        this.j = appodealExtensionTag;
    }

    public void a(ArrayList<String> arrayList) {
        this.f9578g = arrayList;
    }

    public void a(EnumMap<TrackingEvent, List<String>> enumMap) {
        this.i = enumMap;
    }

    public void b(ArrayList<CompanionTag> arrayList) {
        this.f9575d = arrayList;
    }

    public void c(ArrayList<String> arrayList) {
        this.f9577f = arrayList;
    }

    public void d(ArrayList<String> arrayList) {
        this.f9576e = arrayList;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAdParameters() {
        return this.f9573b.getAdParameters();
    }

    public List<AdVerificationsExtensionTag> getAdVerificationsExtensionList() {
        return this.k;
    }

    public AppodealExtensionTag getAppodealExtension() {
        return this.j;
    }

    public CompanionTag getBanner(Context context) {
        ArrayList<CompanionTag> arrayList = this.f9575d;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<CompanionTag> it = this.f9575d.iterator();
            while (it.hasNext()) {
                CompanionTag next = it.next();
                int width = next.getWidth();
                int height = next.getHeight();
                if (width > -1 && height > -1) {
                    if (Utils.isTablet(context) && width == 728 && height == 90) {
                        return next;
                    }
                    if (!Utils.isTablet(context) && width == 320 && height == 50) {
                        return next;
                    }
                }
            }
        }
        return null;
    }

    public String getClickThroughUrl() {
        if (this.f9573b.getVideoClicksTag() != null) {
            return this.f9573b.getVideoClicksTag().getClickThroughUrl();
        }
        return null;
    }

    public List<String> getClickTrackingUrlList() {
        return this.f9578g;
    }

    public CompanionTag getCompanion(int i, int i2) {
        ArrayList<CompanionTag> arrayList = this.f9575d;
        if (arrayList == null || arrayList.isEmpty()) {
            a(600);
            return null;
        }
        HashMap hashMap = new HashMap();
        Iterator<CompanionTag> it = this.f9575d.iterator();
        while (it.hasNext()) {
            CompanionTag next = it.next();
            int width = next.getWidth();
            int height = next.getHeight();
            if (width > -1 && height > -1) {
                float max = Math.max(width, height) / Math.min(width, height);
                if (Math.min(width, height) >= 250 && max <= 2.5d && next.hasCreative()) {
                    hashMap.put(Float.valueOf(width / height), next);
                }
            }
        }
        if (hashMap.isEmpty()) {
            a(600);
            return null;
        }
        float f2 = i / i2;
        Set<Float> keySet = hashMap.keySet();
        float floatValue = ((Float) keySet.iterator().next()).floatValue();
        for (Float f3 : keySet) {
            float floatValue2 = f3.floatValue();
            if (Math.abs(floatValue - f2) > Math.abs(floatValue2 - f2)) {
                floatValue = floatValue2;
            }
        }
        return (CompanionTag) hashMap.get(Float.valueOf(floatValue));
    }

    public List<String> getErrorUrlList() {
        return this.f9577f;
    }

    public List<String> getImpressionUrlList() {
        return this.f9576e;
    }

    public MediaFileTag getPickedMediaFileTag() {
        return this.f9574c;
    }

    public int getSkipOffsetSec() {
        return this.f9573b.getSkipOffsetSec();
    }

    public Map<TrackingEvent, List<String>> getTrackingEventListMap() {
        return this.i;
    }

    public ArrayList<String> getWrapperCompanionClickTrackingUrlList() {
        return this.f9579h;
    }

    public void setAdVerificationsExtensionList(List<AdVerificationsExtensionTag> list) {
        this.k = list;
    }

    public void setVastRequest(VastRequest vastRequest) {
        this.f9572a = vastRequest;
    }

    public void setWrapperCompanionClickTrackingUrlList(ArrayList<String> arrayList) {
        this.f9579h = arrayList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeSerializable(this.f9573b);
        parcel.writeSerializable(this.f9574c);
        parcel.writeSerializable(this.f9575d);
        parcel.writeStringList(this.f9576e);
        parcel.writeStringList(this.f9577f);
        parcel.writeStringList(this.f9578g);
        parcel.writeStringList(this.f9579h);
        parcel.writeSerializable(this.i);
        parcel.writeSerializable(this.j);
        parcel.writeList(this.k);
    }
}
