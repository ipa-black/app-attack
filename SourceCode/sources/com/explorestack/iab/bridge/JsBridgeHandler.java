package com.explorestack.iab.bridge;

import android.text.TextUtils;
import com.explorestack.iab.mraid.MraidLog;
import com.explorestack.iab.mraid.g;
import com.explorestack.iab.mraid.i;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class JsBridgeHandler {

    /* renamed from: a  reason: collision with root package name */
    public static final String f9260a = "JsBridgeHandler";

    /* renamed from: b  reason: collision with root package name */
    public static final List<a> f9261b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ boolean f9262c = true;

    public static a a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (a aVar : f9261b) {
            if (!f9262c && str == null) {
                throw new AssertionError();
            }
            if (aVar.a(str)) {
                return aVar;
            }
        }
        return null;
    }

    public static String a() {
        StringBuilder sb = new StringBuilder();
        for (a aVar : f9261b) {
            sb.append("<script type='application/javascript'>");
            sb.append(aVar.b());
            sb.append("</script>");
        }
        return sb.toString();
    }

    public static void a(i iVar, String str) {
        Map<String, String> a2;
        String str2 = f9260a;
        MraidLog.d(str2, "handleJsCommand " + str);
        try {
            a a3 = a(str);
            if (a3 == null || (a2 = g.a(str, a3.a())) == null) {
                return;
            }
            String str3 = a2.get("command");
            if (str3 == null) {
                MraidLog.b(str2, "handleJsCommand: not found");
            } else {
                a3.a(iVar, str3, a2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean addBridge(a aVar) {
        List<a> list = f9261b;
        return !list.contains(aVar) && list.add(aVar);
    }

    public static boolean b(String str) {
        return a(str) != null;
    }

    public static boolean removeBridge(a aVar) {
        List<a> list = f9261b;
        return list.contains(aVar) && list.remove(aVar);
    }
}
