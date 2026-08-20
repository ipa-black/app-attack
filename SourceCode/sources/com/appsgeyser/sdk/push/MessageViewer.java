package com.appsgeyser.sdk.push;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.appsgeyser.sdk.R;
/* loaded from: classes2.dex */
public class MessageViewer extends Activity {
    private static final String ENCODING = "utf-8";
    private static final String MESSAGE_KEY = "com.appsgeyser.sdk.push.MessageViewer.message";
    private static final String MESSAGE_VIEWER = "com.appsgeyser.sdk.push.MessageViewer";
    private static final String MIME_TYPE = "text/html";
    private static final String TITLE_KEY = "com.appsgeyser.sdk.push.MessageViewer.title";

    public static void launchWithContent(Context context, String str, String str2) {
        Intent intent = new Intent(context, MessageViewer.class);
        intent.addFlags(67108864);
        intent.addFlags(268435456);
        intent.addFlags(2097152);
        intent.putExtra(TITLE_KEY, str);
        intent.putExtra(MESSAGE_KEY, str2);
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.appsgeysersdk_message_viewer);
        Intent intent = getIntent();
        if (intent != null) {
            ActionBar actionBar = getActionBar();
            if (actionBar != null) {
                actionBar.hide();
            }
            TextView textView = (TextView) findViewById(R.id.message_viewer_app_name_text_view);
            PackageManager packageManager = getPackageManager();
            CharSequence applicationLabel = packageManager.getApplicationLabel(getApplicationInfo());
            if (applicationLabel != null) {
                textView.setText(applicationLabel);
            } else {
                textView.setVisibility(8);
            }
            ImageView imageView = (ImageView) findViewById(R.id.message_viewer_imageView_icon);
            Drawable applicationIcon = packageManager.getApplicationIcon(getApplicationInfo());
            if (applicationIcon != null) {
                Resources resources = getResources();
                int i = (int) ((resources.getDisplayMetrics().density * 36.0f) + 0.5f);
                imageView.setImageDrawable(new BitmapDrawable(resources, Bitmap.createScaledBitmap(((BitmapDrawable) applicationIcon).getBitmap(), i, i, true)));
            } else {
                imageView.setVisibility(8);
            }
            if (imageView.getVisibility() == 8 && textView.getVisibility() == 8) {
                ((RelativeLayout) findViewById(R.id.message_viewer_app_bar_fake)).setVisibility(8);
            }
            WebView webView = (WebView) findViewById(R.id.message_viewer_web_view);
            String stringExtra = intent.getStringExtra(TITLE_KEY);
            String stringExtra2 = intent.getStringExtra(MESSAGE_KEY);
            if (stringExtra != null && stringExtra2 != null) {
                webView.loadDataWithBaseURL(null, createHtml(stringExtra, stringExtra2), MIME_TYPE, ENCODING, null);
                WebSettings settings = webView.getSettings();
                settings.setJavaScriptEnabled(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(true);
                settings.setAllowFileAccess(true);
                settings.setGeolocationEnabled(true);
                settings.setCacheMode(-1);
                webView.setVerticalScrollBarEnabled(false);
                webView.setHorizontalScrollBarEnabled(false);
                settings.setLoadWithOverviewMode(true);
                settings.setUseWideViewPort(true);
                webView.setInitialScale(0);
            }
            findViewById(R.id.message_viewer_button).setOnClickListener(new View.OnClickListener() { // from class: com.appsgeyser.sdk.push.MessageViewer.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent launchIntentForPackage = this.getPackageManager().getLaunchIntentForPackage(this.getPackageName());
                    launchIntentForPackage.addFlags(67108864);
                    launchIntentForPackage.addFlags(268435456);
                    launchIntentForPackage.addFlags(2097152);
                    this.startActivity(launchIntentForPackage);
                }
            });
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            finish();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (isFinishing()) {
            finish();
        }
    }

    private String createHtml(String str, String str2) {
        return "<!DOCTYPE html><html><head><title></title><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"><style>body {background-color:#ffffff;background-repeat:no-repeat;background-position:top left;background-attachment:fixed;}h1{font-family:Arial, sans-serif;font-size:16px;color:#000000;background-color:#ffffff;}p {font-family:Georgia, serif;font-size:14px;font-style:normal;font-weight:normal;color:#000000;background-color:#ffffff;}</style></head><body><h1>" + str + "</h1>" + str2 + "</body></html>";
    }
}
