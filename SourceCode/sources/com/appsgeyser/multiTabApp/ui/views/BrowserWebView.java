package com.appsgeyser.multiTabApp.ui.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.webkit.URLUtil;
import android.webkit.WebView;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.ui.navigationwidget.INavigationWidget;
import com.google.android.exoplayer2.C;
import com.w_19998775.R;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* loaded from: classes2.dex */
public class BrowserWebView extends WebView {
    private boolean _firstUrl;
    private INavigationWidget _navigationWidget;
    private Context context;
    private GestureDetector gestureDetector;
    private OnScrollChangedCallback mOnScrollChangedCallback;

    /* loaded from: classes2.dex */
    public interface OnScrollChangedCallback {
        void onScroll(int i, int i2, int i3, int i4);
    }

    public BrowserWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._firstUrl = true;
        this._navigationWidget = null;
        this.context = context;
    }

    private void init() {
        this._navigationWidget = Factory.getInstance().getNavigationWidget();
        this._firstUrl = false;
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        if (this._firstUrl) {
            init();
        }
        INavigationWidget iNavigationWidget = this._navigationWidget;
        if (iNavigationWidget != null && iNavigationWidget.isVisible() && !URLUtil.isValidUrl(str)) {
            if (("http://" + str).matches("(news|(ht|f)tp(s?)\\://){1}[\\S\\.]+\\.[\\S\\.]+")) {
                str = "http://" + str;
            } else {
                str = getSearchUrl(str);
            }
        }
        if (str.contains("javascript:(function(){  })()")) {
            return;
        }
        super.loadUrl(str);
    }

    private String getSearchUrl(String str) {
        try {
            String str2 = getResources().getString(R.string.searchUrl) + URLEncoder.encode(str, C.UTF8_NAME);
            Factory.getInstance().getMainNavigationActivity();
            return _getUrlWithAllArguments(str2);
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return str;
        }
    }

    private String _getUrlWithAllArguments(String str) {
        Factory.getInstance().getMainNavigationActivity();
        return str;
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        OnScrollChangedCallback onScrollChangedCallback = this.mOnScrollChangedCallback;
        if (onScrollChangedCallback != null) {
            onScrollChangedCallback.onScroll(i, i2, i3, i4);
        }
    }

    public OnScrollChangedCallback getOnScrollChangedCallback(OnScrollChangedCallback onScrollChangedCallback) {
        return this.mOnScrollChangedCallback;
    }

    public void setOnScrollChangedCallback(OnScrollChangedCallback onScrollChangedCallback) {
        this.mOnScrollChangedCallback = onScrollChangedCallback;
    }
}
