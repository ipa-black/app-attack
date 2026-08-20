package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Build;
import com.bytedance.sdk.component.utils.ABk;
import java.lang.reflect.Field;
/* loaded from: classes2.dex */
public class TTBaseActivity extends Activity {
    protected boolean ROR = false;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                super.onResume();
                return;
            } catch (IllegalArgumentException e2) {
                ABk.Qhi("TTBaseActivity", "super.onResume() run fail", e2);
                try {
                    Field declaredField = Activity.class.getDeclaredField("mCalled");
                    declaredField.setAccessible(true);
                    declaredField.set(this, Boolean.TRUE);
                    return;
                } catch (Exception e3) {
                    ABk.Qhi("TTBaseActivity", "onResume set mCalled fail", e3);
                    return;
                }
            }
        }
        super.onResume();
    }

    public void Qhi(boolean z) {
        this.ROR = z;
    }

    @Override // android.app.Activity
    public void finish() {
        try {
            super.finish();
        } catch (Exception unused) {
        }
    }
}
