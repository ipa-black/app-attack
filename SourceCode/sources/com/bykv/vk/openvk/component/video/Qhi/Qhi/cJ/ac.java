package com.bykv.vk.openvk.component.video.Qhi.Qhi.cJ;

import android.content.Context;
import com.bykv.vk.openvk.component.video.api.fl.Qhi;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: VideoFileManager.java */
/* loaded from: classes2.dex */
public class ac {
    public static final ConcurrentHashMap<String, cJ> Qhi = new ConcurrentHashMap<>();

    public static synchronized void Qhi(Context context, com.bykv.vk.openvk.component.video.api.ac.ac acVar, Qhi.InterfaceC0167Qhi interfaceC0167Qhi) {
        synchronized (ac.class) {
            if (acVar == null) {
                return;
            }
            ConcurrentHashMap<String, cJ> concurrentHashMap = Qhi;
            cJ cJVar = concurrentHashMap.get(acVar.iMK());
            if (cJVar == null) {
                cJVar = new cJ(context, acVar);
                concurrentHashMap.put(acVar.iMK(), cJVar);
                new Object[]{"preloadVideo:  cache size = ", Integer.valueOf(acVar.ac()), acVar.iMK()};
            }
            cJVar.Qhi(interfaceC0167Qhi);
            new Object[]{"preloadVideo:  cache size = ", Integer.valueOf(acVar.ac()), acVar.iMK()};
        }
    }

    public static synchronized void Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        synchronized (ac.class) {
            cJ remove = Qhi.remove(acVar.iMK());
            if (remove != null) {
                remove.Qhi(true);
            }
            new Object[]{"removePreload:  cache size = ", Integer.valueOf(acVar.ac()), acVar.iMK()};
        }
    }
}
