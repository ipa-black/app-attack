package com.appsgeyser.sdk.webwiewclient;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.appsgeyser.sdk.configuration.Constants;
/* loaded from: classes2.dex */
class SslErrorDialog {
    private final Context activity;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SslErrorDialog(Context context) {
        this.activity = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void execute(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
        if (!sslError.getUrl().equals(webView.getUrl())) {
            sslErrorHandler.proceed();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.activity);
        builder.setMessage(Constants.SSL_ERROR_DIALOG_MESSAGE).setTitle(Constants.SSL_ERROR_DIALOG_TITLE).setPositiveButton(Constants.SSL_ERROR_DIALOG_BUTTON_POSITIVE, new DialogInterface.OnClickListener() { // from class: com.appsgeyser.sdk.webwiewclient.SslErrorDialog.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                sslErrorHandler.proceed();
            }
        }).setNegativeButton(Constants.SSL_ERROR_DIALOG_BUTTON_NEGATIVE, new DialogInterface.OnClickListener() { // from class: com.appsgeyser.sdk.webwiewclient.SslErrorDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                sslErrorHandler.cancel();
            }
        });
        builder.create().show();
    }
}
