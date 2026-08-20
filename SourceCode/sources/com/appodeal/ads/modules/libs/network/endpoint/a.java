package com.appodeal.ads.modules.libs.network.endpoint;

import com.appodeal.ads.modules.common.internal.ext.ByteArrayExtKt;
import com.appodeal.ads.modules.libs.network.AppodealEndpoint;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
/* loaded from: classes2.dex */
public final class a implements AppodealEndpoint {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedList f7026a = new LinkedList();

    /* renamed from: b  reason: collision with root package name */
    public String f7027b = "https://a.appbaqend.com";

    public static String a(String str) {
        byte[] bArr;
        String hexString;
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-224");
            messageDigest.update(bytes);
            bArr = messageDigest.digest();
        } catch (NoSuchAlgorithmException unused) {
            bArr = null;
        }
        return (bArr == null || (hexString = ByteArrayExtKt.toHexString(bArr)) == null) ? "appbaqend" : hexString;
    }

    @Override // com.appodeal.ads.modules.libs.network.AppodealEndpoint
    public final String getActiveEndpoint() {
        String str = (String) this.f7026a.peek();
        return str == null ? this.f7027b : str;
    }

    @Override // com.appodeal.ads.modules.libs.network.AppodealEndpoint
    public final void init(String defaultBaseUrl, Set<String> loadedUrls) {
        Intrinsics.checkNotNullParameter(defaultBaseUrl, "defaultBaseUrl");
        Intrinsics.checkNotNullParameter(loadedUrls, "loadedUrls");
        this.f7027b = defaultBaseUrl;
        Date date = new Date();
        ArrayList arrayList = new ArrayList();
        Locale locale = Locale.ENGLISH;
        String year = new SimpleDateFormat("yyyy", locale).format(date);
        String month = new SimpleDateFormat("yyyyMM", locale).format(date);
        String week = new SimpleDateFormat("yyyyMMww", locale).format(date);
        StringBuilder sb = new StringBuilder("https://a.");
        Intrinsics.checkNotNullExpressionValue(year, "year");
        arrayList.add(sb.append(a(year)).append(".com").toString());
        StringBuilder sb2 = new StringBuilder("https://a.");
        Intrinsics.checkNotNullExpressionValue(month, "month");
        arrayList.add(sb2.append(a(month)).append(".com").toString());
        StringBuilder sb3 = new StringBuilder("https://a.");
        Intrinsics.checkNotNullExpressionValue(week, "week");
        arrayList.add(sb3.append(a(week)).append(".com").toString());
        Set plus = SetsKt.plus((Set) loadedUrls, (Iterable) arrayList);
        this.f7026a.add(defaultBaseUrl);
        this.f7026a.addAll(CollectionsKt.distinct(plus));
    }

    @Override // com.appodeal.ads.modules.libs.network.AppodealEndpoint
    public final String popNextEndpoint() {
        this.f7026a.poll();
        return (String) this.f7026a.peek();
    }
}
