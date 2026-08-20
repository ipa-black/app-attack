package com.appodeal.ads.segments;

import android.content.Context;
import android.os.Build;
import com.adcolony.sdk.AdColonyUserMetadata;
import com.appodeal.ads.UserSettings;
import com.appodeal.ads.f1;
import com.appodeal.ads.l5;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.n5;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.Version;
import com.appodeal.ads.utils.x;
import com.ironsource.mediationsdk.IronSourceSegment;
import com.onesignal.outcomes.OSOutcomeConstants;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: c  reason: collision with root package name */
    public static j f7520c;

    /* renamed from: d  reason: collision with root package name */
    public static final HashMap f7521d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public static final ArrayList f7522e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    public static final com.appodeal.ads.storage.o f7523f;

    /* renamed from: g  reason: collision with root package name */
    public static HashMap f7524g;

    /* renamed from: a  reason: collision with root package name */
    public float f7525a = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    public boolean f7526b = false;

    /* loaded from: classes2.dex */
    public interface a {
        void a();
    }

    /* loaded from: classes2.dex */
    public interface b {
        Object a(Context context, j jVar);
    }

    /* loaded from: classes2.dex */
    public static class c implements b {

        /* renamed from: a  reason: collision with root package name */
        public Calendar f7527a = Calendar.getInstance();

        @Override // com.appodeal.ads.segments.j.b
        public final Object a(Context context, j jVar) {
            return Integer.valueOf(((this.f7527a.get(7) - 1) * 24) + this.f7527a.get(11));
        }
    }

    static {
        com.appodeal.ads.storage.o oVar = com.appodeal.ads.storage.o.f7663b;
        f7523f = oVar;
        HashMap hashMap = new HashMap();
        f7524g = hashMap;
        hashMap.put("country", new b() { // from class: com.appodeal.ads.segments.j$$ExternalSyntheticLambda0
            @Override // com.appodeal.ads.segments.j.b
            public final Object a(Context context, j jVar) {
                return j.a(context, jVar);
            }
        });
        f7524g.put("app_version", new b() { // from class: com.appodeal.ads.segments.j$$ExternalSyntheticLambda7
            @Override // com.appodeal.ads.segments.j.b
            public final Object a(Context context, j jVar) {
                return j.b(context, jVar);
            }
        });
        f7524g.put("app", new b() { // from class: com.appodeal.ads.segments.j$$ExternalSyntheticLambda8
            @Override // com.appodeal.ads.segments.j.b
            public final Object a(Context context, j jVar) {
                return j.f(context, jVar);
            }
        });
        f7524g.put("sdk_version", new b() { // from class: com.appodeal.ads.segments.j$$ExternalSyntheticLambda9
            @Override // com.appodeal.ads.segments.j.b
            public final Object a(Context context, j jVar) {
                return j.g(context, jVar);
            }
        });
        f7524g.put("os_version", new b() { // from class: com.appodeal.ads.segments.j$$ExternalSyntheticLambda10
            @Override // com.appodeal.ads.segments.j.b
            public final Object a(Context context, j jVar) {
                return j.h(context, jVar);
            }
        });
        f7524g.put("session_count", new b() { // from class: com.appodeal.ads.segments.j$$ExternalSyntheticLambda11
            @Override // com.appodeal.ads.segments.j.b
            public final Object a(Context context, j jVar) {
                return j.i(context, jVar);
            }
        });
        f7524g.put("average_session_length", new b() { // from class: com.appodeal.ads.segments.j$$ExternalSyntheticLambda12
            @Override // com.appodeal.ads.segments.j.b
            public final Object a(Context context, j jVar) {
                return j.j(context, jVar);
            }
        });
        f7524g.put("connection_type", new b() { // from class: com.appodeal.ads.segments.j$$ExternalSyntheticLambda1
            @Override // com.appodeal.ads.segments.j.b
            public final Object a(Context context, j jVar) {
                return j.k(context, jVar);
            }
        });
        f7524g.put("gender", new b() { // from class: com.appodeal.ads.segments.j$$ExternalSyntheticLambda2
            @Override // com.appodeal.ads.segments.j.b
            public final Object a(Context context, j jVar) {
                return j.l(context, jVar);
            }
        });
        f7524g.put(IronSourceSegment.AGE, new b() { // from class: com.appodeal.ads.segments.j$$ExternalSyntheticLambda3
            @Override // com.appodeal.ads.segments.j.b
            public final Object a(Context context, j jVar) {
                return j.m(context, jVar);
            }
        });
        f7524g.put("bought_inapps", new b() { // from class: com.appodeal.ads.segments.j$$ExternalSyntheticLambda4
            @Override // com.appodeal.ads.segments.j.b
            public final Object a(Context context, j jVar) {
                return j.c(context, jVar);
            }
        });
        f7524g.put("inapp_amount", new b() { // from class: com.appodeal.ads.segments.j$$ExternalSyntheticLambda5
            @Override // com.appodeal.ads.segments.j.b
            public final Object a(Context context, j jVar) {
                return j.d(context, jVar);
            }
        });
        f7524g.put(OSOutcomeConstants.DEVICE_TYPE, new b() { // from class: com.appodeal.ads.segments.j$$ExternalSyntheticLambda6
            @Override // com.appodeal.ads.segments.j.b
            public final Object a(Context context, j jVar) {
                return j.e(context, jVar);
            }
        });
        f7524g.put("session_time", new c());
        f7524g.put("part_of_audience", new f(oVar));
    }

    public static HashMap a() {
        return f7521d;
    }

    public static void a(a aVar) {
        f7522e.add(aVar);
    }

    public static boolean a(Context context, int i, i[] iVarArr) {
        if (context == null || i == 0 || iVarArr == null) {
            return true;
        }
        if (i != 0) {
            int i2 = i - 1;
            if (i2 == 0) {
                for (i iVar : iVarArr) {
                    if (!iVar.a(context)) {
                        return false;
                    }
                }
                return true;
            } else if (i2 != 1) {
                return false;
            } else {
                if (iVarArr.length == 0) {
                    return true;
                }
                for (i iVar2 : iVarArr) {
                    if (iVar2.a(context)) {
                        return true;
                    }
                }
                return false;
            }
        }
        throw null;
    }

    public static i[] a(JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray("restrictions");
        if (optJSONArray == null || optJSONArray.length() == 0) {
            return null;
        }
        i[] iVarArr = new i[optJSONArray.length()];
        for (int i = 0; i < optJSONArray.length(); i++) {
            try {
                iVarArr[i] = new i(optJSONArray.optJSONObject(i));
            } catch (JSONException e2) {
                Log.log(e2);
            }
        }
        return iVarArr;
    }

    public static j b() {
        if (f7520c == null) {
            f7520c = new j();
        }
        return f7520c;
    }

    public static /* synthetic */ Object b(Context context, j jVar) {
        return new Version(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName);
    }

    public static Object c(Context context, j jVar) {
        return Boolean.valueOf(jVar.f7526b);
    }

    public static Object d(Context context, j jVar) {
        return Float.valueOf(jVar.f7525a);
    }

    public static /* synthetic */ Object e(Context context, j jVar) {
        return f1.r(context) ? "tablet" : "phone";
    }

    public static Object f(Context context, j jVar) {
        return f7523f.f7664a.c();
    }

    public static /* synthetic */ Object g(Context context, j jVar) {
        return new Version(Constants.SDK_VERSION);
    }

    public static /* synthetic */ Object h(Context context, j jVar) {
        return new Version(Build.VERSION.RELEASE);
    }

    public static /* synthetic */ Object i(Context context, j jVar) {
        HashMap hashMap = x.l;
        return Integer.valueOf((int) x.a.a().g());
    }

    public static /* synthetic */ Object j(Context context, j jVar) {
        HashMap hashMap = x.l;
        return Integer.valueOf((int) x.a.a().c());
    }

    public static /* synthetic */ Object k(Context context, j jVar) {
        String type = f1.c(context).getType();
        return type != null ? type.equals("mobile") ? "mobile" : type.equals("wifi") ? "wifi" : "other" : "other";
    }

    public static /* synthetic */ Object l(Context context, j jVar) {
        UserSettings.Gender gender = n5.c().getGender();
        return gender == UserSettings.Gender.FEMALE ? AdColonyUserMetadata.USER_FEMALE : gender == UserSettings.Gender.MALE ? AdColonyUserMetadata.USER_MALE : "other";
    }

    public static Object m(Context context, j jVar) {
        return l5.a().f6847c;
    }

    public final boolean b(JSONObject jSONObject) {
        if (jSONObject == null || !jSONObject.has("inapp_amount")) {
            return false;
        }
        float optDouble = (float) jSONObject.optDouble("inapp_amount", 0.0d);
        this.f7525a = optDouble;
        this.f7526b = optDouble > 0.0f;
        return true;
    }

    public static Object a(Context context, j jVar) {
        return l5.a().f6850f;
    }

    public static void a(String str, Object obj) {
        f7521d.put(str, obj);
        Iterator it = f7522e.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a();
        }
    }
}
