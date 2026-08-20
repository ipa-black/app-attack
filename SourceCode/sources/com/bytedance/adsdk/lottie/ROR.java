package com.bytedance.adsdk.lottie;

import android.graphics.Rect;
import android.util.LongSparseArray;
import android.util.SparseArray;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* compiled from: LottieComposition.java */
/* loaded from: classes2.dex */
public class ROR {
    private float ABk;
    private Map<String, WAv> CJ;
    private float Gm;
    private SparseArray<com.bytedance.adsdk.lottie.ac.fl> ROR;
    private LongSparseArray<com.bytedance.adsdk.lottie.ac.ac.fl> Sf;
    private List<com.bytedance.adsdk.lottie.ac.ROR> Tgh;
    private Rect WAv;
    private Map<String, List<com.bytedance.adsdk.lottie.ac.ac.fl>> ac;
    private Map<String, com.bytedance.adsdk.lottie.ac.ac> fl;
    private List<com.bytedance.adsdk.lottie.ac.ac.fl> hm;
    private boolean iMK;
    private float zc;
    private final kYc Qhi = new kYc();
    private final HashSet<String> cJ = new HashSet<>();
    private int pA = 0;

    public void Qhi(Rect rect, float f2, float f3, float f4, List<com.bytedance.adsdk.lottie.ac.ac.fl> list, LongSparseArray<com.bytedance.adsdk.lottie.ac.ac.fl> longSparseArray, Map<String, List<com.bytedance.adsdk.lottie.ac.ac.fl>> map, Map<String, WAv> map2, SparseArray<com.bytedance.adsdk.lottie.ac.fl> sparseArray, Map<String, com.bytedance.adsdk.lottie.ac.ac> map3, List<com.bytedance.adsdk.lottie.ac.ROR> list2) {
        this.WAv = rect;
        this.Gm = f2;
        this.zc = f3;
        this.ABk = f4;
        this.hm = list;
        this.Sf = longSparseArray;
        this.ac = map;
        this.CJ = map2;
        this.ROR = sparseArray;
        this.fl = map3;
        this.Tgh = list2;
    }

    public void Qhi(String str) {
        this.cJ.add(str);
    }

    public void Qhi(boolean z) {
        this.iMK = z;
    }

    public void Qhi(int i) {
        this.pA += i;
    }

    public boolean Qhi() {
        return this.iMK;
    }

    public int cJ() {
        return this.pA;
    }

    public void cJ(boolean z) {
        this.Qhi.Qhi(z);
    }

    public kYc ac() {
        return this.Qhi;
    }

    public com.bytedance.adsdk.lottie.ac.ac.fl Qhi(long j) {
        return this.Sf.get(j);
    }

    public Rect CJ() {
        return this.WAv;
    }

    public float fl() {
        return (ABk() / this.ABk) * 1000.0f;
    }

    public float Tgh() {
        return this.Gm;
    }

    public float ROR() {
        return this.zc;
    }

    public float Qhi(float f2) {
        return com.bytedance.adsdk.lottie.Tgh.Tgh.Qhi(this.Gm, this.zc, f2);
    }

    public float Sf() {
        return this.ABk;
    }

    public List<com.bytedance.adsdk.lottie.ac.ac.fl> hm() {
        return this.hm;
    }

    public List<com.bytedance.adsdk.lottie.ac.ac.fl> cJ(String str) {
        return this.ac.get(str);
    }

    public SparseArray<com.bytedance.adsdk.lottie.ac.fl> WAv() {
        return this.ROR;
    }

    public Map<String, com.bytedance.adsdk.lottie.ac.ac> Gm() {
        return this.fl;
    }

    public com.bytedance.adsdk.lottie.ac.ROR ac(String str) {
        int size = this.Tgh.size();
        for (int i = 0; i < size; i++) {
            com.bytedance.adsdk.lottie.ac.ROR ror = this.Tgh.get(i);
            if (ror.Qhi(str)) {
                return ror;
            }
        }
        return null;
    }

    public Map<String, WAv> zc() {
        return this.CJ;
    }

    public float ABk() {
        return this.zc - this.Gm;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        for (com.bytedance.adsdk.lottie.ac.ac.fl flVar : this.hm) {
            sb.append(flVar.Qhi("\t"));
        }
        return sb.toString();
    }
}
