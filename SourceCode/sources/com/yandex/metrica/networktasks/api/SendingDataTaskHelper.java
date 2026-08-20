package com.yandex.metrica.networktasks.api;

import com.yandex.metrica.networktasks.api.DefaultResponseParser;
import com.yandex.metrica.networktasks.impl.h;
import java.io.IOException;
/* loaded from: classes5.dex */
public class SendingDataTaskHelper {

    /* renamed from: a  reason: collision with root package name */
    private final RequestBodyEncrypter f16263a;

    /* renamed from: b  reason: collision with root package name */
    private final Compressor f16264b;

    /* renamed from: c  reason: collision with root package name */
    private final h f16265c;

    /* renamed from: d  reason: collision with root package name */
    private final RequestDataHolder f16266d;

    /* renamed from: e  reason: collision with root package name */
    private final ResponseDataHolder f16267e;

    /* renamed from: f  reason: collision with root package name */
    private final NetworkResponseHandler f16268f;

    public SendingDataTaskHelper(RequestBodyEncrypter requestBodyEncrypter, Compressor compressor, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, NetworkResponseHandler networkResponseHandler) {
        this(requestBodyEncrypter, compressor, new h(), requestDataHolder, responseDataHolder, networkResponseHandler);
    }

    public SendingDataTaskHelper(RequestBodyEncrypter requestBodyEncrypter, Compressor compressor, h hVar, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, NetworkResponseHandler networkResponseHandler) {
        this.f16263a = requestBodyEncrypter;
        this.f16264b = compressor;
        this.f16265c = hVar;
        this.f16266d = requestDataHolder;
        this.f16267e = responseDataHolder;
        this.f16268f = networkResponseHandler;
    }

    public boolean isResponseValid() {
        DefaultResponseParser.Response response = (DefaultResponseParser.Response) this.f16268f.handle(this.f16267e);
        return response != null && "accepted".equals(response.mStatus);
    }

    public void onPerformRequest() {
        RequestDataHolder requestDataHolder = this.f16266d;
        this.f16265c.getClass();
        requestDataHolder.applySendTime(System.currentTimeMillis());
    }

    public boolean prepareAndSetPostData(byte[] bArr) {
        byte[] encrypt;
        try {
            byte[] compress = this.f16264b.compress(bArr);
            if (compress == null || (encrypt = this.f16263a.encrypt(compress)) == null) {
                return false;
            }
            this.f16266d.setPostData(encrypt);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
