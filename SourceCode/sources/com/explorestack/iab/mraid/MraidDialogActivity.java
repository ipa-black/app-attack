package com.explorestack.iab.mraid;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.view.Window;
import com.explorestack.iab.utils.Utils;
/* loaded from: classes2.dex */
public class MraidDialogActivity extends MraidActivity {
    public static void a(Context context, Intent intent) {
        if (context instanceof Activity) {
            try {
                Activity activity = (Activity) context;
                if (activity.findViewById(16908290).getTop() == 0) {
                    intent.putExtra("param_is_no_status_bar", true);
                    return;
                }
                Window window = activity.getWindow();
                int statusBarColor = window != null ? window.getStatusBarColor() : 0;
                if (statusBarColor != 0) {
                    intent.putExtra("param_status_bar_color", statusBarColor);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(Context context, MraidType mraidType, MraidInterstitial mraidInterstitial) {
        if (mraidInterstitial == null) {
            MraidLog.a("Mraid interstitial object not provided for display");
        } else if (context == null) {
            MraidLog.a("Context not provided for display mraid interstitial");
            mraidInterstitial.d();
        } else if (mraidType == null) {
            MraidLog.a("Mraid type not provided for display");
            mraidInterstitial.d();
        } else {
            try {
                MraidActivity.a(mraidInterstitial);
                Intent a2 = MraidActivity.a(context, MraidDialogActivity.class, mraidType, mraidInterstitial.id);
                a2.addFlags(8388608);
                a(context, a2);
                context.startActivity(a2);
            } catch (Throwable th) {
                th.printStackTrace();
                mraidInterstitial.d();
                MraidActivity.a(Integer.valueOf(mraidInterstitial.id));
            }
        }
    }

    @Override // com.explorestack.iab.mraid.MraidActivity
    public void onBeforeCreate(Window window) {
        if (window == null) {
            return;
        }
        window.setBackgroundDrawable(new ColorDrawable(0));
    }

    @Override // com.explorestack.iab.mraid.MraidActivity
    public void onBeforeShowContent() {
        int intExtra;
        Window window = getWindow();
        Intent intent = getIntent();
        if (window != null && (intExtra = intent.getIntExtra("param_status_bar_color", 0)) != 0) {
            window.setStatusBarColor(intExtra);
        }
        Utils.applyFullscreenActivityFlags(this, intent.hasExtra("param_is_no_status_bar"));
    }
}
