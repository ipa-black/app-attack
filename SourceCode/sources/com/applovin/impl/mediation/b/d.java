package com.applovin.impl.mediation.b;

import android.net.Uri;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.network.h;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.adapter.MaxAdapterError;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f4836a;

    /* renamed from: e  reason: collision with root package name */
    private final String f4837e;

    /* renamed from: f  reason: collision with root package name */
    private final com.applovin.impl.mediation.a.f f4838f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, String> f4839g;

    /* renamed from: h  reason: collision with root package name */
    private final Map<String, String> f4840h;
    private final MaxError i;

    public d(String str, Map<String, String> map, MaxError maxError, com.applovin.impl.mediation.a.f fVar, n nVar) {
        super("TaskFireMediationPostbacks", nVar);
        this.f4836a = str;
        this.f4837e = str + "_urls";
        this.f4839g = Utils.toUrlSafeMap(map, nVar);
        this.i = maxError != null ? maxError : new MaxErrorImpl(-1);
        this.f4838f = fVar;
        Map<String, String> map2 = CollectionUtils.map(7);
        map2.put("AppLovin-Event-Type", str);
        map2.put("AppLovin-Ad-Network-Name", fVar.S());
        if (fVar instanceof com.applovin.impl.mediation.a.a) {
            com.applovin.impl.mediation.a.a aVar = (com.applovin.impl.mediation.a.a) fVar;
            map2.put("AppLovin-Ad-Unit-Id", aVar.getAdUnitId());
            map2.put("AppLovin-Ad-Format", aVar.getFormat().getLabel());
            map2.put("AppLovin-Third-Party-Ad-Placement-ID", aVar.p());
        }
        if (maxError != null) {
            map2.put("AppLovin-Error-Code", String.valueOf(maxError.getCode()));
            map2.put("AppLovin-Error-Message", maxError.getMessage());
        }
        this.f4840h = map2;
    }

    private String a(String str, MaxError maxError) {
        int i;
        String str2;
        if (maxError instanceof MaxAdapterError) {
            MaxAdapterError maxAdapterError = (MaxAdapterError) maxError;
            i = maxAdapterError.getMediatedNetworkErrorCode();
            str2 = maxAdapterError.getMediatedNetworkErrorMessage();
        } else {
            i = 0;
            str2 = "";
        }
        return str.replace("{ERROR_CODE}", String.valueOf(maxError.getCode())).replace("{ERROR_MESSAGE}", StringUtils.encodeUriString(maxError.getMessage(), d())).replace("{THIRD_PARTY_SDK_ERROR_CODE}", String.valueOf(i)).replace("{THIRD_PARTY_SDK_ERROR_MESSAGE}", StringUtils.encodeUriString(str2, d()));
    }

    private Map<String, String> a() {
        try {
            return JsonUtils.toStringMap(new JSONObject((String) this.f5674b.a(com.applovin.impl.sdk.c.a.i)));
        } catch (JSONException unused) {
            return Collections.EMPTY_MAP;
        }
    }

    private void a(String str, Map<String, Object> map) {
        d().X().a(h.o().c(str).b(ShareTarget.METHOD_POST).b(this.f4840h).a(false).c(map).b(((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.a.Y)).booleanValue()).a());
    }

    private String b(String str, Map<String, String> map) {
        for (String str2 : map.keySet()) {
            str = str.replace(str2, StringUtils.emptyIfNull(map.get(str2)));
        }
        return str;
    }

    @Override // java.lang.Runnable
    public void run() {
        List<String> g2 = this.f4838f.g(this.f4837e);
        Map<String, String> a2 = a();
        for (String str : g2) {
            Uri parse = Uri.parse(a(b(str, this.f4839g), this.i));
            Uri.Builder clearQuery = parse.buildUpon().clearQuery();
            Map<String, Object> map = CollectionUtils.map(a2.size());
            for (String str2 : parse.getQueryParameterNames()) {
                String queryParameter = parse.getQueryParameter(str2);
                if (a2.containsKey(queryParameter)) {
                    map.put(str2, this.f4838f.h(a2.get(queryParameter)));
                } else {
                    clearQuery.appendQueryParameter(str2, queryParameter);
                }
            }
            a(clearQuery.build().toString(), map);
        }
    }
}
