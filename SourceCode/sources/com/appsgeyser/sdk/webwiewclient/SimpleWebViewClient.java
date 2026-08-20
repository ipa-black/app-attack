package com.appsgeyser.sdk.webwiewclient;

import android.app.Activity;
import android.content.Intent;
import android.net.MailTo;
import android.net.Uri;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* loaded from: classes2.dex */
class SimpleWebViewClient extends WebViewClient {
    Activity activity;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SimpleWebViewClient(Activity activity) {
        this.activity = activity;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (MailTo.isMailTo(str)) {
            handleMailTo(str);
            return true;
        } else if (str.startsWith("tel:")) {
            this.activity.startActivity(new Intent("android.intent.action.DIAL", Uri.parse(str)));
            return true;
        } else {
            if (!str.startsWith("market:") && !str.startsWith("geo:")) {
                if (str.startsWith("smsto:")) {
                    handleSmsTo(str);
                    return true;
                }
                if (!str.startsWith("http:") && !str.startsWith("https:") && !str.startsWith("file:")) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    if (this.activity.getPackageManager().resolveActivity(intent, 0) != null) {
                        this.activity.startActivity(intent);
                        return true;
                    }
                }
                return false;
            }
            this.activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            return true;
        }
    }

    private void handleSmsTo(String str) {
        String str2;
        String[] split = str.split(":");
        String str3 = split[1];
        if (split.length <= 1) {
            str2 = "";
        } else {
            str2 = split[2];
        }
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + str3));
        intent.putExtra("address", str3);
        intent.putExtra("sms_body", str2);
        this.activity.startActivity(intent);
    }

    private void handleMailTo(String str) {
        MailTo parse = MailTo.parse(str);
        if (TextUtils.isEmpty(parse.getTo())) {
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.EMAIL", new String[]{parse.getTo()});
        intent.putExtra("android.intent.extra.SUBJECT", parse.getSubject());
        intent.putExtra("android.intent.extra.CC", parse.getCc());
        intent.putExtra("android.intent.extra.TEXT", parse.getBody());
        this.activity.startActivity(intent);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        new SslErrorDialog(this.activity).execute(webView, sslErrorHandler, sslError);
    }
}
