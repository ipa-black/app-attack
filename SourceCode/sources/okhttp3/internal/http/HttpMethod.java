package okhttp3.internal.http;

import androidx.browser.trusted.sharing.ShareTarget;
import com.android.volley.toolbox.HttpClientStack;
import com.ironsource.mediationsdk.config.VersionInfo;
/* loaded from: classes5.dex */
public final class HttpMethod {
    public static boolean invalidatesCache(String str) {
        return str.equals(ShareTarget.METHOD_POST) || str.equals(HttpClientStack.HttpPatch.METHOD_NAME) || str.equals("PUT") || str.equals("DELETE") || str.equals("MOVE");
    }

    public static boolean requiresRequestBody(String str) {
        return str.equals(ShareTarget.METHOD_POST) || str.equals("PUT") || str.equals(HttpClientStack.HttpPatch.METHOD_NAME) || str.equals("PROPPATCH") || str.equals("REPORT");
    }

    public static boolean permitsRequestBody(String str) {
        return (str.equals(ShareTarget.METHOD_GET) || str.equals(VersionInfo.GIT_BRANCH)) ? false : true;
    }

    public static boolean redirectsWithBody(String str) {
        return str.equals("PROPFIND");
    }

    public static boolean redirectsToGet(String str) {
        return !str.equals("PROPFIND");
    }

    private HttpMethod() {
    }
}
