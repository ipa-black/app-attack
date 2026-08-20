package com.bytedance.sdk.component.ROR.cJ;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.bytedance.sdk.component.ROR.CJ.Tgh;
import com.bytedance.sdk.component.cJ.Qhi.HzH;
import com.bytedance.sdk.component.cJ.Qhi.ROR;
import com.bytedance.sdk.component.cJ.Qhi.WAv;
import com.bytedance.sdk.component.cJ.Qhi.hpZ;
import com.bytedance.sdk.component.cJ.Qhi.iMK;
import com.bytedance.sdk.component.cJ.Qhi.pA;
import com.bytedance.sdk.component.cJ.Qhi.zc;
import com.bytedance.sdk.component.utils.ABk;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;
/* compiled from: PostExecutor.java */
/* loaded from: classes2.dex */
public class fl extends ac {
    pA Qhi;

    public fl(zc zcVar) {
        super(zcVar);
        this.Qhi = null;
    }

    public void CJ(String str) {
        if (TextUtils.isEmpty(str)) {
            str = JsonUtils.EMPTY_JSON;
        }
        this.Qhi = pA.Qhi(WAv.Qhi("application/json; charset=utf-8"), str);
    }

    public void Qhi(JSONObject jSONObject) {
        String str;
        if (jSONObject == null) {
            str = JsonUtils.EMPTY_JSON;
        } else {
            str = jSONObject.toString();
        }
        this.Qhi = pA.Qhi(WAv.Qhi("application/json; charset=utf-8"), str);
    }

    public void Qhi(String str, byte[] bArr) {
        this.Qhi = pA.Qhi(WAv.Qhi(str), bArr);
    }

