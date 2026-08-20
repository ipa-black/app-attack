package com.bykv.vk.openvk.preload.geckox.f;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: VersionedResLoader.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, a> f8535a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public AtomicBoolean f8536b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    public String f8537c;

    /* renamed from: d  reason: collision with root package name */
    private String f8538d;

    public b(Context context, String str, File file) {
        if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("access key empty");
        }
        this.f8538d = str;
        if (file == null) {
            this.f8537c = new File(context.getFilesDir(), "gecko_offline_res_x" + File.separator + str).getAbsolutePath();
        } else {
            this.f8537c = new File(file, str).getAbsolutePath();
        }
    }

    public final a a(String str) {
        a aVar;
        int indexOf = str.indexOf("/");
        if (indexOf == -1) {
            new RuntimeException("channel：".concat(String.valueOf(str)));
        }
        String substring = str.substring(0, indexOf);
        synchronized (this.f8535a) {
            aVar = this.f8535a.get(substring);
            if (aVar == null) {
                aVar = new a(this.f8537c, substring);
                this.f8535a.put(substring, aVar);
            }
        }
        return aVar;
    }

    public final Map<String, Long> a() {
        HashMap hashMap = new HashMap();
        synchronized (this.f8535a) {
            Collection<a> values = this.f8535a.values();
            if (values == null) {
                return hashMap;
            }
            for (a aVar : values) {
                hashMap.put(aVar.f8529b, aVar.f8531d);
            }
            return hashMap;
        }
    }
}
