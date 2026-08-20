package com.yandex.metrica.networktasks.api;

import java.util.Map;
/* loaded from: classes5.dex */
public class ResponseDataHolder {

    /* renamed from: a  reason: collision with root package name */
    private int f16259a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f16260b;

    /* renamed from: c  reason: collision with root package name */
    private Map f16261c;

    /* renamed from: d  reason: collision with root package name */
    private final ResponseValidityChecker f16262d;

    public ResponseDataHolder(ResponseValidityChecker responseValidityChecker) {
        this.f16262d = responseValidityChecker;
    }

    public int getResponseCode() {
        return this.f16259a;
    }

    public byte[] getResponseData() {
        return this.f16260b;
    }

    public Map getResponseHeaders() {
        return this.f16261c;
    }

    public boolean isValidResponse() {
        return this.f16262d.isResponseValid(this.f16259a);
    }

    public void setResponseCode(int i) {
        this.f16259a = i;
    }

    public void setResponseData(byte[] bArr) {
        this.f16260b = bArr;
    }

    public void setResponseHeaders(Map map) {
        this.f16261c = map;
    }
}
