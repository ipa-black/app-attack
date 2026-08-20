package com.yandex.metrica.networktasks.api;

import com.yandex.metrica.networktasks.api.DefaultResponseParser;
/* loaded from: classes5.dex */
public class DefaultNetworkResponseHandler implements NetworkResponseHandler {

    /* renamed from: a  reason: collision with root package name */
    private final DefaultResponseParser f16226a;

    public DefaultNetworkResponseHandler() {
        this(new DefaultResponseParser());
    }

    DefaultNetworkResponseHandler(DefaultResponseParser defaultResponseParser) {
        this.f16226a = defaultResponseParser;
    }

    @Override // com.yandex.metrica.networktasks.api.NetworkResponseHandler
    public DefaultResponseParser.Response handle(ResponseDataHolder responseDataHolder) {
        if (200 == responseDataHolder.getResponseCode()) {
            return this.f16226a.parse(responseDataHolder.getResponseData());
        }
        return null;
    }
}
