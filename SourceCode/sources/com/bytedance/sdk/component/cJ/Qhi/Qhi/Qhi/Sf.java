package com.bytedance.sdk.component.cJ.Qhi.Qhi.Qhi;

import android.text.TextUtils;
import com.bytedance.sdk.component.cJ.Qhi.Gm;
import com.bytedance.sdk.component.cJ.Qhi.HzH;
import com.bytedance.sdk.component.cJ.Qhi.hpZ;
import com.bytedance.sdk.component.cJ.Qhi.iMK;
import com.bytedance.sdk.component.utils.ABk;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: NetResponse.java */
/* loaded from: classes2.dex */
public class Sf extends hpZ {
    public static int Qhi = -1;
    int CJ;
    iMK ac;
    HttpURLConnection cJ;
    String fl;

    @Override // com.bytedance.sdk.component.cJ.Qhi.hpZ
    public long Qhi() {
        return 0L;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.hpZ
    public long cJ() {
        return 0L;
    }

    public Sf(HttpURLConnection httpURLConnection, iMK imk) {
        this.CJ = Qhi;
        this.cJ = httpURLConnection;
        this.ac = imk;
    }

    public Sf(int i, String str, iMK imk) {
        this.fl = str;
        this.ac = imk;
        this.CJ = i;
    }

    public iMK WAv() {
        return this.ac;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.hpZ
    public int ac() {
        try {
            return this.cJ.getResponseCode();
        } catch (Exception unused) {
            return this.CJ;
        }
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.hpZ
    public boolean CJ() {
        return ac() >= 200 && ac() < 300;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.hpZ
    public String fl() throws IOException {
        if (!TextUtils.isEmpty(this.fl)) {
            return this.fl;
        }
        return this.cJ.getResponseMessage();
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.hpZ
    public HzH Tgh() {
        hm hmVar;
        iMK imk = this.ac;
        if (imk != null && imk.cJ != null) {
            this.ac.cJ.Gm();
        }
        try {
            try {
                hmVar = new hm(this.cJ);
            } catch (Throwable th) {
                ABk.cJ(th.getMessage());
                hmVar = null;
            }
        } catch (Exception unused) {
            HttpURLConnection httpURLConnection = this.cJ;
            hmVar = new hm(httpURLConnection, httpURLConnection.getErrorStream());
        }
        iMK imk2 = this.ac;
        if (imk2 != null && imk2.cJ != null) {
            this.ac.cJ.ABk();
        }
        return hmVar;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.hpZ
    public com.bytedance.sdk.component.cJ.Qhi.ROR ROR() {
        if (this.cJ == null) {
            return new com.bytedance.sdk.component.cJ.Qhi.ROR(new String[0]);
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : this.cJ.getHeaderFields().entrySet()) {
            for (String str : entry.getValue()) {
                if (!HttpHeaders.CONTENT_RANGE.equalsIgnoreCase(entry.getKey()) || ac() != 206) {
                    arrayList.add(entry.getKey());
                    arrayList.add(str);
                }
            }
        }
        return new com.bytedance.sdk.component.cJ.Qhi.ROR((String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public String Qhi(String str) {
        HttpURLConnection httpURLConnection = this.cJ;
        if (httpURLConnection == null) {
            return "";
        }
        return httpURLConnection.getHeaderField(str);
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.hpZ
    public String Qhi(String str, String str2) {
        return !TextUtils.isEmpty(Qhi(str)) ? Qhi(str) : str2;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.hpZ, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            Tgh().close();
        } catch (Exception unused) {
        }
    }

    public String toString() {
        return "";
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.hpZ
    public com.bytedance.sdk.component.cJ.Qhi.ABk Sf() {
        return com.bytedance.sdk.component.cJ.Qhi.ABk.HTTP_1_1;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.hpZ
    public Gm hm() {
        if (WAv() == null || WAv().cJ == null) {
            return null;
        }
        return new Gm(WAv().cJ);
    }
}
