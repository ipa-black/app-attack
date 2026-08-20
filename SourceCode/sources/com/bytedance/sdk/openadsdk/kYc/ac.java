package com.bytedance.sdk.openadsdk.kYc;

import android.text.TextUtils;
import android.util.Log;
import androidx.browser.trusted.sharing.ShareTarget;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import org.apache.commons.lang.time.DateUtils;
import org.json.JSONObject;
/* compiled from: StrategyCenter.java */
/* loaded from: classes2.dex */
public class ac {
    private Qhi CJ;
    private fl ac;
    private cJ cJ;
    private final String Qhi = "StrategyCenter";
    private int fl = 0;
    private Runnable Tgh = new Runnable() { // from class: com.bytedance.sdk.openadsdk.kYc.ac.2
        @Override // java.lang.Runnable
        public void run() {
            ac.this.cJ();
        }
    };

    public ac(fl flVar) {
        this.cJ = null;
        Tgh tgh = new Tgh(flVar);
        this.ac = tgh;
        String ac = tgh.ac();
        if (!TextUtils.isEmpty(ac) && !ac.startsWith("pag")) {
            ac = "pag_".concat(String.valueOf(ac));
        }
        this.cJ = new cJ(this.ac.cJ(), ac);
    }

    public void Qhi(Qhi qhi) {
        this.CJ = qhi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ() {
        fl flVar = this.ac;
        if (flVar == null || flVar.fl() == null || this.ac.Tgh() == null) {
            return;
        }
        this.ac.Qhi().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.kYc.ac.1
            @Override // java.lang.Runnable
            public void run() {
                OutputStream outputStream;
                ac.this.fl++;
                try {
                    if (ac.this.CJ != null) {
                        ac.this.CJ.Qhi();
                    }
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(ac.this.ac.fl()).openConnection();
                    if (ac.this.ac.ROR() != null && ac.this.ac.ROR().size() > 0) {
                        for (Map.Entry<String, String> entry : ac.this.ac.ROR().entrySet()) {
                            httpURLConnection.addRequestProperty(entry.getKey(), entry.getValue());
                        }
                    }
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                    httpURLConnection.setRequestProperty("Content-Type", "application/json");
                    try {
                        outputStream = httpURLConnection.getOutputStream();
                        try {
                            outputStream.write(ac.this.ac.Tgh().toString().getBytes());
                            if (outputStream != null) {
                                outputStream.close();
                            }
                            int responseCode = httpURLConnection.getResponseCode();
                            Log.i("StrategyCenter", "executing strategy fetch");
                            if (responseCode != 200) {
                                if (ac.this.CJ != null) {
                                    ac.this.CJ.Qhi(responseCode, httpURLConnection.getResponseMessage());
                                }
                            } else {
                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                                StringBuffer stringBuffer = new StringBuffer();
                                while (true) {
                                    String readLine = bufferedReader.readLine();
                                    if (readLine == null) {
                                        break;
                                    }
                                    stringBuffer.append(readLine);
                                }
                                bufferedReader.close();
                                JSONObject Qhi = ac.this.ac.Qhi(new JSONObject(stringBuffer.toString()));
                                ac.this.cJ.Qhi();
                                ac.this.cJ.Qhi(Qhi);
                                if (ac.this.CJ != null) {
                                    ac.this.CJ.cJ();
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (outputStream != null) {
                                outputStream.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        outputStream = null;
                    }
                } catch (Throwable th3) {
                    Log.e("StrategyCenter", th3.getMessage() == null ? "error " : th3.getMessage());
                    if (ac.this.CJ != null) {
                        ac.this.CJ.Qhi(-1, th3.getMessage());
                    }
                }
                ac.this.cJ.Qhi("local_last_update_time", System.currentTimeMillis());
                ac.this.Qhi();
            }
        });
    }

    public void Qhi() {
        if (this.ac != null) {
            cJ cJVar = this.cJ;
            int i = DateUtils.MILLIS_IN_HOUR;
            int Qhi = cJVar.Qhi("req_interval", DateUtils.MILLIS_IN_HOUR);
            long j = 0;
            long cJ = this.cJ.cJ("local_last_update_time", 0L);
            if (Qhi >= 600000 && Qhi <= 86400000) {
                i = Qhi;
            }
            long currentTimeMillis = System.currentTimeMillis() - cJ;
            Log.i("StrategyCenter", "before  realInterval=".concat(String.valueOf(currentTimeMillis)));
            if (currentTimeMillis >= 0) {
                long j2 = i;
                if (currentTimeMillis <= j2) {
                    j = j2 - currentTimeMillis;
                }
            }
            Log.i("StrategyCenter", "after  realInterval=".concat(String.valueOf(j)));
            this.ac.CJ().removeCallbacks(this.Tgh);
            if (this.fl > 24) {
                return;
            }
            this.ac.CJ().postDelayed(this.Tgh, j);
        }
    }

    public int Qhi(String str, int i) {
        cJ cJVar = this.cJ;
        return cJVar == null ? i : cJVar.Qhi(str, i);
    }

    public String Qhi(String str, String str2) {
        cJ cJVar = this.cJ;
        return cJVar == null ? str2 : cJVar.Qhi(str, str2);
    }

    public boolean Qhi(String str, boolean z) {
        cJ cJVar = this.cJ;
        return cJVar == null ? z : cJVar.Qhi(str, z);
    }
}
