package com.bytedance.sdk.openadsdk.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.core.CQU;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.bannerexpress.Qhi;
import com.bytedance.sdk.openadsdk.core.hm;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class TTDelegateActivity extends TTBaseActivity {
    private static final Map<String, Qhi.InterfaceC0223Qhi> ac = Collections.synchronizedMap(new HashMap());
    private Intent Qhi;
    private CQU cJ;

    public static void Qhi(tP tPVar, String str, Qhi.InterfaceC0223Qhi interfaceC0223Qhi) {
        if (tPVar == null) {
            return;
        }
        Intent intent = new Intent(HzH.Qhi(), TTDelegateActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(SessionDescription.ATTR_TYPE, 6);
        intent.putExtra("ext_info", tPVar.EGK());
        intent.putExtra("filter_words", com.bytedance.sdk.openadsdk.tool.Qhi.Qhi(tPVar.VnT()));
        intent.putExtra("creative_info", tPVar.mZ().toString());
        intent.putExtra("closed_listener_key", str);
        if (interfaceC0223Qhi != null) {
            if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                hm.cJ().Qhi(str, interfaceC0223Qhi);
            } else {
                ac.put(str, interfaceC0223Qhi);
            }
        }
        if (HzH.Qhi() != null) {
            HzH.Qhi().startActivity(intent);
        }
    }

    public static void Qhi(tP tPVar, String str) {
        Qhi(tPVar, str, null);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!iMK.fl()) {
            finish();
            return;
        }
        cJ();
        this.Qhi = getIntent();
        if (HzH.Qhi() == null) {
            HzH.cJ(this);
        }
    }

    private void cJ() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (HzH.Qhi() == null) {
            HzH.cJ(this);
        }
        setIntent(intent);
        this.Qhi = intent;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        CQU cqu = this.cJ;
        if ((cqu == null || ((com.bytedance.sdk.openadsdk.dislike.cJ) cqu).Qhi == null || !((com.bytedance.sdk.openadsdk.dislike.cJ) this.cJ).Qhi.isShowing()) && this.Qhi != null) {
            ac();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    private void ac() {
        int intExtra = this.Qhi.getIntExtra(SessionDescription.ATTR_TYPE, 0);
        if (intExtra != 1) {
            if (intExtra == 6) {
                Qhi(this.Qhi.getStringExtra("ext_info"), this.Qhi.getStringExtra("filter_words"), this.Qhi.getStringExtra("closed_listener_key"), this.Qhi.getStringExtra("creative_info"));
                return;
            }
            finish();
        }
    }

    private void Qhi(String str, String str2, final String str3, String str4) {
        if (str2 != null && str != null && this.cJ == null) {
            com.bytedance.sdk.openadsdk.dislike.cJ cJVar = new com.bytedance.sdk.openadsdk.dislike.cJ(this, str, com.bytedance.sdk.openadsdk.tool.Qhi.Qhi(str2), str4, "other");
            this.cJ = cJVar;
            cJVar.Qhi(str3);
            this.cJ.Qhi(new CQU.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTDelegateActivity.1
                @Override // com.bytedance.sdk.openadsdk.core.CQU.Qhi
                public void Qhi(int i, String str5) {
                    Qhi.InterfaceC0223Qhi fl;
                    if (TTDelegateActivity.ac != null && TTDelegateActivity.ac.size() > 0 && !TextUtils.isEmpty(str3) && !com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                        Qhi.InterfaceC0223Qhi interfaceC0223Qhi = (Qhi.InterfaceC0223Qhi) TTDelegateActivity.ac.get(str3);
                        if (interfaceC0223Qhi != null) {
                            interfaceC0223Qhi.Qhi();
                        }
                    } else if (!TextUtils.isEmpty(str3) && (fl = hm.cJ().fl(str3)) != null) {
                        fl.Qhi();
                        hm.cJ().Tgh(str3);
                    }
                    TTDelegateActivity.this.Qhi(str3);
                    TTDelegateActivity.this.finish();
                }

                @Override // com.bytedance.sdk.openadsdk.core.CQU.Qhi
                public void Qhi() {
                    if (!((com.bytedance.sdk.openadsdk.dislike.cJ) TTDelegateActivity.this.cJ).cJ()) {
                        TTDelegateActivity.this.Qhi(str3);
                        TTDelegateActivity.this.finish();
                    }
                    ((com.bytedance.sdk.openadsdk.dislike.cJ) TTDelegateActivity.this.cJ).Qhi(false);
                }
            });
        }
        CQU cqu = this.cJ;
        if (cqu != null) {
            cqu.Qhi();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(String str) {
        Map<String, Qhi.InterfaceC0223Qhi> map = ac;
        if (map == null || TextUtils.isEmpty(str)) {
            return;
        }
        map.remove(str);
        if (ABk.CJ()) {
            map.size();
        }
    }
}
