package com.ironsource.mediationsdk;

import android.text.TextUtils;
import android.util.Pair;
import com.adcolony.sdk.AdColonyUserMetadata;
import com.google.android.exoplayer2.upstream.cache.ContentMetadata;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.onesignal.OSNotificationFormatHelper;
import java.util.Locale;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class IronSourceSegment {
    public static final String AGE = "age";
    public static final String GENDER = "gen";
    public static final String IAPT = "iapt";
    public static final String LEVEL = "lvl";
    public static final String PAYING = "pay";
    public static final String USER_CREATION_DATE = "ucd";

    /* renamed from: a  reason: collision with root package name */
    private String f10720a;

    /* renamed from: g  reason: collision with root package name */
    private String f10726g;

    /* renamed from: b  reason: collision with root package name */
    private int f10721b = 999999;

    /* renamed from: c  reason: collision with root package name */
    private double f10722c = 999999.99d;

    /* renamed from: d  reason: collision with root package name */
    private final String f10723d = OSNotificationFormatHelper.PAYLOAD_OS_ROOT_CUSTOM;

    /* renamed from: e  reason: collision with root package name */
    private final int f10724e = 5;

    /* renamed from: f  reason: collision with root package name */
    private int f10725f = -1;

    /* renamed from: h  reason: collision with root package name */
    private int f10727h = -1;
    private AtomicBoolean i = null;
    private double j = -1.0d;
    private long k = 0;
    private Vector<Pair<String, String>> l = new Vector<>();

    private static boolean a(String str) {
        if (str == null) {
            return false;
        }
        return str.matches("^[a-zA-Z0-9]*$");
    }

    private static boolean a(String str, int i, int i2) {
        return str != null && str.length() > 0 && str.length() <= 32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Vector<Pair<String, String>> a() {
        Vector<Pair<String, String>> vector = new Vector<>();
        if (this.f10725f != -1) {
            vector.add(new Pair<>(AGE, new StringBuilder().append(this.f10725f).toString()));
        }
        if (!TextUtils.isEmpty(this.f10726g)) {
            vector.add(new Pair<>(GENDER, this.f10726g));
        }
        if (this.f10727h != -1) {
            vector.add(new Pair<>(LEVEL, new StringBuilder().append(this.f10727h).toString()));
        }
        if (this.i != null) {
            vector.add(new Pair<>(PAYING, new StringBuilder().append(this.i).toString()));
        }
        if (this.j != -1.0d) {
            vector.add(new Pair<>(IAPT, new StringBuilder().append(this.j).toString()));
        }
        if (this.k != 0) {
            vector.add(new Pair<>(USER_CREATION_DATE, new StringBuilder().append(this.k).toString()));
        }
        if (!TextUtils.isEmpty(this.f10720a)) {
            vector.add(new Pair<>("segName", this.f10720a));
        }
        vector.addAll(this.l);
        return vector;
    }

    public int getAge() {
        return this.f10725f;
    }

    public String getGender() {
        return this.f10726g;
    }

    public double getIapt() {
        return this.j;
    }

    public AtomicBoolean getIsPaying() {
        return this.i;
    }

    public int getLevel() {
        return this.f10727h;
    }

    public String getSegmentName() {
        return this.f10720a;
    }

    public long getUcd() {
        return this.k;
    }

    public void setAge(int i) {
        if (i <= 0 || i > 199) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setAge( " + i + " ) age must be between 1-199", 2);
        } else {
            this.f10725f = i;
        }
    }

    public void setCustom(String str, String str2) {
        try {
            if (!a(str) || !a(str2) || !a(str, 1, 32) || !a(str2, 1, 32)) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setCustom( " + str + " , " + str2 + " ) key and value must be alphanumeric and 1-32 in length", 2);
                return;
            }
            String str3 = ContentMetadata.KEY_CUSTOM_PREFIX + str;
            if (this.l.size() >= 5) {
                this.l.remove(0);
            }
            this.l.add(new Pair<>(str3, str2));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setGender(String str) {
        if (TextUtils.isEmpty(str) || !(str.toLowerCase(Locale.ENGLISH).equals(AdColonyUserMetadata.USER_MALE) || str.toLowerCase(Locale.ENGLISH).equals(AdColonyUserMetadata.USER_FEMALE))) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setGender( " + str + " ) is invalid", 2);
        } else {
            this.f10726g = str;
        }
    }

    public void setIAPTotal(double d2) {
        if (d2 <= 0.0d || d2 >= this.f10722c) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setIAPTotal( " + d2 + " ) iapt must be between 0-" + this.f10722c, 2);
        } else {
            this.j = Math.floor(d2 * 100.0d) / 100.0d;
        }
    }

    public void setIsPaying(boolean z) {
        if (this.i == null) {
            this.i = new AtomicBoolean();
        }
        this.i.set(z);
    }

    public void setLevel(int i) {
        if (i <= 0 || i >= this.f10721b) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setLevel( " + i + " ) level must be between 1-" + this.f10721b, 2);
        } else {
            this.f10727h = i;
        }
    }

    public void setSegmentName(String str) {
        if (a(str) && a(str, 1, 32)) {
            this.f10720a = str;
        } else {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setSegmentName( " + str + " ) segment name must be alphanumeric and 1-32 in length", 2);
        }
    }

    public void setUserCreationDate(long j) {
        if (j > 0) {
            this.k = j;
        } else {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setUserCreationDate( " + j + " ) is an invalid timestamp", 2);
        }
    }
}
