package com.bytedance.sdk.component.ROR.ac;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.component.ROR.CJ.WAv;
import com.bytedance.sdk.component.cJ.Qhi.hpZ;
import com.bytedance.sdk.component.cJ.Qhi.iMK;
import java.net.InetAddress;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
/* compiled from: TNCManager.java */
/* loaded from: classes2.dex */
public class ROR {
    private boolean CJ;
    private Context ROR;
    private Tgh Sf;
    private Qhi ac;
    private cJ fl;
    private int tP;
    private long cJ = 0;
    private boolean Tgh = false;
    private int hm = 0;
    private long WAv = 19700101000L;
    private int Gm = 0;
    private HashMap<String, Integer> zc = new HashMap<>();
    private HashMap<String, Integer> ABk = new HashMap<>();
    private int iMK = 0;
    private HashMap<String, Integer> pA = new HashMap<>();
    private HashMap<String, Integer> hpZ = new HashMap<>();
    private boolean HzH = true;
    private Map<String, Integer> kYc = new HashMap();
    Handler Qhi = new Handler(Looper.getMainLooper()) { // from class: com.bytedance.sdk.component.ROR.ac.ROR.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 10000) {
                return;
            }
            ROR.this.cJ(message.arg1 != 0);
        }
    };

    private boolean Qhi(int i) {
        return i >= 200 && i < 400;
    }

    private ROR() {
    }

    public ROR(int i) {
        this.tP = i;
    }

    public String Qhi() {
        return "ttnet_tnc_config" + this.tP;
    }

    public Qhi cJ() {
        return this.ac;
    }

    public void Qhi(boolean z) {
        this.CJ = z;
    }

    public void Qhi(cJ cJVar) {
        this.fl = cJVar;
    }

    public boolean ac() {
        return this.CJ;
    }

    public cJ CJ() {
        return this.fl;
    }

    public void fl() {
        this.kYc.clear();
    }

    public synchronized void Qhi(Context context, boolean z) {
        if (!this.Tgh) {
            this.ROR = context;
            this.HzH = z;
            this.Sf = new Tgh(context, z, this.tP);
            if (z) {
                hm();
            }
            this.ac = hm.Qhi().Qhi(this.tP, this.ROR);
            this.Tgh = true;
        }
    }

    private void hm() {
        SharedPreferences sharedPreferences = this.ROR.getSharedPreferences(Qhi(), 0);
        this.hm = sharedPreferences.getInt("tnc_probe_cmd", 0);
        this.WAv = sharedPreferences.getLong("tnc_probe_version", 19700101000L);
    }

    public fl Tgh() {
        Tgh tgh = this.Sf;
        if (tgh != null) {
            return tgh.ac();
        }
        return null;
    }

    public Map<String, String> ROR() {
        fl Tgh = Tgh();
        if (Tgh != null) {
            return Tgh.CJ;
        }
        return null;
    }

    public Tgh Sf() {
        return this.Sf;
    }

    public String Qhi(String str) {
        String str2;
        Map<String, String> ROR;
        if (TextUtils.isEmpty(str) || str.contains("/network/get_network") || str.contains("/get_domains/v4") || str.contains("/ies/speed")) {
            return str;
        }
        String str3 = null;
        try {
            URL url = new URL(str);
            str2 = url.getProtocol();
            try {
                str3 = url.getHost();
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            str2 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        if ((!"http".equals(str2) && !"https".equals(str2)) || TextUtils.isEmpty(str3) || CJ(str3) || (ROR = ROR()) == null || !ROR.containsKey(str3)) {
            return str;
        }
        String str4 = ROR.get(str3);
        if (TextUtils.isEmpty(str4)) {
            return str;
        }
        String str5 = str2 + "://" + str3;
        return str.startsWith(str5) ? str.replaceFirst(str5, str2 + "://" + str4) : str;
    }

    public synchronized void Qhi(iMK imk, hpZ hpz) {
        URL url;
        if (imk == null || hpz == null) {
            return;
        }
        if (this.HzH) {
            if (WAv.Qhi(this.ROR)) {
                try {
                    url = imk.cJ().Qhi();
                } catch (Exception unused) {
                    url = null;
                }
                if (url == null) {
                    return;
                }
                String protocol = url.getProtocol();
                String host = url.getHost();
                String path = url.getPath();
                String Qhi = Qhi(imk);
                int ac = hpz.ac();
                if ("http".equals(protocol) || "https".equals(protocol)) {
                    if (TextUtils.isEmpty(Qhi)) {
                        return;
                    }
                    fl Tgh = Tgh();
                    if (Tgh != null && Tgh.cJ) {
                        Qhi(hpz, host);
                    }
                    if (Tgh == null) {
                        return;
                    }
                    this.zc.size();
                    this.ABk.size();
                    this.pA.size();
                    this.hpZ.size();
                    if (ac > 0) {
                        if (Qhi(ac)) {
                            if (this.Gm > 0 || this.iMK > 0) {
                                WAv();
                            }
                            ac(host);
                        } else if (!cJ(ac)) {
                            this.iMK++;
                            this.pA.put(path, 0);
                            this.hpZ.put(Qhi, 0);
                            if (this.iMK >= Tgh.Sf && this.pA.size() >= Tgh.hm && this.hpZ.size() >= Tgh.WAv) {
                                Qhi(false, 0L);
                                WAv();
                            }
                            cJ(host);
                        }
                    }
                }
            }
        }
    }

    private String Qhi(iMK imk) {
        if (imk == null || imk.cJ() == null) {
            return "";
        }
        if (imk.cJ().Qhi() != null) {
            try {
            } catch (Exception unused) {
                return "";
            }
        }
        return InetAddress.getByName(imk.cJ().Qhi().getHost()).getHostAddress();
    }

    private void cJ(String str) {
        Map<String, String> ROR;
        if (TextUtils.isEmpty(str) || (ROR = ROR()) == null || !ROR.containsValue(str)) {
            return;
        }
        if (this.kYc.get(str) == null) {
            this.kYc.put(str, 1);
        } else {
            this.kYc.put(str, Integer.valueOf(this.kYc.get(str).intValue() + 1));
        }
    }

    private void ac(String str) {
        if (!TextUtils.isEmpty(str) && this.kYc.containsKey(str)) {
            this.kYc.put(str, 0);
        }
    }

    private boolean CJ(String str) {
        Map<String, String> ROR = ROR();
        if (ROR == null) {
            return false;
        }
        String str2 = ROR.get(str);
        return (TextUtils.isEmpty(str2) || this.kYc.get(str2) == null || this.kYc.get(str2).intValue() < 3) ? false : true;
    }

    public synchronized void Qhi(iMK imk, Exception exc) {
        URL url;
        if (imk != null) {
            if (imk.cJ() != null && exc != null) {
                if (this.HzH) {
                    if (WAv.Qhi(this.ROR)) {
                        try {
                            url = imk.cJ().Qhi();
                        } catch (Exception unused) {
                            url = null;
                        }
                        if (url == null) {
                            return;
                        }
                        String protocol = url.getProtocol();
                        String host = url.getHost();
                        String path = url.getPath();
                        String Qhi = Qhi(imk);
                        if ("http".equals(protocol) || "https".equals(protocol)) {
                            fl Tgh = Tgh();
                            if (Tgh == null) {
                                return;
                            }
                            this.zc.size();
                            this.ABk.size();
                            this.pA.size();
                            this.hpZ.size();
                            this.Gm++;
                            this.zc.put(path, 0);
                            this.ABk.put(Qhi, 0);
                            if (this.Gm >= Tgh.fl && this.zc.size() >= Tgh.Tgh && this.ABk.size() >= Tgh.ROR) {
                                Qhi(false, 0L);
                                WAv();
                            }
                            cJ(host);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void Qhi(com.bytedance.sdk.component.cJ.Qhi.hpZ r9, java.lang.String r10) {
        /*
            r8 = this;
            if (r9 != 0) goto L3
            return
        L3:
            boolean r10 = r8.HzH
            if (r10 != 0) goto L8
            return
        L8:
            java.lang.String r10 = "tnc-cmd"
            r0 = 0
            java.lang.String r9 = r9.Qhi(r10, r0)
            boolean r10 = android.text.TextUtils.isEmpty(r9)
            if (r10 == 0) goto L16
            return
        L16:
            java.lang.String r10 = "@"
            java.lang.String[] r9 = r9.split(r10)
            if (r9 == 0) goto L85
            int r10 = r9.length
            r0 = 2
            if (r10 == r0) goto L23
            goto L85
        L23:
            r10 = 1
            r0 = 0
            r2 = 0
            r3 = r9[r2]     // Catch: java.lang.Throwable -> L34
            int r3 = java.lang.Integer.parseInt(r3)     // Catch: java.lang.Throwable -> L34
            r9 = r9[r10]     // Catch: java.lang.Throwable -> L35
            long r4 = java.lang.Long.parseLong(r9)     // Catch: java.lang.Throwable -> L35
            goto L36
        L34:
            r3 = r2
        L35:
            r4 = r0
        L36:
            long r6 = r8.WAv
            int r9 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r9 > 0) goto L3d
            return
        L3d:
            r8.hm = r3
            r8.WAv = r4
            android.content.Context r9 = r8.ROR
            java.lang.String r6 = r8.Qhi()
            android.content.SharedPreferences r9 = r9.getSharedPreferences(r6, r2)
            android.content.SharedPreferences$Editor r9 = r9.edit()
            java.lang.String r2 = "tnc_probe_cmd"
            android.content.SharedPreferences$Editor r9 = r9.putInt(r2, r3)
            java.lang.String r2 = "tnc_probe_version"
            android.content.SharedPreferences$Editor r9 = r9.putLong(r2, r4)
            r9.apply()
            int r9 = r8.hm
            r2 = 10000(0x2710, float:1.4013E-41)
            if (r9 != r2) goto L85
            com.bytedance.sdk.component.ROR.ac.fl r9 = r8.Tgh()
            if (r9 != 0) goto L6b
            return
        L6b:
            java.util.Random r2 = new java.util.Random
            long r3 = java.lang.System.currentTimeMillis()
            r2.<init>(r3)
            int r3 = r9.zc
            if (r3 <= 0) goto L82
            int r9 = r9.zc
            int r9 = r2.nextInt(r9)
            long r0 = (long) r9
            r2 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r2
        L82:
            r8.Qhi(r10, r0)
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.ROR.ac.ROR.Qhi(com.bytedance.sdk.component.cJ.Qhi.hpZ, java.lang.String):void");
    }

    private void Qhi(boolean z, long j) {
        if (this.Qhi.hasMessages(10000)) {
            return;
        }
        Message obtainMessage = this.Qhi.obtainMessage();
        obtainMessage.what = 10000;
        obtainMessage.arg1 = z ? 1 : 0;
        if (j > 0) {
            this.Qhi.sendMessageDelayed(obtainMessage, j);
        } else {
            this.Qhi.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(boolean z) {
        fl Tgh = Tgh();
        if (Tgh == null) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (z || this.cJ + (Tgh.Gm * 1000) <= elapsedRealtime) {
            this.cJ = elapsedRealtime;
            hm.Qhi().Qhi(this.tP, this.ROR).ac();
        }
    }

    private void WAv() {
        this.Gm = 0;
        this.zc.clear();
        this.ABk.clear();
        this.iMK = 0;
        this.pA.clear();
        this.hpZ.clear();
    }

    private boolean cJ(int i) {
        if (i < 100 || i >= 1000) {
            return true;
        }
        fl Tgh = Tgh();
        return (Tgh == null || TextUtils.isEmpty(Tgh.ABk) || !Tgh.ABk.contains(String.valueOf(i))) ? false : true;
    }
}
