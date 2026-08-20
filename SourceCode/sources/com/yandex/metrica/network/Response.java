package com.yandex.metrica.network;

import com.yandex.metrica.network.impl.e;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class Response {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f16212a;

    /* renamed from: b  reason: collision with root package name */
    private final int f16213b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f16214c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f16215d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f16216e;

    /* renamed from: f  reason: collision with root package name */
    private final Throwable f16217f;

    public Response(Throwable th) {
        this(false, 0, new byte[0], new byte[0], new HashMap(), th);
    }

    public Response(boolean z, int i, byte[] bArr, byte[] bArr2, Map map, Throwable th) {
        this.f16212a = z;
        this.f16213b = i;
        this.f16214c = bArr;
        this.f16215d = bArr2;
        this.f16216e = map == null ? Collections.emptyMap() : e.a(map);
        this.f16217f = th;
    }

    public int getCode() {
        return this.f16213b;
    }

    public byte[] getErrorData() {
        return this.f16215d;
    }

    public Throwable getException() {
        return this.f16217f;
    }

    public Map getHeaders() {
        return this.f16216e;
    }

    public byte[] getResponseData() {
        return this.f16214c;
    }

    public boolean isCompleted() {
        return this.f16212a;
    }

    public String toString() {
        return "Response{completed=" + this.f16212a + ", code=" + this.f16213b + ", responseDataLength=" + this.f16214c.length + ", errorDataLength=" + this.f16215d.length + ", headers=" + this.f16216e + ", exception=" + this.f16217f + '}';
    }
}
