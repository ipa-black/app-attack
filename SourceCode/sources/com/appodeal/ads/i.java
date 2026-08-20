package com.appodeal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.appodeal.ads.d1;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.unified.UnifiedAppStateChangeListener;
import com.appodeal.ads.utils.ActivityRule;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.app.AppState;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: g  reason: collision with root package name */
    public static EnumMap<AdType, i> f6715g = new EnumMap<>(AdType.class);

    /* renamed from: h  reason: collision with root package name */
    public static final ArrayList f6716h = new ArrayList();
    public static final ArrayList i;
    public static final ConcurrentHashMap j;
    public static final AtomicBoolean k;
    public static final /* synthetic */ boolean l = true;

    /* renamed from: a  reason: collision with root package name */
    public final ConcurrentHashMap f6717a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    public final ConcurrentHashMap f6718b = new ConcurrentHashMap();

    /* renamed from: c  reason: collision with root package name */
    public final CopyOnWriteArraySet f6719c = new CopyOnWriteArraySet();

    /* renamed from: d  reason: collision with root package name */
    public final ConcurrentHashMap f6720d = new ConcurrentHashMap();

    /* renamed from: e  reason: collision with root package name */
    public final AtomicBoolean f6721e = new AtomicBoolean(false);

    /* renamed from: f  reason: collision with root package name */
    public final AtomicBoolean f6722f = new AtomicBoolean(false);

    /* loaded from: classes.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ CountDownLatch f6723a;

        public b(CountDownLatch countDownLatch) {
            this.f6723a = countDownLatch;
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final String f6724a;

        /* renamed from: b  reason: collision with root package name */
        public final String f6725b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6726c;

        /* renamed from: d  reason: collision with root package name */
        public final JSONArray f6727d;

        public c(String str, String str2, String str3, JSONArray jSONArray) {
            this.f6724a = str;
            this.f6725b = str2;
            this.f6726c = str3;
            this.f6727d = jSONArray;
        }
    }

    static {
        com.appodeal.ads.utils.app.b.All.a(new a());
        i = new ArrayList();
        j = new ConcurrentHashMap();
        k = new AtomicBoolean(false);
    }

    public static i a(AdType adType) {
        i iVar = f6715g.get(adType);
        if (iVar == null) {
            synchronized (i.class) {
                iVar = f6715g.get(adType);
                if (iVar == null) {
                    iVar = new i();
                    f6715g.put((EnumMap<AdType, i>) adType, (AdType) iVar);
                }
            }
        }
        return iVar;
    }

    public static String a(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(readLine).append('\n');
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                try {
                    break;
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            } catch (Throwable th) {
                try {
                    inputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                throw th;
            }
        }
        inputStream.close();
        return sb.toString();
    }

    public static void a(AdNetwork adNetwork) {
        String version = adNetwork.getVersion();
        String recommendedVersion = adNetwork.getRecommendedVersion();
        if (TextUtils.isEmpty(recommendedVersion) || TextUtils.equals(version, recommendedVersion)) {
            return;
        }
        String a2 = n5.a(adNetwork.getName());
        Log.e("Appodeal", String.format("%s [%s]: Your '%s' SDK version (%s) doesn't match recommended. Please use '%s' SDK version %s instead to be sure that everything will work correctly.", LogConstants.KEY_NETWORK, LogConstants.EVENT_ERROR, a2, version, a2, recommendedVersion));
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0086 A[Catch: all -> 0x008c, TRY_LEAVE, TryCatch #2 {, blocks: (B:4:0x0003, B:8:0x000d, B:10:0x0019, B:13:0x001e, B:15:0x0022, B:32:0x0090, B:33:0x0093, B:36:0x0097, B:17:0x002c, B:19:0x006e, B:22:0x0076, B:25:0x007d, B:28:0x0086), top: B:42:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0090 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized java.util.ArrayList c(android.content.Context r9) {
        /*
            java.lang.Class<com.appodeal.ads.i> r0 = com.appodeal.ads.i.class
            monitor-enter(r0)
            java.util.ArrayList r1 = com.appodeal.ads.i.f6716h     // Catch: java.lang.Throwable -> La2
            boolean r2 = r1.isEmpty()     // Catch: java.lang.Throwable -> La2
            if (r2 != 0) goto Ld
            monitor-exit(r0)
            return r1
        Ld:
            android.content.res.AssetManager r2 = r9.getAssets()     // Catch: java.lang.Throwable -> La2
            java.lang.String r3 = "apd_adapters"
            java.lang.String[] r2 = r2.list(r3)     // Catch: java.lang.Throwable -> La2
            if (r2 == 0) goto L97
            int r3 = r2.length     // Catch: java.lang.Throwable -> La2
            if (r3 != 0) goto L1e
            goto L97
        L1e:
            int r1 = r2.length     // Catch: java.lang.Throwable -> La2
            r3 = 0
        L20:
            if (r3 >= r1) goto L93
            r4 = r2[r3]     // Catch: java.lang.Throwable -> La2
            java.lang.String r5 = ".apdnetwork"
            boolean r5 = r4.endsWith(r5)     // Catch: java.lang.Throwable -> La2
            if (r5 == 0) goto L90
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L8c
            android.content.res.AssetManager r6 = r9.getAssets()     // Catch: java.lang.Throwable -> L8c
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8c
            r7.<init>()     // Catch: java.lang.Throwable -> L8c
            java.lang.String r8 = "apd_adapters/"
            java.lang.StringBuilder r7 = r7.append(r8)     // Catch: java.lang.Throwable -> L8c
            java.lang.StringBuilder r4 = r7.append(r4)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L8c
            java.io.InputStream r4 = r6.open(r4)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r4 = a(r4)     // Catch: java.lang.Throwable -> L8c
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r4 = "name"
            java.lang.String r4 = r5.optString(r4)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r6 = "builder"
            java.lang.String r6 = r5.optString(r6)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r7 = "adapter_version"
            java.lang.String r7 = r5.optString(r7)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r8 = "types"
            org.json.JSONArray r5 = r5.optJSONArray(r8)     // Catch: java.lang.Throwable -> L8c
            boolean r8 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L8c
            if (r8 != 0) goto L83
            boolean r8 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> L8c
            if (r8 != 0) goto L83
            if (r5 == 0) goto L83
            int r8 = r5.length()     // Catch: java.lang.Throwable -> L8c
            if (r8 != 0) goto L7d
            goto L83
        L7d:
            com.appodeal.ads.i$c r8 = new com.appodeal.ads.i$c     // Catch: java.lang.Throwable -> L8c
            r8.<init>(r4, r6, r7, r5)     // Catch: java.lang.Throwable -> L8c
            goto L84
        L83:
            r8 = 0
        L84:
            if (r8 == 0) goto L90
            java.util.ArrayList r4 = com.appodeal.ads.i.f6716h     // Catch: java.lang.Throwable -> L8c
            r4.add(r8)     // Catch: java.lang.Throwable -> L8c
            goto L90
        L8c:
            r4 = move-exception
            com.appodeal.ads.utils.Log.log(r4)     // Catch: java.lang.Throwable -> La2
        L90:
            int r3 = r3 + 1
            goto L20
        L93:
            java.util.ArrayList r9 = com.appodeal.ads.i.f6716h     // Catch: java.lang.Throwable -> La2
            monitor-exit(r0)
            return r9
        L97:
            java.lang.String r9 = "SDK"
            java.lang.String r2 = "Initialize"
            java.lang.String r3 = "No adapters found in app assets"
            com.appodeal.ads.utils.Log.log(r9, r2, r3)     // Catch: java.lang.Throwable -> La2
            monitor-exit(r0)
            return r1
        La2:
            r9 = move-exception
            monitor-exit(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.i.c(android.content.Context):java.util.ArrayList");
    }

    public static synchronized void d(Context context) {
        synchronized (i.class) {
            AtomicBoolean atomicBoolean = k;
            if (atomicBoolean.get()) {
                return;
            }
            atomicBoolean.set(true);
            Iterator it = c(context).iterator();
            while (it.hasNext()) {
                c cVar = (c) it.next();
                for (int i2 = 0; i2 < cVar.f6727d.length(); i2++) {
                    String optString = cVar.f6727d.optString(i2);
                    AdType adType = "banner".equals(optString) ? AdType.Banner : Constants.PRETTY_MREC_NAME.equals(optString) ? AdType.Mrec : "rewarded_video".equals(optString) ? AdType.Rewarded : "interstitial".equals(optString) ? AdType.Interstitial : "video".equals(optString) ? AdType.Video : "native".equals(optString) ? AdType.Native : null;
                    if (adType != null) {
                        a(adType).f6717a.put(cVar.f6724a, Pair.create(cVar.f6725b, cVar.f6726c));
                    }
                }
            }
        }
    }

    public final Set<String> a() {
        Set<String> keySet = this.f6717a.keySet();
        keySet.removeAll(this.f6719c);
        return keySet;
    }

    public final synchronized void a(Context context) {
        synchronized (this.f6721e) {
            if (!this.f6721e.get()) {
                this.f6721e.set(true);
                new j(this, context).start();
            }
        }
    }

    public final void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!l && str == null) {
            throw new AssertionError();
        }
        this.f6719c.add(str);
        this.f6718b.remove(str);
    }

    public final void a(String str, AdNetworkBuilder adNetworkBuilder, b bVar) {
        if (this.f6719c.contains(str)) {
            if (adNetworkBuilder != null) {
                this.f6720d.put(str, adNetworkBuilder);
            }
            a(str);
            bVar.f6723a.countDown();
            return;
        }
        AdNetwork build = adNetworkBuilder.build();
        if (build != null) {
            this.f6718b.put(str, build);
            ArrayList arrayList = i;
            synchronized (arrayList) {
                if (!arrayList.contains(str)) {
                    com.appodeal.ads.utils.Log.log(LogConstants.KEY_NETWORK, LogConstants.EVENT_INFO, String.format("%s - ver. %s", n5.a(build.getName()), build.getVersion()), Log.LogLevel.verbose);
                    a(build);
                    com.appodeal.ads.utils.c.f7742a.addAll(ActivityRule.f7719b.getActivityClassNameArray(build.getAdActivityRules()));
                    arrayList.add(str);
                    UnifiedAppStateChangeListener appStateChangeListener = build.getAppStateChangeListener();
                    if (appStateChangeListener != null) {
                        j.put(str, appStateChangeListener);
                    }
                }
            }
            bVar.f6723a.countDown();
            return;
        }
        this.f6720d.put(str, adNetworkBuilder);
        a(str);
        bVar.f6723a.countDown();
    }

    public final AdNetwork b(String str) {
        return (AdNetwork) this.f6718b.get(str);
    }

    public final synchronized i b(Context context) {
        synchronized (this.f6722f) {
            if (this.f6722f.get()) {
                return this;
            }
            d(context);
            CountDownLatch countDownLatch = new CountDownLatch(this.f6717a.size());
            b bVar = new b(countDownLatch);
            for (Map.Entry entry : this.f6717a.entrySet()) {
                a((String) entry.getKey(), (String) ((Pair) entry.getValue()).first, bVar);
            }
            try {
                countDownLatch.await();
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            a(Constants.DEBUG_INTERSTITIAL, new d1.c(), bVar);
            this.f6722f.set(true);
            return this;
        }
    }

    public final Collection<AdNetwork> b() {
        return this.f6718b.values();
    }

    /* loaded from: classes.dex */
    public class a extends com.appodeal.ads.utils.c0 {
        @Override // com.appodeal.ads.utils.c0
        public final void a(Configuration configuration) {
            for (UnifiedAppStateChangeListener unifiedAppStateChangeListener : i.j.values()) {
                Activity activity = com.appodeal.ads.context.b.f6583b.f6584a.getActivity();
                unifiedAppStateChangeListener.onAppStateChanged(activity, AppState.ConfChanged, com.appodeal.ads.utils.c.a(activity));
            }
        }

        @Override // com.appodeal.ads.utils.c0
        public final void a(Activity activity, AppState appState) {
            for (UnifiedAppStateChangeListener unifiedAppStateChangeListener : i.j.values()) {
                unifiedAppStateChangeListener.onAppStateChanged(activity, appState, com.appodeal.ads.utils.c.a(activity));
            }
        }
    }

    public final void a(String str, String str2, b bVar) {
        if (this.f6719c.contains(str)) {
            a(str);
            bVar.f6723a.countDown();
            return;
        }
        try {
            String[] strArr = new String[1];
            try {
                Class.forName(str2, false, q4.class.getClassLoader());
                a(str, (AdNetworkBuilder) Class.forName(str2).newInstance(), bVar);
            } catch (ClassNotFoundException | NoClassDefFoundError unused) {
                a(str);
                bVar.f6723a.countDown();
                com.appodeal.ads.utils.Log.log(new com.appodeal.ads.utils.exception_handler.a(String.format("Failed to load classes for network: %s", n5.a(str.split("\\.")[0]))));
            }
        } catch (Exception e2) {
            com.appodeal.ads.utils.Log.log(e2);
            a(str);
            bVar.f6723a.countDown();
        }
    }
}
