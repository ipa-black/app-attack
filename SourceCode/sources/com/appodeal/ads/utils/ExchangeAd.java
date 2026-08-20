package com.appodeal.ads.utils;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.appodeal.ads.n5;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class ExchangeAd implements Parcelable {
    public static final int CLICK_REQUEST_ERROR = 1002;
    public static final String CREATIVE_HEIGHT = "X-Appodeal-Creative-Height";
    public static final String CREATIVE_WIDTH = "X-Appodeal-Creative-Width";
    public static final Parcelable.Creator<ExchangeAd> CREATOR = new a();
    public static final int FILL_REQUEST_ERROR = 1004;
    public static final int FINISH_REQUEST_ERROR = 1003;
    public static final int IMPRESSION_REQUEST_ERROR = 1001;
    public static final int LOADING_TIMEOUT_ERROR = 1005;

    /* renamed from: a  reason: collision with root package name */
    public final String f7730a;

    /* renamed from: b  reason: collision with root package name */
    public final Map<String, List<String>> f7731b;

    /* renamed from: c  reason: collision with root package name */
    public int f7732c;

    /* renamed from: d  reason: collision with root package name */
    public final long f7733d;

    /* loaded from: classes2.dex */
    public class a implements Parcelable.Creator<ExchangeAd> {
        @Override // android.os.Parcelable.Creator
        public final ExchangeAd createFromParcel(Parcel parcel) {
            return new ExchangeAd(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ExchangeAd[] newArray(int i) {
            return new ExchangeAd[i];
        }
    }

    public ExchangeAd(Parcel parcel) {
        this.f7732c = -1;
        this.f7730a = parcel.readString();
        this.f7731b = parcel.readHashMap(List.class.getClassLoader());
        this.f7732c = parcel.readInt();
        this.f7733d = parcel.readLong();
    }

    public ExchangeAd(String str, Map<String, List<String>> map, long j) {
        this.f7732c = -1;
        this.f7730a = str;
        this.f7731b = map;
        this.f7733d = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        trackError(1002);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        trackError(1004);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        trackError(1003);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        trackError(1001);
    }

    public final int a(String str) {
        List<String> list;
        try {
            Map<String, List<String>> map = this.f7731b;
            if (map != null && map.containsKey(str) && (list = this.f7731b.get(str)) != null && list.size() > 0) {
                return Integer.parseInt(list.get(0));
            }
        } catch (Exception e2) {
            Log.log(e2);
        }
        return 0;
    }

    public final void a(String str, String str2, Runnable runnable) {
        Map<String, List<String>> map = this.f7731b;
        if (map == null || !map.containsKey(str)) {
            return;
        }
        for (String str3 : this.f7731b.get(str)) {
            long j = this.f7733d;
            int i = this.f7732c;
            n5.a(TextUtils.isEmpty(str3) ? null : str3.replace("%%SEGMENT%%", String.valueOf(j)).replace("%25%25SEGMENT%25%25", String.valueOf(j)).replace("%%PLACEMENT%%", String.valueOf(i)).replace("%25%25PLACEMENT%25%25", String.valueOf(i)).replace("%%ERRORCODE%%", str2).replace("%25%25ERRORCODE%25%25", str2), s.f7824e, runnable);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAdm() {
        return this.f7730a;
    }

    public int getCloseTime() {
        return a("X-Appodeal-Close-Time");
    }

    public int getHeight() {
        return a(CREATIVE_HEIGHT);
    }

    public String getType() {
        List<String> list;
        try {
            Map<String, List<String>> map = this.f7731b;
            return (map == null || !map.containsKey("X-Appodeal-Creative-Type") || (list = this.f7731b.get("X-Appodeal-Creative-Type")) == null || list.size() <= 0) ? "" : list.get(0);
        } catch (Exception e2) {
            Log.log(e2);
            return "";
        }
    }

    public int getWidth() {
        return a(CREATIVE_WIDTH);
    }

    public void trackClick() {
        a("X-Appodeal-Url-Click", "", new Runnable() { // from class: com.appodeal.ads.utils.ExchangeAd$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ExchangeAd.this.a();
            }
        });
    }

    public void trackError(int i) {
        a("X-Appodeal-Url-Error", String.valueOf(i), null);
    }

    public void trackFill() {
        a("X-Appodeal-Url-Fill", "", new Runnable() { // from class: com.appodeal.ads.utils.ExchangeAd$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ExchangeAd.this.b();
            }
        });
    }

    public void trackFinish() {
        a("X-Appodeal-Url-Finish", "", new Runnable() { // from class: com.appodeal.ads.utils.ExchangeAd$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ExchangeAd.this.c();
            }
        });
    }

    public void trackImpression(int i) {
        this.f7732c = i;
        a("X-Appodeal-Url-Impression", "", new Runnable() { // from class: com.appodeal.ads.utils.ExchangeAd$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ExchangeAd.this.d();
            }
        });
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f7730a);
        parcel.writeMap(this.f7731b);
        parcel.writeInt(this.f7732c);
        parcel.writeLong(this.f7733d);
    }
}
