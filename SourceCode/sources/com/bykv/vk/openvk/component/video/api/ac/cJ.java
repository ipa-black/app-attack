package com.bykv.vk.openvk.component.video.api.ac;

import android.text.TextUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONObject;
/* compiled from: VideoInfo.java */
/* loaded from: classes2.dex */
public class cJ {
    private int ABk;
    private double CJ;
    private double Gm;
    private int Qhi;
    private String ROR;
    private String Sf;
    private String Tgh;
    private String WAv;
    private long ac;
    private int cJ;
    private String fl;
    private String hm;
    private int zc;
    private float iMK = -1.0f;
    private int pA = 0;
    private int hpZ = 0;
    private int HzH = 0;
    private int kYc = 0;
    private int tP = 307200;
    private int MQ = 1;

    public int Qhi() {
        return this.zc;
    }

    public void Qhi(int i) {
        this.zc = i;
    }

    public int cJ() {
        return this.Qhi;
    }

    public void cJ(int i) {
        this.Qhi = i;
    }

    public int ac() {
        return this.cJ;
    }

    public void ac(int i) {
        this.cJ = i;
    }

    public int CJ() {
        return this.ABk;
    }

    public void CJ(int i) {
        this.ABk = i;
    }

    public long fl() {
        return this.ac;
    }

    public void Qhi(long j) {
        this.ac = j;
    }

    public double Tgh() {
        return this.CJ;
    }

    public void Qhi(double d2) {
        this.CJ = d2;
    }

    public double ROR() {
        return this.Gm;
    }

    public float Sf() {
        return this.iMK;
    }

    public String hm() {
        return this.fl;
    }

    public void Qhi(String str) {
        this.fl = str;
    }

    public String WAv() {
        return this.Tgh;
    }

    public void cJ(String str) {
        this.Tgh = str;
    }

    public String Gm() {
        return this.ROR;
    }

    public void ac(String str) {
        this.ROR = str;
    }

    public String zc() {
        return this.Sf;
    }

    public void CJ(String str) {
        this.Sf = str;
    }

    public String ABk() {
        return this.hm;
    }

    public void fl(String str) {
        this.hm = str;
    }

    public String iMK() {
        if (TextUtils.isEmpty(this.WAv)) {
            this.WAv = com.bykv.vk.openvk.component.video.api.Tgh.cJ.Qhi(this.ROR);
        }
        return this.WAv;
    }

    public void Tgh(String str) {
        this.WAv = str;
    }

    public int pA() {
        if (this.tP < 0) {
            this.tP = 307200;
        }
        long j = this.ac;
        if (this.tP > j) {
            this.tP = (int) j;
        }
        return this.tP;
    }

    public void fl(int i) {
        this.tP = i;
    }

    public int hpZ() {
        return this.HzH;
    }

    public void Tgh(int i) {
        this.HzH = i;
    }

    public int HzH() {
        return this.kYc;
    }

    public void ROR(int i) {
        this.kYc = i;
    }

    public JSONObject kYc() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cover_height", cJ());
            jSONObject.put("cover_url", WAv());
            jSONObject.put("cover_width", ac());
            jSONObject.put("endcard", zc());
            jSONObject.put("file_hash", iMK());
            jSONObject.put("resolution", hm());
            jSONObject.put("size", fl());
            jSONObject.put("video_duration", Tgh());
            jSONObject.put("video_url", Gm());
            jSONObject.put("playable_download_url", ABk());
            jSONObject.put("if_playable_loading_show", tP());
            jSONObject.put("remove_loading_page_type", MQ());
            jSONObject.put("fallback_endcard_judge", Qhi());
            jSONObject.put("video_preload_size", pA());
            jSONObject.put("reward_video_cached_type", hpZ());
            jSONObject.put("execute_cached_type", HzH());
            jSONObject.put("endcard_render", CJ());
            jSONObject.put("replay_time", EBS());
            jSONObject.put("play_speed_ratio", Sf());
            if (ROR() > 0.0d) {
                jSONObject.put(TtmlNode.START, ROR());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public int tP() {
        return this.pA;
    }

    public void Sf(int i) {
        this.pA = i;
    }

    public int MQ() {
        return this.hpZ;
    }

    public void hm(int i) {
        this.hpZ = i;
    }

    public boolean qMt() {
        return this.HzH == 0;
    }

    public void WAv(int i) {
        this.MQ = Math.min(4, Math.max(1, i));
    }

    public int EBS() {
        return this.MQ;
    }
}
