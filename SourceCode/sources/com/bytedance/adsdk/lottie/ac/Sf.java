package com.bytedance.adsdk.lottie.ac;

import android.util.Pair;
/* compiled from: MutablePair.java */
/* loaded from: classes2.dex */
public class Sf<T> {
    T Qhi;
    T cJ;

    public void Qhi(T t, T t2) {
        this.Qhi = t;
        this.cJ = t2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            return cJ(pair.first, this.Qhi) && cJ(pair.second, this.cJ);
        }
        return false;
    }

    private static boolean cJ(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public int hashCode() {
        T t = this.Qhi;
        int hashCode = t == null ? 0 : t.hashCode();
        T t2 = this.cJ;
        return hashCode ^ (t2 != null ? t2.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.Qhi + " " + this.cJ + "}";
    }
}
