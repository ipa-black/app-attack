package com.appodeal.ads.segments;

import com.appnext.ads.fullscreen.RewardedVideo;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.u;
import com.appodeal.ads.utils.Log;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.json.JSONArray;
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final TreeMap<String, g> f7512a = new TreeMap<>();

    /* renamed from: b  reason: collision with root package name */
    public static final TreeMap f7513b = new TreeMap();

    /* renamed from: c  reason: collision with root package name */
    public static final com.appodeal.ads.storage.o f7514c = com.appodeal.ads.storage.o.f7663b;

    /* renamed from: d  reason: collision with root package name */
    public static final CopyOnWriteArrayList f7515d = new CopyOnWriteArrayList();

    /* loaded from: classes2.dex */
    public interface a {
        String a();

        void a(g gVar);

        g b();
    }

    @JvmStatic
    public static final g a(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        TreeMap<String, g> treeMap = f7512a;
        if (treeMap.containsKey(name)) {
            g gVar = treeMap.get(name);
            if (gVar != null) {
                return gVar;
            }
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        TreeMap treeMap2 = f7513b;
        if (treeMap2.containsKey(name)) {
            Object obj = treeMap2.get(name);
            if (obj != null) {
                return (g) obj;
            }
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        if (!Intrinsics.areEqual(name, RewardedVideo.VIDEO_MODE_DEFAULT)) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String format = String.format("'%s' not found, using default placement", Arrays.copyOf(new Object[]{name}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
            Log.log("Placement", LogConstants.EVENT_GET, format);
        }
        if (treeMap.containsKey(RewardedVideo.VIDEO_MODE_DEFAULT)) {
            g gVar2 = treeMap.get(RewardedVideo.VIDEO_MODE_DEFAULT);
            if (gVar2 != null) {
                return gVar2;
            }
            throw new IllegalArgumentException("Required value was null.".toString());
        } else if (!treeMap2.containsKey(RewardedVideo.VIDEO_MODE_DEFAULT)) {
            g DEFAULT = g.f7503h;
            Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
            return DEFAULT;
        } else {
            Object obj2 = treeMap2.get(RewardedVideo.VIDEO_MODE_DEFAULT);
            if (obj2 != null) {
                return (g) obj2;
            }
            throw new IllegalArgumentException("Required value was null.".toString());
        }
    }

    public static void a() {
        Map<String, String> e2 = f7514c.e();
        long currentTimeMillis = ((System.currentTimeMillis() / 1000) / 60) - 43200;
        for (Map.Entry<String, String> entry : e2.entrySet()) {
            String key = entry.getKey();
            try {
                JSONArray jSONArray = new JSONArray(entry.getValue());
                JSONArray jSONArray2 = new JSONArray();
                int length = jSONArray.length();
                int i = 0;
                while (i < length) {
                    int i2 = i + 1;
                    long j = jSONArray.getLong(i);
                    if (j > currentTimeMillis) {
                        jSONArray2.put(j);
                    }
                    i = i2;
                }
                com.appodeal.ads.storage.o oVar = f7514c;
                String jSONArray3 = jSONArray2.toString();
                Intrinsics.checkNotNullExpressionValue(jSONArray3, "output.toString()");
                oVar.c(key, jSONArray3);
            } catch (Exception e3) {
                Log.log(e3);
            }
        }
    }

    @JvmStatic
    public static final void a(u.c callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        f7515d.add(callback);
    }

    public static void a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return;
        }
        int length = jSONArray.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            g a2 = g.a(jSONArray.getJSONObject(i));
            if (a2 != null) {
                TreeMap treeMap = f7513b;
                g gVar = (g) treeMap.get(a2.b());
                a2.a(gVar == null ? 0L : gVar.a());
                String b2 = a2.b();
                Intrinsics.checkNotNullExpressionValue(b2, "placement.name");
                treeMap.put(b2, a2);
            }
            i = i2;
        }
    }

    public static boolean a(g gVar) {
        return gVar == null || Intrinsics.areEqual(gVar, g.f7503h);
    }

    public static final g b() {
        return a(RewardedVideo.VIDEO_MODE_DEFAULT);
    }

    public static boolean c() {
        return (f7513b.isEmpty() ^ true) && n.c().f7528a != -1;
    }

    @JvmStatic
    public static final void d() {
        Iterator it = f7515d.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            String a2 = aVar.a();
            if (a2 != null && a(aVar.b())) {
                aVar.a(a(a2));
            }
        }
    }
}
