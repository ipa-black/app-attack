package com.bykv.vk.openvk.component.video.Qhi.cJ;

import android.content.Context;
import android.util.Log;
import com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.ac;
import java.util.Set;
/* compiled from: Proxy.java */
/* loaded from: classes2.dex */
public class Tgh {
    public static volatile boolean CJ;
    private static volatile Context Gm;
    static volatile com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.cJ Qhi;
    static volatile boolean Tgh;
    private static volatile com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac WAv;
    static volatile com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.ac cJ;
    public static volatile Integer hm;
    public static final boolean ac = com.bytedance.sdk.component.utils.ABk.CJ();
    static volatile boolean fl = true;
    static volatile int ROR = 0;
    public static volatile int Sf = 3;

    public static Context Qhi() {
        return Gm;
    }

    public static void Qhi(boolean z) {
        fl = z;
    }

    public static void cJ(boolean z) {
        Tgh = z;
    }

    public static void Qhi(int i) {
        ROR = i;
    }

    public static void Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.ac acVar, Context context) {
        if (acVar == null || context == null) {
            throw new IllegalArgumentException("DiskLruCache and Context can't be null !!!");
        }
        Gm = context.getApplicationContext();
        if (cJ != null) {
            return;
        }
        if (Qhi != null) {
            throw null;
        }
        cJ = acVar;
        WAv = com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac.Qhi(context);
        cJ.Qhi(new ac.Qhi() { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.Tgh.1
            @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.ac.Qhi
            public void Qhi(String str) {
                if (Tgh.ac) {
                    Log.i("TAG_PROXY_DiskLruCache", "new cache created: ".concat(String.valueOf(str)));
                }
            }

            @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.ac.Qhi
            public void Qhi(Set<String> set) {
                Tgh.WAv.Qhi(set, 0);
                if (Tgh.ac) {
                    Log.i("TAG_PROXY_DiskLruCache", "cache file removed, ".concat(String.valueOf(set)));
                }
            }
        });
        ROR Qhi2 = ROR.Qhi();
        Qhi2.Qhi(acVar);
        Qhi2.Qhi(WAv);
        fl ac2 = fl.ac();
        ac2.Qhi(acVar);
        ac2.Qhi(WAv);
    }

    public static com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.ac cJ() {
        return cJ;
    }

    public static com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.cJ ac() {
        return Qhi;
    }
}
