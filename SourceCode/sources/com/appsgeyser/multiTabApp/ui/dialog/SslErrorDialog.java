package com.appsgeyser.multiTabApp.ui.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.net.http.SslError;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.appsgeyser.multiTabApp.Factory;
import com.w_19998775.R;
/* loaded from: classes2.dex */
public class SslErrorDialog {
    private Context _activity;

    public SslErrorDialog(Context context) {
        this._activity = context;
    }

    public void execute(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
        if (!sslError.getUrl().equals(webView.getUrl())) {
            sslErrorHandler.proceed();
            return;
        }
        final AlertDialog create = new AlertDialog.Builder(this._activity).create();
        LinearLayout linearLayout = (LinearLayout) Factory.getInstance().getMainNavigationActivity().getLayoutInflater().inflate(R.layout.dialog_2_buttons, (ViewGroup) null);
        TextView textView = (TextView) linearLayout.findViewById(R.id.dialog_message);
        TextView textView2 = (TextView) linearLayout.findViewById(R.id.dialog_positive_button);
        TextView textView3 = (TextView) linearLayout.findViewById(R.id.dialog_negative_button);
        TextView textView4 = (TextView) linearLayout.findViewById(R.id.dialog_title);
        create.setView(linearLayout);
        if (create.getWindow() != null) {
            create.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
        textView4.setText(R.string.ssl_error_title);
        textView.setText(R.string.ssl_error_message);
        textView2.setText(this._activity.getString(R.string.ssl_error_positive));
        textView3.setText(this._activity.getString(R.string.ssl_error_negative));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.appsgeyser.multiTabApp.ui.dialog.SslErrorDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                sslErrorHandler.proceed();
                create.dismiss();
            }
        });
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.appsgeyser.multiTabApp.ui.dialog.SslErrorDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                sslErrorHandler.cancel();
                create.dismiss();
            }
        });
        create.show();
    }
}
