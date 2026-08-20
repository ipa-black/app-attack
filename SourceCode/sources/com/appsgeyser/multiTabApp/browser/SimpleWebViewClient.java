package com.appsgeyser.multiTabApp.browser;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.MailTo;
import android.net.Uri;
import android.net.http.SslError;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.ui.dialog.SslErrorDialog;
import java.net.URISyntaxException;
import java.util.Map;
/* loaded from: classes2.dex */
public class SimpleWebViewClient extends WebViewClient {
    private static final String playstorePartialUrl = "/store/apps/details?id=";
    protected Context _context;

    public SimpleWebViewClient(Context context) {
        this._context = context;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            if (str.contains("youtube.com/")) {
                Factory.getInstance().getMainNavigationActivity().blockBannerviewAdsPlacement();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (!str.contains("whatsapp://") && !str.contains("wa.me") && !str.contains("whatsapp.com")) {
            if (MailTo.isMailTo(str)) {
                _handleMailTo(str);
                return true;
            } else if (str.startsWith("tel:")) {
                this._context.startActivity(new Intent("android.intent.action.DIAL", Uri.parse(str)));
                return true;
            } else {
                if (!str.startsWith("market:") && !str.startsWith("geo:")) {
                    if (str.startsWith("smsto:")) {
                        _handleSmsTo(str);
                        return true;
                    } else if (str.startsWith("intent://")) {
                        _handleIntent(str, webView);
                        return true;
                    } else if (str.contains(playstorePartialUrl)) {
                        _handlePlayStoreLink(str);
                        return true;
                    } else {
                        if (!str.startsWith("http:") && !str.startsWith("https:") && !str.startsWith("file:") && !str.equals("about:blank")) {
                            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                            if (this._context.getPackageManager().resolveActivity(intent, 0) != null) {
                                this._context.startActivity(intent);
                                return true;
                            }
                        }
                        return false;
                    }
                }
                this._context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                return true;
            }
        }
        try {
            Intent intent2 = new Intent();
            intent2.setData(Uri.parse(str));
            intent2.setPackage("com.whatsapp");
            this._context.startActivity(intent2);
        } catch (ActivityNotFoundException unused) {
            this._context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.whatsapp")));
        }
        return true;
    }

    private void _handleSmsTo(String str) {
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
        this._context.startActivity(intent);
    }

    private void _handleMailTo(String str) {
        MailTo parse = MailTo.parse(str);
        if (parse.getTo().length() > 0) {
            Map<String, String> headers = parse.getHeaders();
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.EMAIL", new String[]{parse.getTo()});
            intent.putExtra("android.intent.extra.SUBJECT", parse.getSubject());
            intent.putExtra("android.intent.extra.CC", parse.getCc());
            if (headers.containsKey("bcc")) {
                intent.putExtra("android.intent.extra.BCC", headers.get("bcc"));
            }
            intent.putExtra("android.intent.extra.TEXT", parse.getBody());
            this._context.startActivity(intent);
        }
    }

    private void _handleIntent(String str, WebView webView) {
        try {
            Intent parseUri = Intent.parseUri(str, 1);
            if (parseUri != null) {
                webView.stopLoading();
                if (this._context.getPackageManager().resolveActivity(parseUri, 65536) != null) {
                    this._context.startActivity(parseUri);
                } else {
                    String stringExtra = parseUri.getStringExtra("browser_fallback_url");
                    if (!stringExtra.startsWith("market:") && !str.startsWith("geo:")) {
                        if (stringExtra.contains(playstorePartialUrl)) {
                            _handlePlayStoreLink(stringExtra);
                        } else {
                            webView.loadUrl(stringExtra);
                        }
                    }
                    this._context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(stringExtra)));
                }
            }
        } catch (URISyntaxException e2) {
            Log.e("SimpleWebView", "Can't resolve intent://", e2);
        }
    }

    private void _handlePlayStoreLink(String str) {
        String substring = str.substring(str.indexOf(playstorePartialUrl) + 23);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("market://details?id=" + substring));
        this._context.startActivity(intent);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        new SslErrorDialog(this._context).execute(webView, sslErrorHandler, sslError);
    }
}
