package com.bykv.vk.openvk.preload.geckox;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.a.a.a;
import com.bykv.vk.openvk.preload.geckox.b;
import com.bykv.vk.openvk.preload.geckox.model.CheckRequestBodyModel;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bykv.vk.openvk.preload.geckox.net.INetWork;
import com.bykv.vk.openvk.preload.geckox.statistic.IStatisticMonitor;
import com.bykv.vk.openvk.preload.geckox.utils.f;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class GeckoHubImp {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static GeckoHubImp f8434a = new GeckoHubImp();
    }

    public static GeckoHubImp inst(Context context) {
        c.a(context);
        return a.f8434a;
    }

    private GeckoHubImp() {
    }

    public static void setRandomHost(String str) {
        c.a(str);
    }

    public void preload(String str, IStatisticMonitor iStatisticMonitor, Set<String> set, INetWork iNetWork) {
        c a2 = c.a();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        b.a aVar = new b.a(c.f8495b);
        aVar.f8477b = Arrays.asList("cca47107bfcbdb211d88f3385aeede40");
        aVar.f8478c = Arrays.asList("cca47107bfcbdb211d88f3385aeede40");
        aVar.i = 38L;
        aVar.k = str;
        aVar.j = "9999999.0.0";
        a.C0171a c0171a = new a.C0171a();
        c0171a.f8456a = 20;
        com.bykv.vk.openvk.preload.geckox.a.a.b bVar = com.bykv.vk.openvk.preload.geckox.a.a.b.f8461c;
        if (bVar == null) {
            bVar = com.bykv.vk.openvk.preload.geckox.a.a.b.f8459a;
        }
        c0171a.f8457b = bVar;
        aVar.f8483h = new com.bykv.vk.openvk.preload.geckox.a.a.a(c0171a, (byte) 0);
        aVar.m = c.f8494a;
        aVar.f8482g = false;
        aVar.l = c.f8496c;
        aVar.f8481f = iStatisticMonitor;
        aVar.f8476a = iNetWork;
        b bVar2 = new b(aVar, (byte) 0);
        a2.f8498d = iNetWork;
        List<String> list = bVar2.f8472e;
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException("access key empty");
        }
        Context context = bVar2.f8468a;
        if (context != null) {
            f.f8597a = context;
        }
        final com.bykv.vk.openvk.preload.geckox.a aVar2 = new com.bykv.vk.openvk.preload.geckox.a(bVar2);
        final HashMap hashMap = new HashMap();
        LinkedList linkedList = new LinkedList();
        for (String str2 : set) {
            linkedList.add(new CheckRequestBodyModel.TargetChannel(str2));
        }
        hashMap.put("cca47107bfcbdb211d88f3385aeede40", linkedList);
        if (TextUtils.isEmpty(RewardedVideo.VIDEO_MODE_DEFAULT)) {
            throw new IllegalArgumentException("groupType == null");
        }
        if (!aVar2.a()) {
            throw new IllegalArgumentException("deployments keys not in local keys");
        }
        if (aVar2.a(hashMap)) {
            b.b().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.a.1

                /* renamed from: b */
                final /* synthetic */ com.bykv.vk.openvk.preload.geckox.e.a f8441b = null;

                /* renamed from: c */
                final /* synthetic */ Map f8442c = null;

                /* JADX WARN: Removed duplicated region for block: B:182:0x0612  */
                /* JADX WARN: Removed duplicated region for block: B:187:0x064e A[Catch: all -> 0x0667, TryCatch #4 {all -> 0x0667, blocks: (B:185:0x063e, B:187:0x064e, B:189:0x0658, B:191:0x0662), top: B:201:0x063e }] */
                /* JADX WARN: Removed duplicated region for block: B:196:0x066d  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 1671
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.preload.geckox.a.AnonymousClass1.run():void");
                }
            });
            return;
        }
        throw new IllegalArgumentException("target keys not in deployments keys");
    }

    public com.bykv.vk.openvk.preload.falconx.loader.a getGeckoResLoader() {
        c.a();
        return c.b();
    }

    public void releaseGeckoResLoader(ILoader iLoader) {
        c.a();
        c.a(iLoader);
    }

    public WebResourceResponseModel findResAndMsg(ILoader iLoader, String str, String str2) {
        return c.a().a(iLoader, str, str2);
    }

    public WebResourceResponse findRes(ILoader iLoader, String str, String str2) {
        return c.a().a(iLoader, str, str2).getWebResourceResponse();
    }

    public int getResCount(ILoader iLoader, String str) {
        c.a();
        return c.a(iLoader, str);
    }

    public static void setThreadPoolExecutorCallback(IThreadPoolCallback iThreadPoolCallback) {
        b.a(iThreadPoolCallback);
    }
}
