package com.bytedance.sdk.component.Tgh.Qhi.Qhi;

import android.text.TextUtils;
import com.bytedance.sdk.component.Tgh.Qhi.hm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* compiled from: CacheManager.java */
/* loaded from: classes2.dex */
public class cJ extends Qhi {
    private final fl Qhi;
    private final Queue<String> ac;
    private final ac cJ;

    public cJ() {
        ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
        this.ac = concurrentLinkedQueue;
        this.Qhi = new ROR(concurrentLinkedQueue);
        this.cJ = new ac();
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public synchronized void Qhi(com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh, int i) {
        fl flVar;
        if (i != 5) {
            if (hm.ROR().hpZ().Qhi(hm.ROR().Tgh()) && (flVar = this.Qhi) != null && tgh != null) {
                flVar.Qhi(tgh, i);
            }
        }
        ac acVar = this.cJ;
        if (acVar != null && tgh != null) {
            acVar.Qhi(tgh, i);
        }
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public synchronized void Qhi(int i, List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> list) {
        for (com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh : list) {
            this.ac.remove(tgh.ac());
        }
        fl flVar = this.Qhi;
        if (flVar != null) {
            flVar.Qhi(i, list);
        }
        ac acVar = this.cJ;
        if (acVar != null) {
            acVar.Qhi(i, list);
        }
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.lang.Object] */
    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public synchronized List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi(int i, int i2, List<String> list) {
        List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> cJ;
        List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi = this.Qhi.Qhi(i, i2, list);
        if (Qhi != null && Qhi.size() != 0) {
            Qhi.size();
            if ((i == 1 || i == 2) && (cJ = this.cJ.cJ(Qhi.get(0), Qhi.size())) != null && cJ.size() != 0) {
                cJ.size();
                HashMap hashMap = new HashMap();
                for (com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh : cJ) {
                    hashMap.put(tgh.ac(), tgh);
                }
                ArrayList arrayList = new ArrayList(this.ac);
                for (com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh2 : cJ) {
                    Iterator it = arrayList.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (TextUtils.equals(tgh2.ac(), (String) it.next())) {
                                hashMap.remove(tgh2.ac());
                                break;
                            }
                        }
                    }
                }
                for (com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh3 : Qhi) {
                    hashMap.put(tgh3.ac(), tgh3);
                }
                Qhi.clear();
                for (String str : hashMap.keySet()) {
                    Qhi.add(hashMap.get(str));
                }
                cJ.clear();
            }
        } else {
            ArrayList<String> arrayList2 = new ArrayList(this.ac);
            if (list != null && !list.isEmpty()) {
                arrayList2.addAll(list);
            }
            List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi2 = this.cJ.Qhi(i, i2, arrayList2);
            if (Qhi2 != null && Qhi2.size() != 0) {
                HashMap hashMap2 = new HashMap();
                for (com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh4 : Qhi2) {
                    hashMap2.put(tgh4.ac(), tgh4);
                }
                arrayList2.size();
                if (arrayList2.size() != 0) {
                    for (String str2 : arrayList2) {
                        if (hashMap2.get(str2) != null) {
                            hashMap2.remove(str2);
                        }
                    }
                }
                Qhi2.clear();
                for (String str3 : hashMap2.keySet()) {
                    Qhi2.add(hashMap2.get(str3));
                }
            }
            Qhi = Qhi2;
        }
        if (Qhi != null && !Qhi.isEmpty()) {
            for (com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh5 : Qhi) {
                this.ac.offer(tgh5.ac());
            }
            return Qhi;
        }
        return new ArrayList();
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public synchronized boolean Qhi(int i, boolean z) {
        if (this.Qhi.Qhi(i, z)) {
            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.lB(), 1);
            return true;
        } else if ((i == 1 || i == 2) && this.cJ.Qhi(i, z)) {
            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.lG(), 1);
            return true;
        } else {
            return false;
        }
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public void Qhi(int i, long j) {
        this.cJ.Qhi(i, j);
        this.Qhi.Qhi(i, j);
    }
}
