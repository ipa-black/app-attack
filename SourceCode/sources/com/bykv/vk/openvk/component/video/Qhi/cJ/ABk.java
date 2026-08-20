package com.bykv.vk.openvk.component.video.Qhi.cJ;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
/* compiled from: Urls.java */
/* loaded from: classes2.dex */
public class ABk {
    private static final Set<String> Qhi = new HashSet();
    private static final Set<String> cJ = new HashSet();
    private final int CJ;
    private final int ROR;
    private int Tgh;
    private final ArrayList<Qhi> ac;
    private int fl = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ABk(List<String> list) {
        int i;
        if (list.isEmpty()) {
            throw new IllegalArgumentException("urls can't be empty");
        }
        int size = list.size();
        this.CJ = size;
        this.ac = new ArrayList<>(size);
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (String str : list) {
            Qhi qhi = new Qhi(str);
            if (Qhi.contains(str)) {
                arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                arrayList2.add(qhi);
            } else if (cJ.contains(str)) {
                arrayList = arrayList == null ? new ArrayList() : arrayList;
                arrayList.add(qhi);
            } else {
                this.ac.add(qhi);
            }
        }
        if (arrayList != null) {
            this.ac.addAll(arrayList);
        }
        if (arrayList2 != null) {
            this.ac.addAll(arrayList2);
        }
        Integer num = Tgh.hm;
        if (num == null || num.intValue() <= 0) {
            i = this.CJ >= 2 ? 1 : 2;
        } else {
            i = num.intValue();
        }
        this.ROR = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ABk(String str) {
        ArrayList<Qhi> arrayList = new ArrayList<>(1);
        this.ac = arrayList;
        arrayList.add(new Qhi(str));
        this.CJ = 1;
        this.ROR = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean Qhi() {
        return this.Tgh < this.ROR;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Qhi cJ() {
        if (!Qhi()) {
            throw new NoSuchElementException();
        }
        int i = this.fl + 1;
        if (i >= this.CJ - 1) {
            this.fl = -1;
            this.Tgh++;
        } else {
            this.fl = i;
        }
        Qhi qhi = this.ac.get(i);
        qhi.cJ = (this.Tgh * this.CJ) + this.fl;
        return qhi;
    }

    /* compiled from: Urls.java */
    /* loaded from: classes2.dex */
    public class Qhi {
        final String Qhi;
        int cJ;

        Qhi(String str) {
            this.Qhi = str;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void Qhi() {
            ABk.Qhi.add(this.Qhi);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void cJ() {
            ABk.cJ.add(this.Qhi);
        }

        public String toString() {
            return this.Qhi;
        }
    }
}
