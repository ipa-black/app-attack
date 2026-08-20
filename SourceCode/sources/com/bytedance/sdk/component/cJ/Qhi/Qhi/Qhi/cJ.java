package com.bytedance.sdk.component.cJ.Qhi.Qhi.Qhi;

import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.bytedance.sdk.component.cJ.Qhi.hm;
import com.bytedance.sdk.component.cJ.Qhi.hpZ;
import com.bytedance.sdk.component.cJ.Qhi.iMK;
import com.bytedance.sdk.component.cJ.Qhi.pA;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: NetCall.java */
/* loaded from: classes2.dex */
public class cJ implements com.bytedance.sdk.component.cJ.Qhi.cJ {
    iMK Qhi;
    private AtomicBoolean ac = new AtomicBoolean(false);
    com.bytedance.sdk.component.cJ.Qhi.fl cJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cJ(iMK imk, com.bytedance.sdk.component.cJ.Qhi.fl flVar) {
        this.Qhi = imk;
        this.cJ = flVar;
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.cJ
    public hpZ Qhi() throws IOException {
        iMK imk = this.Qhi;
        if (imk != null && imk.cJ != null) {
            if (this.Qhi.cJ.iMK() == 0) {
                this.Qhi.cJ.pA();
            }
            this.Qhi.cJ.Qhi();
        }
        this.cJ.ac().remove(this);
        this.cJ.CJ().add(this);
        com.bytedance.sdk.component.cJ.Qhi.fl flVar = this.cJ;
        if ((flVar instanceof Tgh) && (flVar.ac().size() + this.cJ.CJ().size() > this.cJ.Qhi() || this.ac.get())) {
            this.cJ.CJ().remove(this);
            return new Sf(Sf.Qhi, "Maximum number of requests exceeded", this.Qhi);
        }
        try {
            if (this.Qhi.Qhi != null && this.Qhi.Qhi.Qhi != null && this.Qhi.Qhi.Qhi.size() > 0) {
                ArrayList arrayList = new ArrayList(this.Qhi.Qhi.Qhi);
                arrayList.add(new com.bytedance.sdk.component.cJ.Qhi.hm() { // from class: com.bytedance.sdk.component.cJ.Qhi.Qhi.Qhi.cJ.1
                    @Override // com.bytedance.sdk.component.cJ.Qhi.hm
                    public hpZ Qhi(hm.Qhi qhi) throws IOException {
                        return cJ.this.Qhi(qhi.Qhi());
                    }
                });
                return ((com.bytedance.sdk.component.cJ.Qhi.hm) arrayList.get(0)).Qhi(new ac(arrayList, this.Qhi));
            }
            return Qhi(this.Qhi);
        } catch (Throwable th) {
            throw new IOException(th.getMessage());
        }
    }

    private boolean Qhi(pA pAVar) {
        iMK imk;
        return pAVar != null && (imk = this.Qhi) != null && ShareTarget.METHOD_POST.equalsIgnoreCase(imk.ac()) && pAVar.Tgh == pA.Qhi.BYTE_ARRAY_TYPE && pAVar.fl != null && pAVar.fl.length > 0;
    }

    private boolean cJ(pA pAVar) {
        iMK imk;
        return (pAVar == null || (imk = this.Qhi) == null || !ShareTarget.METHOD_POST.equalsIgnoreCase(imk.ac()) || pAVar.Tgh != pA.Qhi.STRING_TYPE || TextUtils.isEmpty(pAVar.CJ)) ? false : true;
    }

    public hpZ Qhi(iMK imk) throws IOException {
        HttpURLConnection httpURLConnection;
        String obj;
        int i = Sf.Qhi;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(imk.cJ().Qhi().toString()).openConnection();
            } catch (Exception e2) {
                httpURLConnection = null;
            }
            try {
                if (imk.CJ() != null && imk.CJ().size() > 0) {
                    for (Map.Entry<String, List<String>> entry : imk.CJ().entrySet()) {
                        String key = entry.getKey();
                        for (String str : entry.getValue()) {
                            if ("_disable_retry".equals(key) && IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE.equals(str)) {
                                Qhi(httpURLConnection);
                            } else {
                                httpURLConnection.addRequestProperty(key, str);
                            }
                        }
                    }
                }
                if (imk.Qhi != null) {
                    if (imk.Qhi.ac != null) {
                        httpURLConnection.setConnectTimeout((int) imk.Qhi.ac.toMillis(imk.Qhi.cJ));
                    }
                    if (imk.Qhi.ac != null) {
                        httpURLConnection.setReadTimeout((int) imk.Qhi.fl.toMillis(imk.Qhi.CJ));
                    }
                }
                if (imk.Sf() == null) {
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                } else {
                    if (!ac() && imk.Sf().ac != null) {
                        httpURLConnection.addRequestProperty("Content-Type", imk.Sf().ac.Qhi());
                    }
                    httpURLConnection.setRequestMethod(imk.ac());
                    if (ShareTarget.METHOD_POST.equalsIgnoreCase(imk.ac())) {
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        if (Qhi(imk.Sf())) {
                            outputStream.write(imk.Sf().fl);
                        } else if (cJ(imk.Sf())) {
                            outputStream.write(imk.Sf().CJ.getBytes());
                        }
                        outputStream.flush();
                        outputStream.close();
                    }
                }
                if (imk != null && imk.cJ != null) {
                    imk.cJ.cJ();
                }
                httpURLConnection.connect();
                if (imk != null && imk.cJ != null) {
                    imk.cJ.ac();
                }
                i = httpURLConnection.getResponseCode();
                if (imk != null && imk.cJ != null) {
                    imk.cJ.fl();
                }
            } catch (Exception e3) {
                obj = httpURLConnection.getErrorStream().toString();
                return new Sf(i, obj, imk);
            }
            if (this.ac.get()) {
                httpURLConnection.disconnect();
                this.cJ.CJ().remove(this);
                obj = "internal error";
                return new Sf(i, obj, imk);
            }
            return new Sf(httpURLConnection, imk);
        } finally {
            this.cJ.CJ().remove(this);
        }
    }

    private static void Qhi(HttpURLConnection httpURLConnection) {
        try {
            Field declaredField = httpURLConnection.getClass().getDeclaredField("delegate");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(httpURLConnection);
            Field declaredField2 = obj.getClass().getDeclaredField("client");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            obj2.getClass().getDeclaredMethod("setRetryOnConnectionFailure", Boolean.TYPE).invoke(obj2, Boolean.FALSE);
        } catch (Exception unused) {
        }
    }

    private boolean ac() {
        if (this.Qhi.CJ() == null) {
            return false;
        }
        return this.Qhi.CJ().containsKey("Content-Type");
    }

    @Override // com.bytedance.sdk.component.cJ.Qhi.cJ
    public void Qhi(final com.bytedance.sdk.component.cJ.Qhi.ac acVar) {
        iMK imk = this.Qhi;
        if (imk != null && imk.cJ != null) {
            this.Qhi.cJ.pA();
        }
        this.cJ.cJ().submit(new com.bytedance.sdk.component.Sf.ac.cJ(this.Qhi.ROR(), this.Qhi.Tgh()) { // from class: com.bytedance.sdk.component.cJ.Qhi.Qhi.Qhi.cJ.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    hpZ Qhi = cJ.this.Qhi();
                    if (Qhi == null) {
                        acVar.Qhi(cJ.this, new IOException("response is null"));
                    } else {
                        acVar.Qhi(cJ.this, Qhi);
                    }
                } catch (IOException e2) {
                    acVar.Qhi(cJ.this, e2);
                }
            }
        });
    }

    /* renamed from: cJ */
    public com.bytedance.sdk.component.cJ.Qhi.cJ clone() {
        return new cJ(this.Qhi, this.cJ);
    }
}
