package com.appsgeyser.sdk.ui;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.appsgeyser.sdk.R;
import com.appsgeyser.sdk.configuration.Configuration;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
/* loaded from: classes2.dex */
public class AboutDialogActivity extends Activity {
    private static final String APPSGEYSER_DESCRIPTION_CUSTOM = "custom";
    private static final String APPSGEYSER_DESCRIPTION_LOGO = "appsgeyser_logo";
    private static final String APPSGEYSER_DESCRIPTION_TEXT = "appsgeyser_text";
    private static final String CONFIG_PHP_KEY = "config_php_key";
    private TextView appName;
    private TextView appVersion;
    private ImageView appsgeyserDescriptionLogoImageView;
    private ImageView closeScreenImageView;
    private Configuration config;
    private ConfigPhp configPhp;
    private String description;
    private TextView descriptionTextView;
    private String descriptionType;
    private ImageView logoImageView;
    private Button privacy;
    private Button rate;
    private TextView templateVersion;
    private Button tos;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.appsgeysersdk_about_dialog);
        if (bundle != null) {
            this.configPhp = (ConfigPhp) bundle.getParcelable(CONFIG_PHP_KEY);
        } else {
            Intent intent = getIntent();
            if (intent != null) {
                this.configPhp = (ConfigPhp) intent.getParcelableExtra(CONFIG_PHP_KEY);
            }
        }
        ConfigPhp configPhp = this.configPhp;
        if (configPhp != null) {
            this.descriptionType = configPhp.getAboutScreenDescriptionType();
            this.description = this.configPhp.getAboutScreenDescription();
        }
        init();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x017c A[Catch: Exception -> 0x01e4, TryCatch #0 {Exception -> 0x01e4, blocks: (B:3:0x0004, B:5:0x0073, B:9:0x00b1, B:11:0x010e, B:12:0x0118, B:14:0x011d, B:35:0x0159, B:36:0x0164, B:37:0x0171, B:38:0x017c, B:21:0x0132, B:24:0x013c, B:27:0x0146, B:39:0x0186, B:8:0x00ae), top: B:44:0x0004, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void init() {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsgeyser.sdk.ui.AboutDialogActivity.init():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$init$0$com-appsgeyser-sdk-ui-AboutDialogActivity  reason: not valid java name */
    public /* synthetic */ void m248lambda$init$0$comappsgeysersdkuiAboutDialogActivity(View view) {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + getPackageName() + "&reviewId=0")));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$init$1$com-appsgeyser-sdk-ui-AboutDialogActivity  reason: not valid java name */
    public /* synthetic */ void m249lambda$init$1$comappsgeysersdkuiAboutDialogActivity(boolean z) {
        if (z) {
            this.rate.setVisibility(0);
        } else {
            this.rate.setVisibility(8);
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable(CONFIG_PHP_KEY, this.configPhp);
        super.onSaveInstanceState(bundle);
    }
}