    public void Qhi(final com.bytedance.sdk.component.ROR.Qhi.Qhi qhi) {
        try {
            iMK.Qhi qhi2 = new iMK.Qhi();
            if (TextUtils.isEmpty(this.Sf)) {
                qhi.Qhi(this, new IOException("Url is Empty"));
                return;
            }
            if (!TextUtils.isEmpty(this.fl)) {
                qhi2.Qhi(this.fl);
            }
            if (this.Tgh > 0) {
                qhi2.Qhi(this.Tgh);
            }
            qhi2.cJ(this.Sf);
            if (this.Qhi == null) {
                if (qhi != null) {
                    qhi.Qhi(this, new IOException("RequestBody is null, content type is not support!!"));
                    return;
                }
                return;
            }
            Qhi(qhi2);
            qhi2.Qhi((Object) cJ());
            this.ac.Qhi(qhi2.Qhi(this.Qhi).cJ()).Qhi(new com.bytedance.sdk.component.cJ.Qhi.ac() { // from class: com.bytedance.sdk.component.ROR.cJ.fl.1
                @Override // com.bytedance.sdk.component.cJ.Qhi.ac
                public void Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ cJVar, IOException iOException) {
                    com.bytedance.sdk.component.ROR.Qhi.Qhi qhi3 = qhi;
                    if (qhi3 != null) {
                        qhi3.Qhi(fl.this, iOException);
                    }
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:40:0x00eb  */
                /* JADX WARN: Removed duplicated region for block: B:42:0x00f3  */
                @Override // com.bytedance.sdk.component.cJ.Qhi.ac
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ r14, com.bytedance.sdk.component.cJ.Qhi.hpZ r15) throws java.io.IOException {
                    /*
                        Method dump skipped, instructions count: 307
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.ROR.cJ.fl.AnonymousClass1.Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ, com.bytedance.sdk.component.cJ.Qhi.hpZ):void");
                }
            });
        } catch (Throwable th) {
            qhi.Qhi(this, new IOException(th.getMessage()));
        }
    }

    public com.bytedance.sdk.component.ROR.cJ Qhi() {
        com.bytedance.sdk.component.ROR.cJ cJVar;
        try {
            iMK.Qhi qhi = new iMK.Qhi();
            if (TextUtils.isEmpty(this.Sf)) {
                return new com.bytedance.sdk.component.ROR.cJ(false, 5000, "URL_NULL_MSG", null, "URL_NULL_BODY", 1L, 1L);
            }
            qhi.cJ(this.Sf);
            if (this.Qhi == null) {
                return new com.bytedance.sdk.component.ROR.cJ(false, 5000, "BODY_NULL_MSG", null, "BODY_NULL_BODY", 1L, 1L);
            }
            Qhi(qhi);
            qhi.Qhi((Object) cJ());
            hpZ Qhi = this.ac.Qhi(qhi.Qhi(this.Qhi).cJ()).Qhi();
            if (Qhi != null) {
                HashMap hashMap = new HashMap();
                ROR ROR = Qhi.ROR();
                if (ROR != null) {
                    for (int i = 0; i < ROR.Qhi(); i++) {
                        String Qhi2 = ROR.Qhi(i);
                        String cJ = ROR.cJ(i);
                        hashMap.put(Qhi2, cJ);
                        if (Qhi2 != null && Qhi2.equalsIgnoreCase("content-type")) {
                            hashMap.put("content-type", cJ == null ? "" : cJ.toLowerCase());
                        }
                    }
                }
                if (Tgh.Qhi(hashMap)) {
                    byte[] CJ = Qhi.Tgh().CJ();
                    cJVar = new com.bytedance.sdk.component.ROR.cJ(Qhi.CJ(), Qhi.ac(), Qhi.fl(), hashMap, null, Qhi.cJ(), Qhi.Qhi());
                    cJVar.Qhi(CJ);
                } else if (this.hm) {
                    byte[] CJ2 = Qhi.Tgh().CJ();
                    cJVar = new com.bytedance.sdk.component.ROR.cJ(Qhi.CJ(), Qhi.ac(), Qhi.fl(), hashMap, new String(CJ2, Qhi(Qhi(Qhi.Tgh()))), Qhi.cJ(), Qhi.Qhi());
                    cJVar.Qhi(CJ2);
                } else {
                    cJVar = new com.bytedance.sdk.component.ROR.cJ(Qhi.CJ(), Qhi.ac(), Qhi.fl(), hashMap, Qhi.Tgh().cJ(), Qhi.cJ(), Qhi.Qhi());
                }
                Qhi(cJVar, Qhi);
                return cJVar;
            }
            return null;
        } catch (Throwable th) {
            return new com.bytedance.sdk.component.ROR.cJ(false, 5001, th.getMessage(), null, "BODY_NULL_BODY", 1L, 1L);
        }
    }

    public pA ac() {
        return this.Qhi;
    }

    public void Qhi(String str, boolean z) {
        if (z) {
            Qhi("application/json; charset=utf-8", fl(str));
            cJ("Content-Encoding", "gzip");
            return;
        }
        CJ(str);
    }

    private byte[] fl(String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        if (str == null || str.length() == 0) {
            return null;
        }
        byte[] bArr = new byte[0];
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    try {
                        gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                    } catch (IOException e2) {
                        e = e2;
                    }
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e3) {
                ABk.Qhi("PostExecutor", e3.toString());
            }
            try {
                gZIPOutputStream.write(str.getBytes("utf-8"));
                try {
                    gZIPOutputStream.close();
                } catch (IOException e4) {
                    ABk.Qhi("PostExecutor", e4.toString());
                }
                bArr = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
            } catch (IOException e5) {
                e = e5;
                gZIPOutputStream2 = gZIPOutputStream;
                ABk.Qhi("PostExecutor", e.toString());
                if (gZIPOutputStream2 != null) {
                    try {
                        gZIPOutputStream2.close();
                    } catch (IOException e6) {
                        ABk.Qhi("PostExecutor", e6.toString());
                    }
                }
                if (byteArrayOutputStream != null) {
                    bArr = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                }
                return bArr;
            } catch (Throwable th2) {
                th = th2;
                gZIPOutputStream2 = gZIPOutputStream;
                if (gZIPOutputStream2 != null) {
                    try {
                        gZIPOutputStream2.close();
                    } catch (IOException e7) {
                        ABk.Qhi("PostExecutor", e7.toString());
                    }
                }
                if (byteArrayOutputStream != null) {
                    byteArrayOutputStream.toByteArray();
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e8) {
                        ABk.Qhi("PostExecutor", e8.toString());
                    }
                }
                throw th;
            }
        } catch (IOException e9) {
            e = e9;
            byteArrayOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Charset Qhi(WAv wAv) {
        try {
            return wAv != null ? wAv.Qhi(com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi) : com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi;
        } catch (Exception unused) {
            return com.bytedance.sdk.component.cJ.Qhi.cJ.WAv.Qhi;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WAv Qhi(HzH hzH) {
        try {
            return hzH.fl();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(com.bytedance.sdk.component.ROR.cJ cJVar, hpZ hpz) {
        if (cJVar == null || hpz == null) {
            return;
        }
        cJVar.Qhi(hpz.hm());
    }
}
