package com.explorestack.iab.vast.processor;

import android.os.Bundle;
import android.text.TextUtils;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.VastUrlProcessorRegistry;
import com.explorestack.iab.vast.tags.AdContentTag;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class d {

    /* renamed from: b  reason: collision with root package name */
    public VastAd f9589b;

    /* renamed from: a  reason: collision with root package name */
    public final List<String> f9588a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public int f9590c = -1;

    /* renamed from: d  reason: collision with root package name */
    public boolean f9591d = true;

    public List<String> a() {
        return this.f9588a;
    }

    public void a(int i) {
        this.f9590c = i;
    }

    public void a(VastAd vastAd) {
        this.f9589b = vastAd;
    }

    public void a(AdContentTag adContentTag, int i) {
        a(i);
        Bundle bundle = new Bundle();
        bundle.putInt(VastRequest.PARAMS_ERROR_CODE, i);
        List<String> errorUrlList = adContentTag.getErrorUrlList();
        if (errorUrlList == null || errorUrlList.isEmpty()) {
            return;
        }
        for (String str : errorUrlList) {
            String a2 = VastUrlProcessorRegistry.a(str, bundle);
            if (!TextUtils.isEmpty(a2)) {
                this.f9588a.add(a2);
            }
        }
    }

    public void a(boolean z) {
        this.f9591d = z;
    }

    public int b() {
        return this.f9590c;
    }

    public VastAd c() {
        return this.f9589b;
    }

    public boolean d() {
        return this.f9589b != null;
    }

    public boolean e() {
        return this.f9591d;
    }
}
