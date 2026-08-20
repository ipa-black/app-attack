package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Ui;
import com.yandex.metrica.networktasks.api.NetworkResponseHandler;
import com.yandex.metrica.networktasks.api.ResponseDataHolder;
import java.util.List;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.p2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1774p2 implements NetworkResponseHandler<Ui> {

    /* renamed from: a  reason: collision with root package name */
    private final Ti f15356a;

    /* renamed from: b  reason: collision with root package name */
    private final C1924v9 f15357b;

    public C1774p2() {
        this(new Ti(), new C1924v9());
    }

    @Override // com.yandex.metrica.networktasks.api.NetworkResponseHandler
    public Object handle(ResponseDataHolder responseDataHolder) {
        if (200 == responseDataHolder.getResponseCode()) {
            byte[] responseData = responseDataHolder.getResponseData();
            Map responseHeaders = responseDataHolder.getResponseHeaders();
            List list = responseHeaders != null ? (List) responseHeaders.get("Content-Encoding") : null;
            if (!A2.b(list) && "encrypted".equals(list.get(0))) {
                responseData = this.f15357b.a(responseDataHolder.getResponseData(), "hBnBQbZrmjPXEWVJ");
            }
            if (responseData != null) {
                Ui a2 = this.f15356a.a(responseData);
                if (Ui.a.OK == a2.A()) {
                    return a2;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    C1774p2(Ti ti, C1924v9 c1924v9) {
        this.f15356a = ti;
        this.f15357b = c1924v9;
    }
}
