package com.bytedance.adsdk.lottie;

import android.util.Pair;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* compiled from: PerformanceTracker.java */
/* loaded from: classes2.dex */
public class kYc {
    private boolean Qhi = false;
    private final Set<Object> cJ = new Qhi();
    private final Map<String, com.bytedance.adsdk.lottie.Tgh.fl> ac = new HashMap();
    private final Comparator<Pair<String, Float>> CJ = new Comparator<Pair<String, Float>>() { // from class: com.bytedance.adsdk.lottie.kYc.1
        @Override // java.util.Comparator
        /* renamed from: Qhi */
        public int compare(Pair<String, Float> pair, Pair<String, Float> pair2) {
            float floatValue = ((Float) pair.second).floatValue();
            float floatValue2 = ((Float) pair2.second).floatValue();
            if (floatValue2 > floatValue) {
                return 1;
            }
            return floatValue > floatValue2 ? -1 : 0;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(boolean z) {
        this.Qhi = z;
    }

    public void Qhi(String str, float f2) {
        if (this.Qhi) {
            com.bytedance.adsdk.lottie.Tgh.fl flVar = this.ac.get(str);
            if (flVar == null) {
                flVar = new com.bytedance.adsdk.lottie.Tgh.fl();
                this.ac.put(str, flVar);
            }
            flVar.Qhi(f2);
            if (str.equals("__container")) {
                Iterator<Object> it = this.cJ.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            }
        }
    }
}
