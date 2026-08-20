package com.explorestack.iab.vast;

import android.os.Bundle;
import com.explorestack.iab.vast.processor.url.UrlProcessor;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class VastUrlProcessorRegistry {

    /* renamed from: a  reason: collision with root package name */
    public static List<UrlProcessor> f9498a = new a();

    /* loaded from: classes2.dex */
    public class a extends ArrayList<UrlProcessor> {
        public a() {
            add(new com.explorestack.iab.vast.processor.url.a());
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(String str);
    }

    public static String a(String str, Bundle bundle) {
        if (str == null) {
            return null;
        }
        for (UrlProcessor urlProcessor : f9498a) {
            str = urlProcessor.prepare(str, bundle);
        }
        return str;
    }

    public static void a(List<String> list, Bundle bundle, b bVar) {
        if (list == null || list.isEmpty() || bVar == null) {
            return;
        }
        for (String str : list) {
            bVar.a(a(str, bundle));
        }
    }

    public static void register(UrlProcessor urlProcessor) {
        f9498a.add(urlProcessor);
    }

    public static void unregister(UrlProcessor urlProcessor) {
        f9498a.remove(urlProcessor);
    }
}
