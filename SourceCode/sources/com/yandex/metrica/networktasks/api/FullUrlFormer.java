package com.yandex.metrica.networktasks.api;

import android.net.Uri;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class FullUrlFormer {

    /* renamed from: a  reason: collision with root package name */
    private List f16232a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private int f16233b = -1;

    /* renamed from: c  reason: collision with root package name */
    private String f16234c;

    /* renamed from: d  reason: collision with root package name */
    private final IParamsAppender f16235d;

    /* renamed from: e  reason: collision with root package name */
    private final ConfigProvider f16236e;

    public FullUrlFormer(IParamsAppender iParamsAppender, ConfigProvider configProvider) {
        this.f16235d = iParamsAppender;
        this.f16236e = configProvider;
    }

    public void buildAndSetFullHostUrl() {
        Uri.Builder buildUpon = Uri.parse((String) this.f16232a.get(this.f16233b)).buildUpon();
        this.f16235d.appendParams(buildUpon, this.f16236e.getConfig());
        this.f16234c = buildUpon.build().toString();
    }

    public List getAllHosts() {
        return this.f16232a;
    }

    public String getUrl() {
        return new com.yandex.metrica.networktasks.impl.b(this.f16234c).a();
    }

    public boolean hasMoreHosts() {
        return this.f16233b + 1 < this.f16232a.size();
    }

    public void incrementAttemptNumber() {
        this.f16233b++;
    }

    public void setHosts(List list) {
        if (list == null) {
            list = new ArrayList();
        }
        this.f16232a = list;
    }
}
