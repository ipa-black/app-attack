package com.yandex.metrica.networktasks.api;

import com.yandex.metrica.networktasks.api.NetworkTask;
import java.util.Arrays;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class RequestDataHolder {

    /* renamed from: a  reason: collision with root package name */
    private NetworkTask.Method f16254a = NetworkTask.Method.GET;

    /* renamed from: b  reason: collision with root package name */
    private final Map f16255b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private byte[] f16256c = null;

    /* renamed from: d  reason: collision with root package name */
    private Long f16257d;

    /* renamed from: e  reason: collision with root package name */
    private Integer f16258e;

    public void applySendTime(long j) {
        this.f16257d = Long.valueOf(j);
        this.f16258e = Integer.valueOf(((GregorianCalendar) GregorianCalendar.getInstance()).getTimeZone().getOffset(TimeUnit.MILLISECONDS.toSeconds(j) * 1000) / 1000);
    }

    public Map getHeaders() {
        return this.f16255b;
    }

    public NetworkTask.Method getMethod() {
        return this.f16254a;
    }

    public byte[] getPostData() {
        return this.f16256c;
    }

    public Long getSendTimestamp() {
        return this.f16257d;
    }

    public Integer getSendTimezoneSec() {
        return this.f16258e;
    }

    public void setHeader(String str, String... strArr) {
        this.f16255b.put(str, Arrays.asList(strArr));
    }

    public void setPostData(byte[] bArr) {
        this.f16254a = NetworkTask.Method.POST;
        this.f16256c = bArr;
    }
}
