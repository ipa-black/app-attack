package com.bykv.vk.openvk.component.video.api.ac;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.HashMap;
import org.json.JSONObject;
/* compiled from: VideoUrlModel.java */
/* loaded from: classes2.dex */
public class ac implements Serializable {
    private int ABk;
    public int CJ;
    private String Gm;
    private boolean HzH;
    public String Qhi;
    private String ROR;
    private cJ Tgh;
    public int cJ;
    private cJ fl;
    private boolean hpZ;
    private String iMK;
    private int kYc;
    private long pA;
    private int tP;
    private int zc;
    private int Sf = 204800;
    private int hm = 0;
    private int WAv = 0;
    public final HashMap<String, Object> ac = new HashMap<>();
    private int MQ = 10000;
    private int qMt = 10000;
    private int EBS = 10000;
    private int bxS = 0;
    private JSONObject Dww = new JSONObject();

    public ac(String str, cJ cJVar, cJ cJVar2, int i, int i2) {
        this.kYc = 0;
        this.tP = 0;
        this.ROR = str;
        this.fl = cJVar;
        this.Tgh = cJVar2;
        this.kYc = i;
        this.tP = i2;
    }

    public int Qhi() {
        return this.Dww.optInt("pitaya_cache_size", 0);
    }

    public String cJ() {
        return this.ROR;
    }

    public void Qhi(String str) {
        this.ROR = str;
    }

    public int ac() {
        if (Gm()) {
            return this.Tgh.pA();
        }
        cJ cJVar = this.fl;
        if (cJVar != null) {
            return cJVar.pA();
        }
        return 0;
    }

    public boolean CJ() {
        return this.HzH;
    }

    public void cJ(String str) {
        this.Gm = str;
    }

    public int fl() {
        return this.zc;
    }

    public void Qhi(int i) {
        this.zc = i;
    }

    public int Tgh() {
        return this.ABk;
    }

    public void cJ(int i) {
        this.ABk = i;
    }

    public void ac(String str) {
        this.iMK = str;
    }

    public long ROR() {
        return this.pA;
    }

    public void Qhi(long j) {
        this.pA = j;
    }

    public boolean Sf() {
        return this.hpZ;
    }

    public void Qhi(boolean z) {
        this.hpZ = z;
    }

    public long hm() {
        if (Gm()) {
            return this.Tgh.fl();
        }
        cJ cJVar = this.fl;
        if (cJVar != null) {
            return cJVar.fl();
        }
        return 0L;
    }

    public boolean WAv() {
        if (Gm()) {
            return this.Tgh.qMt();
        }
        cJ cJVar = this.fl;
        if (cJVar != null) {
            return cJVar.qMt();
        }
        return true;
    }

    public void CJ(String str) {
        this.Qhi = str;
    }

    public void ac(int i) {
        this.cJ = i;
    }

    public boolean Gm() {
        cJ cJVar;
        return this.tP == 1 && (cJVar = this.Tgh) != null && !TextUtils.isEmpty(cJVar.Gm()) && (com.bykv.vk.openvk.component.video.api.ac.Tgh() == 2 || this.kYc == 1);
    }

    public float zc() {
        if (Gm()) {
            return this.Tgh.Sf();
        }
        cJ cJVar = this.fl;
        if (cJVar != null) {
            return cJVar.Sf();
        }
        return -1.0f;
    }

    public String ABk() {
        if (Gm()) {
            return this.Tgh.Gm();
        }
        cJ cJVar = this.fl;
        if (cJVar != null) {
            return cJVar.Gm();
        }
        return null;
    }

    public String iMK() {
        if (Gm()) {
            return this.Tgh.iMK();
        }
        cJ cJVar = this.fl;
        if (cJVar != null) {
            return cJVar.iMK();
        }
        return null;
    }

    public int pA() {
        return this.kYc;
    }

    public synchronized void Qhi(String str, Object obj) {
        this.ac.put(str, obj);
    }

    public synchronized Object fl(String str) {
        return this.ac.get(str);
    }

    public int hpZ() {
        return this.MQ;
    }

    public void CJ(int i) {
        this.MQ = i;
    }

    public int HzH() {
        return this.qMt;
    }

    public void fl(int i) {
        this.qMt = i;
    }

    public int kYc() {
        return this.EBS;
    }

    public void Tgh(int i) {
        this.EBS = i;
    }

    public int tP() {
        return this.bxS;
    }

    public void ROR(int i) {
        this.bxS = i;
    }

    public cJ MQ() {
        return this.fl;
    }

    public cJ qMt() {
        return this.Tgh;
    }
}
