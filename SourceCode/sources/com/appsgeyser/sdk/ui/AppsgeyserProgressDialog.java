package com.appsgeyser.sdk.ui;

import android.app.Dialog;
import android.content.Context;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatActivity;
import com.appsgeyser.sdk.R;
/* loaded from: classes2.dex */
public class AppsgeyserProgressDialog extends Dialog {
    public AppsgeyserProgressDialog(Context context) {
        super(context);
        setCancelable(false);
        setContentView(R.layout.appsgeysersdk_progress_dialog);
    }

    public void show(Context context) {
        try {
            AppCompatActivity appCompatActivity = (AppCompatActivity) context;
            if (appCompatActivity.isDestroyed() && appCompatActivity.isFinishing()) {
                return;
            }
            super.show();
        } catch (WindowManager.BadTokenException e2) {
            e2.printStackTrace();
        } catch (ClassCastException e3) {
            e3.printStackTrace();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
