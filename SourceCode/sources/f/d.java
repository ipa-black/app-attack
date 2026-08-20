package f;

import androidx.browser.trusted.sharing.ShareTarget;
import java.net.HttpURLConnection;
import java.net.URLConnection;
/* loaded from: classes5.dex */
public enum d {
    Get(ShareTarget.METHOD_GET),
    Post(ShareTarget.METHOD_POST);
    

    /* renamed from: a  reason: collision with root package name */
    public final String f16347a;

    d(String str) {
        this.f16347a = str;
    }

    public void a(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpURLConnection) {
            ((HttpURLConnection) uRLConnection).setRequestMethod(this.f16347a);
        }
    }
}
