package com.yandex.metrica.impl.ob;

import android.text.Layout;
import android.text.TextUtils;
import android.widget.TextView;
/* loaded from: classes5.dex */
public class Fl {

    /* renamed from: a  reason: collision with root package name */
    private final C2008yl f12949a;

    public Fl(C2008yl c2008yl) {
        this.f12949a = c2008yl;
    }

    public int a(TextView textView) {
        int i = 0;
        try {
            if (TextUtils.isEmpty(textView.getText()) || textView.getVisibility() != 0) {
                return 0;
            }
            String obj = textView.getText().toString();
            Layout layout = textView.getLayout();
            i = obj.length();
            if (layout != null) {
                int lineCount = textView.getLineCount() - 1;
                TextUtils.TruncateAt ellipsize = textView.getEllipsize();
                return (ellipsize == null || lineCount < 0) ? i : (lineCount == 0 || ellipsize == TextUtils.TruncateAt.END) ? i - layout.getEllipsisCount(lineCount) : i;
            }
            return i;
        } catch (Throwable th) {
            this.f12949a.a("ui_parsing_visibility", th);
            return i;
        }
    }
}
