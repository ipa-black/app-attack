package com.applovin.impl.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.applovin.impl.sdk.utils.CollectionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class AppLovinBroadcastManager {

    /* renamed from: f  reason: collision with root package name */
    private static AppLovinBroadcastManager f5375f;

    /* renamed from: g  reason: collision with root package name */
    private static final Object f5376g = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final Context f5377a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Receiver, ArrayList<b>> f5378b = CollectionUtils.map();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, ArrayList<b>> f5379c = CollectionUtils.map();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<a> f5380d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    private final Handler f5381e = new Handler(Looper.getMainLooper()) { // from class: com.applovin.impl.sdk.AppLovinBroadcastManager.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                AppLovinBroadcastManager.this.a();
            } else {
                super.handleMessage(message);
            }
        }
    };

    /* loaded from: classes.dex */
    public interface Receiver {
        void onReceive(Context context, Intent intent, Map<String, Object> map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final Intent f5383a;

        /* renamed from: b  reason: collision with root package name */
        final Map<String, Object> f5384b;

        /* renamed from: c  reason: collision with root package name */
        final List<b> f5385c;

        a(Intent intent, Map<String, Object> map, List<b> list) {
            this.f5383a = intent;
            this.f5384b = map;
            this.f5385c = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final IntentFilter f5386a;

        /* renamed from: b  reason: collision with root package name */
        final Receiver f5387b;

        /* renamed from: c  reason: collision with root package name */
        boolean f5388c;

        /* renamed from: d  reason: collision with root package name */
        boolean f5389d;

        b(IntentFilter intentFilter, Receiver receiver) {
            this.f5386a = intentFilter;
            this.f5387b = receiver;
        }
    }

    private AppLovinBroadcastManager(Context context) {
        this.f5377a = context;
    }

    private List<b> a(Intent intent) {
        synchronized (this.f5378b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f5377a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            ArrayList<b> arrayList = this.f5379c.get(action);
            if (arrayList == null) {
                return null;
            }
            ArrayList<b> arrayList2 = null;
            for (b bVar : arrayList) {
                if (!bVar.f5388c && bVar.f5386a.match(action, resolveTypeIfNeeded, scheme, data, categories, "AppLovinBroadcastManager") >= 0) {
                    ArrayList arrayList3 = arrayList2 == null ? new ArrayList() : arrayList2;
                    arrayList3.add(bVar);
                    bVar.f5388c = true;
                    arrayList2 = arrayList3;
                }
            }
            if (arrayList2 == null) {
                return null;
            }
            for (b bVar2 : arrayList2) {
                bVar2.f5388c = false;
            }
            return arrayList2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        int size;
        a[] aVarArr;
        while (true) {
            synchronized (this.f5378b) {
                size = this.f5380d.size();
                if (size <= 0) {
                    return;
                }
                aVarArr = new a[size];
                this.f5380d.toArray(aVarArr);
                this.f5380d.clear();
            }
            for (int i = 0; i < size; i++) {
                a aVar = aVarArr[i];
                if (aVar != null) {
                    for (b bVar : aVar.f5385c) {
                        if (bVar != null && !bVar.f5389d) {
                            bVar.f5387b.onReceive(this.f5377a, aVar.f5383a, aVar.f5384b);
                        }
                    }
                }
            }
        }
    }

    public static AppLovinBroadcastManager getInstance(Context context) {
        AppLovinBroadcastManager appLovinBroadcastManager;
        synchronized (f5376g) {
            if (f5375f == null) {
                f5375f = new AppLovinBroadcastManager(context.getApplicationContext());
            }
            appLovinBroadcastManager = f5375f;
        }
        return appLovinBroadcastManager;
    }

    public void registerReceiver(Receiver receiver, IntentFilter intentFilter) {
        synchronized (this.f5378b) {
            b bVar = new b(intentFilter, receiver);
            ArrayList<b> arrayList = this.f5378b.get(receiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.f5378b.put(receiver, arrayList);
            }
            arrayList.add(bVar);
            Iterator<String> actionsIterator = intentFilter.actionsIterator();
            while (actionsIterator.hasNext()) {
                String next = actionsIterator.next();
                ArrayList<b> arrayList2 = this.f5379c.get(next);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.f5379c.put(next, arrayList2);
                }
                arrayList2.add(bVar);
            }
        }
    }

    public boolean sendBroadcast(Intent intent, Map<String, Object> map) {
        synchronized (this.f5378b) {
            List<b> a2 = a(intent);
            if (a2 == null) {
                return false;
            }
            this.f5380d.add(new a(intent, map, a2));
            if (!this.f5381e.hasMessages(1)) {
                this.f5381e.sendEmptyMessage(1);
            }
            return true;
        }
    }

    public void sendBroadcastSync(Intent intent, Map<String, Object> map) {
        List<b> a2 = a(intent);
        if (a2 == null) {
            return;
        }
        for (b bVar : a2) {
            if (!bVar.f5389d) {
                bVar.f5387b.onReceive(this.f5377a, intent, map);
            }
        }
    }

    public void sendBroadcastSyncWithPendingBroadcasts(Intent intent, Map<String, Object> map) {
        if (sendBroadcast(intent, map)) {
            a();
        }
    }

    public boolean sendBroadcastWithAdObject(String str, Object obj) {
        Map<String, Object> map = CollectionUtils.map(1);
        map.put("ad", obj);
        return sendBroadcast(new Intent(str), map);
    }

    public void unregisterReceiver(Receiver receiver) {
        synchronized (this.f5378b) {
            ArrayList<b> remove = this.f5378b.remove(receiver);
            if (remove == null) {
                return;
            }
            for (b bVar : remove) {
                bVar.f5389d = true;
                Iterator<String> actionsIterator = bVar.f5386a.actionsIterator();
                while (actionsIterator.hasNext()) {
                    String next = actionsIterator.next();
                    ArrayList<b> arrayList = this.f5379c.get(next);
                    if (arrayList != null) {
                        Iterator<b> it = arrayList.iterator();
                        while (it.hasNext()) {
                            if (it.next().f5387b == receiver) {
                                bVar.f5389d = true;
                                it.remove();
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f5379c.remove(next);
                        }
                    }
                }
            }
        }
    }
}
