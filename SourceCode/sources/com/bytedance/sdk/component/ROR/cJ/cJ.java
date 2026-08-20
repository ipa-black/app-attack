package com.bytedance.sdk.component.ROR.cJ;

import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.cJ.Qhi.HzH;
import com.bytedance.sdk.component.cJ.Qhi.Qhi;
import com.bytedance.sdk.component.cJ.Qhi.ROR;
import com.bytedance.sdk.component.cJ.Qhi.Sf;
import com.bytedance.sdk.component.cJ.Qhi.hpZ;
import com.bytedance.sdk.component.cJ.Qhi.iMK;
import com.bytedance.sdk.component.cJ.Qhi.zc;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* compiled from: GetExecutor.java */
/* loaded from: classes2.dex */
public class cJ extends ac {
    public static final com.bytedance.sdk.component.cJ.Qhi.Qhi Qhi = new Qhi.C0197Qhi().Qhi().cJ();
    public static final com.bytedance.sdk.component.cJ.Qhi.Qhi cJ = new Qhi.C0197Qhi().cJ();
    private boolean Gm;
    private com.bytedance.sdk.component.cJ.Qhi.Qhi WAv;
    private Map<String, String> zc;

    public cJ(zc zcVar) {
        super(zcVar);
        this.WAv = Qhi;
        this.Gm = false;
        this.zc = new HashMap();
    }

    public void Qhi(String str, String str2) {
        if (str == null) {
            return;
        }
        this.zc.put(str, str2);
    }

    public void Qhi(boolean z) {
        this.Gm = z;
    }

    public void Qhi(final com.bytedance.sdk.component.ROR.Qhi.Qhi qhi) {
        try {
            iMK.Qhi qhi2 = new iMK.Qhi();
            if (this.Gm) {
                qhi2.cJ(this.Sf);
            } else {
                Sf.Qhi qhi3 = new Sf.Qhi();
                Uri parse = Uri.parse(this.Sf);
                qhi3.Qhi(parse.getScheme());
                qhi3.cJ(parse.getHost());
                String encodedPath = parse.getEncodedPath();
                if (!TextUtils.isEmpty(encodedPath)) {
                    if (encodedPath.startsWith("/")) {
                        encodedPath = encodedPath.substring(1);
                    }
                    qhi3.ac(encodedPath);
                }
                Set<String> queryParameterNames = parse.getQueryParameterNames();
                if (queryParameterNames != null && queryParameterNames.size() > 0) {
                    for (String str : queryParameterNames) {
                        this.zc.put(str, parse.getQueryParameter(str));
                    }
                }
                for (Map.Entry<String, String> entry : this.zc.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key)) {
                        String encode = URLEncoder.encode(key, C.UTF8_NAME);
                        if (value == null) {
                            value = "";
                        }
                        qhi3.Qhi(encode, URLEncoder.encode(value, C.UTF8_NAME));
                    }
                }
                qhi2.Qhi(qhi3.cJ());
            }
            Qhi(qhi2);
            qhi2.Qhi(this.WAv);
            qhi2.Qhi((Object) cJ());
            if (!TextUtils.isEmpty(this.fl)) {
                qhi2.Qhi(this.fl);
            }
            if (this.Tgh > 0) {
                qhi2.Qhi(this.Tgh);
            }
            this.ac.Qhi(qhi2.Qhi().cJ()).Qhi(new com.bytedance.sdk.component.cJ.Qhi.ac() { // from class: com.bytedance.sdk.component.ROR.cJ.cJ.1
                @Override // com.bytedance.sdk.component.cJ.Qhi.ac
                public void Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ cJVar, IOException iOException) {
                    com.bytedance.sdk.component.ROR.Qhi.Qhi qhi4 = qhi;
                    if (qhi4 != null) {
                        qhi4.Qhi(cJ.this, iOException);
                    }
                }

                @Override // com.bytedance.sdk.component.cJ.Qhi.ac
                public void Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ cJVar, hpZ hpz) throws IOException {
                    String cJ2;
                    if (qhi != null) {
                        HashMap hashMap = new HashMap();
                        if (hpz != null) {
                            ROR ROR = hpz.ROR();
                            if (ROR != null) {
                                for (int i = 0; i < ROR.Qhi(); i++) {
                                    hashMap.put(ROR.Qhi(i), ROR.cJ(i));
                                }
                            }
                            HzH Tgh = hpz.Tgh();
                            if (Tgh == null) {
                                cJ2 = "";
                            } else {
                                cJ2 = Tgh.cJ();
                            }
                            qhi.Qhi(cJ.this, new com.bytedance.sdk.component.ROR.cJ(hpz.CJ(), hpz.ac(), hpz.fl(), hashMap, cJ2, hpz.cJ(), hpz.Qhi()));
                        }
                    }
                }
            });
        } catch (Throwable th) {
            if (qhi != null) {
                qhi.Qhi(this, new IOException(th.getMessage()));
            }
        }
    }

    public com.bytedance.sdk.component.ROR.cJ Qhi() {
        try {
            iMK.Qhi qhi = new iMK.Qhi();
            String str = "";
            if (this.Gm) {
                qhi.cJ(this.Sf);
            } else {
                Sf.Qhi qhi2 = new Sf.Qhi();
                Uri parse = Uri.parse(this.Sf);
                qhi2.Qhi(parse.getScheme());
                qhi2.cJ(parse.getHost());
                String encodedPath = parse.getEncodedPath();
                if (!TextUtils.isEmpty(encodedPath)) {
                    if (encodedPath.startsWith("/")) {
                        encodedPath = encodedPath.substring(1);
                    }
                    qhi2.ac(encodedPath);
                }
                Set<String> queryParameterNames = parse.getQueryParameterNames();
                if (queryParameterNames != null && queryParameterNames.size() > 0) {
                    for (String str2 : queryParameterNames) {
                        this.zc.put(str2, parse.getQueryParameter(str2));
                    }
                }
                for (Map.Entry<String, String> entry : this.zc.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key)) {
                        String encode = URLEncoder.encode(key, C.UTF8_NAME);
                        if (value == null) {
                            value = "";
                        }
                        qhi2.Qhi(encode, URLEncoder.encode(value, C.UTF8_NAME));
                    }
                }
                qhi.Qhi(qhi2.cJ());
            }
            Qhi(qhi);
            qhi.Qhi(this.WAv);
            qhi.Qhi((Object) cJ());
            hpZ Qhi2 = this.ac.Qhi(qhi.Qhi().cJ()).Qhi();
            if (Qhi2 != null) {
                HashMap hashMap = new HashMap();
                ROR ROR = Qhi2.ROR();
                if (ROR != null) {
                    for (int i = 0; i < ROR.Qhi(); i++) {
                        hashMap.put(ROR.Qhi(i), ROR.cJ(i));
                    }
                }
                HzH Tgh = Qhi2.Tgh();
                if (Tgh != null) {
                    str = Tgh.cJ();
                }
                return new com.bytedance.sdk.component.ROR.cJ(Qhi2.CJ(), Qhi2.ac(), Qhi2.fl(), hashMap, str, Qhi2.cJ(), Qhi2.Qhi());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
