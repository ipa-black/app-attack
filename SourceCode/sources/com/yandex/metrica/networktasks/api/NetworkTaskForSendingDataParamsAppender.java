package com.yandex.metrica.networktasks.api;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
/* loaded from: classes5.dex */
public class NetworkTaskForSendingDataParamsAppender {

    /* renamed from: a  reason: collision with root package name */
    private final RequestBodyEncrypter f16252a;

    public NetworkTaskForSendingDataParamsAppender(RequestBodyEncrypter requestBodyEncrypter) {
        this.f16252a = requestBodyEncrypter;
    }

    public void appendCommitHash(Uri.Builder builder, String str, String str2) {
        if (str2 == null || !str2.contains("source") || TextUtils.isEmpty(str)) {
            return;
        }
        builder.appendQueryParameter("commit_hash", str);
    }

    public void appendEncryptedData(Uri.Builder builder) {
        if (this.f16252a.getEncryptionMode() == RequestBodyEncryptionMode.AES_RSA) {
            builder.appendQueryParameter("encrypted_request", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        }
    }
}
