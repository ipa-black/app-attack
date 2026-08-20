package com.applovin.impl.b;

import android.net.Uri;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.appodeal.ads.modules.common.internal.LogConstants;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private static final DateFormat f4576a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);

    /* renamed from: b  reason: collision with root package name */
    private static final Random f4577b = new Random(System.currentTimeMillis());

    public static Uri a(String str, long j, Uri uri, f fVar, com.applovin.impl.sdk.n nVar) {
        if (!URLUtil.isValidUrl(str)) {
            nVar.D();
            if (v.a()) {
                nVar.D().e("VastUtils", "Unable to replace macros in invalid URL string.");
            }
            return null;
        }
        try {
            String num = Integer.toString(fVar.a());
            String replace = str.replace("[ERRORCODE]", num).replace("[REASON]", num);
            if (j >= 0) {
                replace = replace.replace("[CONTENTPLAYHEAD]", a(j));
            }
            if (uri != null) {
                replace = replace.replace("[ASSETURI]", uri.toString());
            }
            return Uri.parse(replace.replace("[CACHEBUSTING]", a()).replace("[TIMESTAMP]", b()));
        } catch (Throwable th) {
            nVar.D();
            if (v.a()) {
                nVar.D().b("VastUtils", "Unable to replace macros in URL string " + str, th);
            }
            return null;
        }
    }

    public static f a(a aVar) {
        if (b(aVar) || c(aVar)) {
            return null;
        }
        return f.GENERAL_WRAPPER_ERROR;
    }

    private static String a() {
        return Integer.toString(f4577b.nextInt(89999999) + 10000000);
    }

    private static String a(long j) {
        if (j > 0) {
            return String.format(Locale.US, "%02d:%02d:%02d.000", Long.valueOf(TimeUnit.SECONDS.toHours(j)), Long.valueOf(TimeUnit.SECONDS.toMinutes(j) % TimeUnit.MINUTES.toSeconds(1L)), Long.valueOf(j % TimeUnit.MINUTES.toSeconds(1L)));
        }
        return "00:00:00.000";
    }

    public static String a(e eVar) {
        s c2;
        if (eVar != null) {
            List<s> b2 = eVar.b();
            int size = eVar.b().size();
            if (size <= 0 || (c2 = b2.get(size - 1).c("VASTAdTagURI")) == null) {
                return null;
            }
            return c2.c();
        }
        throw new IllegalArgumentException("Unable to get resolution uri string for fetching the next wrapper or inline response in the chain");
    }

    public static String a(s sVar, String str, String str2) {
        s b2 = sVar.b(str);
        if (b2 != null) {
            String c2 = b2.c();
            if (StringUtils.isValidString(c2)) {
                return c2;
            }
        }
        return str2;
    }

    private static Set<k> a(e eVar, com.applovin.impl.sdk.n nVar) {
        if (eVar != null) {
            List<s> b2 = eVar.b();
            Set<k> hashSet = new HashSet<>(b2.size());
            for (s sVar : b2) {
                s c2 = sVar.c("Wrapper");
                if (c2 == null) {
                    c2 = sVar.c("InLine");
                }
                hashSet = a(hashSet, c2 != null ? c2.a(LogConstants.EVENT_ERROR) : sVar.a(LogConstants.EVENT_ERROR), eVar, nVar);
            }
            nVar.D();
            if (v.a()) {
                nVar.D().b("VastUtils", "Retrieved " + hashSet.size() + " top level error trackers: " + hashSet);
            }
            return hashSet;
        }
        return null;
    }

    private static Set<k> a(Set<k> set, List<s> list, e eVar, com.applovin.impl.sdk.n nVar) {
        if (list != null) {
            for (s sVar : list) {
                k a2 = k.a(sVar, eVar, nVar);
                if (a2 != null) {
                    set.add(a2);
                }
            }
        }
        return set;
    }

    public static void a(e eVar, AppLovinAdLoadListener appLovinAdLoadListener, f fVar, int i, com.applovin.impl.sdk.n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("Unable to handle failure. No sdk specified.");
        }
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.failedToReceiveAd(i);
        }
        a(a(eVar, nVar), fVar, nVar);
    }

    public static void a(s sVar, Map<String, Set<k>> map, e eVar, com.applovin.impl.sdk.n nVar) {
        List<s> a2;
        if (nVar == null) {
            throw new IllegalArgumentException("Unable to render event trackers. No sdk specified.");
        }
        if (sVar == null) {
            nVar.D();
            if (v.a()) {
                nVar.D().e("VastUtils", "Unable to render event trackers; null node provided");
            }
        } else if (map == null) {
            nVar.D();
            if (v.a()) {
                nVar.D().e("VastUtils", "Unable to render event trackers; null event trackers provided");
            }
        } else {
            s b2 = sVar.b("TrackingEvents");
            if (b2 == null || (a2 = b2.a("Tracking")) == null) {
                return;
            }
            for (s sVar2 : a2) {
                String str = sVar2.b().get("event");
                if (StringUtils.isValidString(str)) {
                    k a3 = k.a(sVar2, eVar, nVar);
                    if (a3 != null) {
                        Set<k> set = map.get(str);
                        if (set != null) {
                            set.add(a3);
                        } else {
                            HashSet hashSet = new HashSet();
                            hashSet.add(a3);
                            map.put(str, hashSet);
                        }
                    }
                } else {
                    nVar.D();
                    if (v.a()) {
                        nVar.D().e("VastUtils", "Could not find event for tracking node = " + sVar2);
                    }
                }
            }
        }
    }

    public static void a(List<s> list, Set<k> set, e eVar, com.applovin.impl.sdk.n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("Unable to render trackers. No sdk specified.");
        }
        if (list == null) {
            nVar.D();
            if (v.a()) {
                nVar.D().e("VastUtils", "Unable to render trackers; null nodes provided");
            }
        } else if (set == null) {
            nVar.D();
            if (v.a()) {
                nVar.D().e("VastUtils", "Unable to render trackers; null trackers provided");
            }
        } else {
            for (s sVar : list) {
                k a2 = k.a(sVar, eVar, nVar);
                if (a2 != null) {
                    set.add(a2);
                }
            }
        }
    }

    public static void a(Set<k> set, long j, Uri uri, f fVar, com.applovin.impl.sdk.n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("Unable to fire trackers. No sdk specified.");
        }
        if (set == null || set.isEmpty()) {
            return;
        }
        for (k kVar : set) {
            Uri a2 = a(kVar.b(), j, uri, fVar, nVar);
            if (a2 != null) {
                nVar.X().a(com.applovin.impl.sdk.network.h.o().c(a2.toString()).a(false).a(), false);
            }
        }
    }

    public static void a(Set<k> set, f fVar, com.applovin.impl.sdk.n nVar) {
        a(set, -1L, (Uri) null, fVar, nVar);
    }

    public static void a(Set<k> set, com.applovin.impl.sdk.n nVar) {
        a(set, -1L, (Uri) null, f.UNSPECIFIED, nVar);
    }

    public static boolean a(s sVar) {
        if (sVar != null) {
            return sVar.c("Wrapper") != null;
        }
        throw new IllegalArgumentException("Unable to check if a given XmlNode contains a wrapper response");
    }

    private static String b() {
        DateFormat dateFormat = f4576a;
        dateFormat.setTimeZone(TimeZone.getDefault());
        return dateFormat.format(new Date());
    }

    public static boolean b(a aVar) {
        n aM;
        List<o> a2;
        return (aVar == null || (aM = aVar.aM()) == null || (a2 = aM.a()) == null || a2.isEmpty()) ? false : true;
    }

    public static boolean b(s sVar) {
        if (sVar != null) {
            return sVar.c("InLine") != null;
        }
        throw new IllegalArgumentException("Unable to check if a given XmlNode contains an inline response");
    }

    public static boolean c(a aVar) {
        d aO;
        i b2;
        if (aVar == null || (aO = aVar.aO()) == null || (b2 = aO.b()) == null) {
            return false;
        }
        return b2.b() != null || StringUtils.isValidString(b2.c());
    }
}
