package com.yandex.metrica.impl.ob;

import com.appodeal.ads.modules.common.internal.LogConstants;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.z0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2011z0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<Integer> f16130a;

    /* renamed from: b  reason: collision with root package name */
    private static final EnumSet<EnumC1399a1> f16131b;

    /* renamed from: c  reason: collision with root package name */
    private static final EnumSet<EnumC1399a1> f16132c;

    /* renamed from: d  reason: collision with root package name */
    private static final EnumSet<EnumC1399a1> f16133d;

    /* renamed from: e  reason: collision with root package name */
    private static final EnumSet<EnumC1399a1> f16134e;

    /* renamed from: f  reason: collision with root package name */
    private static final EnumSet<EnumC1399a1> f16135f;

    /* renamed from: g  reason: collision with root package name */
    private static final EnumSet<EnumC1399a1> f16136g;

    /* renamed from: h  reason: collision with root package name */
    private static final EnumSet<EnumC1399a1> f16137h;
    public static final List<Integer> i;
    public static final List<Integer> j;

    static {
        Integer[] numArr = {Integer.valueOf(EnumC1399a1.EVENT_TYPE_EXCEPTION_USER_PROTOBUF.b()), Integer.valueOf(EnumC1399a1.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF.b()), Integer.valueOf(EnumC1399a1.EVENT_TYPE_EXCEPTION_USER.b()), Integer.valueOf(EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF.b()), Integer.valueOf(EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE.b()), Integer.valueOf(EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT.b()), Integer.valueOf(EnumC1399a1.EVENT_TYPE_ANR.b())};
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < 7; i2++) {
            hashSet.add(numArr[i2]);
        }
        f16130a = Collections.unmodifiableSet(hashSet);
        EnumC1399a1 enumC1399a1 = EnumC1399a1.EVENT_TYPE_UNDEFINED;
        EnumC1399a1 enumC1399a12 = EnumC1399a1.EVENT_TYPE_SEND_REFERRER;
        EnumC1399a1 enumC1399a13 = EnumC1399a1.EVENT_TYPE_APP_ENVIRONMENT_UPDATED;
        EnumC1399a1 enumC1399a14 = EnumC1399a1.EVENT_TYPE_APP_ENVIRONMENT_CLEARED;
        EnumC1399a1 enumC1399a15 = EnumC1399a1.EVENT_TYPE_ACTIVATION;
        EnumC1399a1 enumC1399a16 = EnumC1399a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH;
        EnumC1399a1 enumC1399a17 = EnumC1399a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF;
        EnumC1399a1 enumC1399a18 = EnumC1399a1.EVENT_TYPE_API_NATIVE_CRASH_PROTOBUF;
        f16131b = EnumSet.of(enumC1399a1, EnumC1399a1.EVENT_TYPE_PURGE_BUFFER, enumC1399a12, enumC1399a13, enumC1399a14, enumC1399a15, enumC1399a16, enumC1399a17, enumC1399a18, EnumC1399a1.EVENT_TYPE_SET_SESSION_EXTRA);
        EnumC1399a1 enumC1399a19 = EnumC1399a1.EVENT_TYPE_SET_USER_INFO;
        EnumC1399a1 enumC1399a110 = EnumC1399a1.EVENT_TYPE_REPORT_USER_INFO;
        EnumC1399a1 enumC1399a111 = EnumC1399a1.EVENT_TYPE_INIT;
        EnumC1399a1 enumC1399a112 = EnumC1399a1.EVENT_TYPE_APP_UPDATE;
        f16132c = EnumSet.of(enumC1399a19, enumC1399a110, EnumC1399a1.EVENT_TYPE_IDENTITY, enumC1399a1, enumC1399a111, enumC1399a112, enumC1399a12, EnumC1399a1.EVENT_TYPE_ALIVE, EnumC1399a1.EVENT_TYPE_STARTUP, enumC1399a13, enumC1399a14, enumC1399a15, enumC1399a16, enumC1399a17, enumC1399a18, EnumC1399a1.EVENT_TYPE_WEBVIEW_SYNC);
        EnumC1399a1 enumC1399a113 = EnumC1399a1.EVENT_TYPE_UPDATE_FOREGROUND_TIME;
        EnumC1399a1 enumC1399a114 = EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE;
        f16133d = EnumSet.of(enumC1399a113, enumC1399a19, enumC1399a110, enumC1399a114);
        EnumC1399a1 enumC1399a115 = EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED;
        EnumC1399a1 enumC1399a116 = EnumC1399a1.EVENT_TYPE_REGULAR;
        f16134e = EnumSet.of(enumC1399a115, enumC1399a114, EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT, EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF, EnumC1399a1.EVENT_TYPE_EXCEPTION_USER, EnumC1399a1.EVENT_TYPE_EXCEPTION_USER_PROTOBUF, EnumC1399a1.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF, enumC1399a16, enumC1399a17, EnumC1399a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH, EnumC1399a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF, EnumC1399a1.EVENT_TYPE_CURRENT_SESSION_CRASHPAD_CRASH_PROTOBUF, enumC1399a18, enumC1399a116);
        f16135f = EnumSet.of(EnumC1399a1.EVENT_TYPE_DIAGNOSTIC, EnumC1399a1.EVENT_TYPE_DIAGNOSTIC_STATBOX, EnumC1399a1.EVENT_TYPE_DIAGNOSTIC_DISABLE_STAT_SENDING, EnumC1399a1.EVENT_TYPE_APPMETRICA_DIAGNOSTICS);
        f16136g = EnumSet.of(enumC1399a116);
        f16137h = EnumSet.of(enumC1399a16, enumC1399a17, enumC1399a18);
        i = Arrays.asList(Integer.valueOf(enumC1399a111.b()), Integer.valueOf(EnumC1399a1.EVENT_TYPE_FIRST_ACTIVATION.b()), Integer.valueOf(enumC1399a12.b()), Integer.valueOf(enumC1399a112.b()));
        j = Arrays.asList(Integer.valueOf(EnumC1399a1.EVENT_TYPE_CLEANUP.b()));
    }

    public static boolean a(EnumC1399a1 enumC1399a1) {
        return !f16131b.contains(enumC1399a1);
    }

    public static boolean b(EnumC1399a1 enumC1399a1) {
        return !f16132c.contains(enumC1399a1);
    }

    public static boolean c(int i2) {
        return f16134e.contains(EnumC1399a1.a(i2));
    }

    public static boolean d(int i2) {
        return !f16137h.contains(EnumC1399a1.a(i2));
    }

    public static boolean e(int i2) {
        return f16136g.contains(EnumC1399a1.a(i2));
    }

    public static boolean f(int i2) {
        return f16130a.contains(Integer.valueOf(i2));
    }

    public static boolean a(int i2) {
        return f16135f.contains(EnumC1399a1.a(i2));
    }

    public static boolean b(int i2) {
        return f16133d.contains(EnumC1399a1.a(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static C1448c0 c(String str, C1470cm c1470cm) {
        return a(str, EnumC1399a1.EVENT_TYPE_API_NATIVE_CRASH_PROTOBUF, c1470cm);
    }

    public static C1448c0 a(String str, C1470cm c1470cm) {
        return a(str, EnumC1399a1.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF, c1470cm);
    }

    public static C1448c0 b(String str, C1470cm c1470cm) {
        return a(str, EnumC1399a1.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF, c1470cm);
    }

    private static C1448c0 a(String str, EnumC1399a1 enumC1399a1, C1470cm c1470cm) {
        J j2 = new J("", "", enumC1399a1.b(), 0, c1470cm);
        if (str != null) {
            j2.i(str);
        }
        return j2;
    }

    public static C1448c0 a() {
        C1448c0 c1448c0 = new C1448c0();
        c1448c0.f14511e = EnumC1399a1.EVENT_TYPE_DIAGNOSTIC_DISABLE_STAT_SENDING.b();
        try {
            c1448c0.f14508b = new JSONObject().put("stat_sending", new JSONObject().put(LogConstants.MSG_AD_TYPE_DISABLED, true)).toString();
        } catch (Throwable unused) {
        }
        return c1448c0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static C1448c0 a(String str, byte[] bArr, C1470cm c1470cm) {
        return new J(bArr, str, EnumC1399a1.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF.b(), c1470cm);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static C1448c0 a(String str, String str2, boolean z, C1470cm c1470cm) {
        HashMap hashMap = new HashMap();
        hashMap.put(SessionDescription.ATTR_TYPE, str);
        hashMap.put("link", str2);
        hashMap.put("auto", Boolean.valueOf(z));
        return new J(Tl.g(hashMap), "", EnumC1399a1.EVENT_TYPE_APP_OPEN.b(), 0, c1470cm);
    }
}
