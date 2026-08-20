package com.bykv.vk.openvk.preload.geckox;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.net.INetWork;
import com.bykv.vk.openvk.preload.geckox.statistic.IStatisticMonitor;
import java.io.File;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* compiled from: GeckoConfig.java */
/* loaded from: classes2.dex */
public class b {
    private static IThreadPoolCallback q;
    private static ThreadPoolExecutor r;

    /* renamed from: a  reason: collision with root package name */
    public final Context f8468a;

    /* renamed from: b  reason: collision with root package name */
    final com.bykv.vk.openvk.preload.geckox.i.a f8469b;

    /* renamed from: c  reason: collision with root package name */
    public final IStatisticMonitor f8470c;

    /* renamed from: d  reason: collision with root package name */
    public final INetWork f8471d;

    /* renamed from: e  reason: collision with root package name */
    public final List<String> f8472e;

    /* renamed from: f  reason: collision with root package name */
    public final List<String> f8473f;

    /* renamed from: g  reason: collision with root package name */
    final com.bykv.vk.openvk.preload.geckox.a.a.a f8474g;

    /* renamed from: h  reason: collision with root package name */
    public final Long f8475h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final File n;
    public final boolean o;
    public JSONObject p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ b(a aVar, byte b2) {
        this(aVar);
    }

    private b(a aVar) {
        Context context = aVar.f8479d;
        this.f8468a = context;
        if (context == null) {
            throw new IllegalArgumentException("context == null");
        }
        List<String> list = aVar.f8477b;
        this.f8472e = list;
        this.f8473f = aVar.f8478c;
        this.f8469b = aVar.f8480e;
        this.f8474g = aVar.f8483h;
        Long l = aVar.i;
        this.f8475h = l;
        if (TextUtils.isEmpty(aVar.j)) {
            this.i = com.bykv.vk.openvk.preload.geckox.utils.a.a(context);
        } else {
            this.i = aVar.j;
        }
        String str = aVar.k;
        this.j = str;
        this.l = aVar.n;
        this.m = aVar.o;
        if (aVar.m == null) {
            this.n = new File(context.getFilesDir(), "gecko_offline_res_x");
        } else {
            this.n = aVar.m;
        }
        String str2 = aVar.l;
        this.k = str2;
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("host == null");
        }
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException("access key empty");
        }
        if (l == null) {
            throw new IllegalArgumentException("appId == null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("deviceId key empty");
        }
        this.f8471d = aVar.f8476a;
        this.f8470c = aVar.f8481f;
        this.o = aVar.f8482g;
    }

    public static Executor a() {
        return c();
    }

    public static Executor b() {
        return c();
    }

    public static ExecutorService c() {
        IThreadPoolCallback iThreadPoolCallback = q;
        ExecutorService threadPool = iThreadPoolCallback != null ? iThreadPoolCallback.getThreadPool() : null;
        if (threadPool != null) {
            return threadPool;
        }
        if (r == null) {
            synchronized (b.class) {
                if (r == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 2, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue());
                    r = threadPoolExecutor;
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                }
            }
        }
        return r;
    }

    public static void a(IThreadPoolCallback iThreadPoolCallback) {
        q = iThreadPoolCallback;
    }

    /* compiled from: GeckoConfig.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        INetWork f8476a;

        /* renamed from: b  reason: collision with root package name */
        List<String> f8477b;

        /* renamed from: c  reason: collision with root package name */
        List<String> f8478c;

        /* renamed from: d  reason: collision with root package name */
        Context f8479d;

        /* renamed from: e  reason: collision with root package name */
        com.bykv.vk.openvk.preload.geckox.i.a f8480e;

        /* renamed from: f  reason: collision with root package name */
        IStatisticMonitor f8481f;

        /* renamed from: g  reason: collision with root package name */
        boolean f8482g = true;

        /* renamed from: h  reason: collision with root package name */
        com.bykv.vk.openvk.preload.geckox.a.a.a f8483h;
        Long i;
        String j;
        String k;
        String l;
        File m;
        String n;
        String o;

        public a(Context context) {
            this.f8479d = context.getApplicationContext();
        }
    }
}
