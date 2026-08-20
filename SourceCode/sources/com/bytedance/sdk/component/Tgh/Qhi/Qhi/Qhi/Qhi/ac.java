package com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: DBInsertMemRepo.java */
/* loaded from: classes2.dex */
public abstract class ac {
    private final Context Qhi;
    protected final List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> cJ = new ArrayList();
    private boolean ac = false;
    private final Runnable CJ = new Runnable() { // from class: com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.ac.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (ac.this) {
                if (ac.this.cJ.isEmpty()) {
                    ac.this.ac = false;
                    return;
                }
                ArrayList arrayList = new ArrayList(ac.this.cJ);
                ac.this.cJ.clear();
                ac.this.ac = false;
                ac.this.CJ(arrayList);
            }
        }
    };

    public abstract String cJ();

    public ac(Context context) {
        this.Qhi = context;
    }

    private void Qhi() {
        if (this.ac) {
            return;
        }
        com.bytedance.sdk.component.Tgh.Qhi.ROR.Qhi.Qhi().postDelayed(this.CJ, com.bytedance.sdk.component.Tgh.Qhi.ROR.Qhi.cJ());
        this.ac = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ac(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            Iterator<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> it = this.cJ.iterator();
            while (it.hasNext()) {
                com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh next = it.next();
                if (next != null) {
                    String ac = next.ac();
                    if (!TextUtils.isEmpty(ac) && list.contains(ac)) {
                        it.remove();
                    }
                }
            }
        } catch (Throwable th) {
            cJ();
            th.getMessage();
        }
    }

    public synchronized void Qhi(com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh) {
        if (tgh.ROR() != null && !TextUtils.isEmpty(tgh.ac())) {
            this.cJ.add(tgh);
            Qhi();
        }
    }

    public Context fl() {
        return this.Qhi;
    }

    public void CJ(List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> list) {
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.ac.Qhi(fl(), cJ(), list);
    }
}
