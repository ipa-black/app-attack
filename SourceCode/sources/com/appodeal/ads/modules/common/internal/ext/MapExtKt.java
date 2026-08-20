package com.appodeal.ads.modules.common.internal.ext;

import android.os.Bundle;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONArray;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a0\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00030\u0001\u001a\u0018\u0010\u0004\u001a\u00020\u0005*\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001\u001a\u001a\u0010\b\u001a\u0004\u0018\u00010\t*\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001¨\u0006\n"}, d2 = {"filterNotNullValues", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "toBundle", "Landroid/os/Bundle;", "", "", "toJsonOrNull", "Lorg/json/JSONObject;", "apd_internal"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class MapExtKt {

    /* loaded from: classes2.dex */
    public static final class a extends Lambda implements Function1<JsonObjectBuilder, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Map<String, Object> f6883a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Map<String, ? extends Object> map) {
            super(1);
            this.f6883a = map;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
            JsonObjectBuilder jsonObject = jsonObjectBuilder;
            Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
            for (Map.Entry<String, Object> entry : this.f6883a.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (value instanceof JSONObject) {
                    jsonObject.hasObject(key, (JSONObject) value);
                } else if (value instanceof JSONArray) {
                    jsonObject.hasArray(key, (JSONArray) value);
                } else {
                    jsonObject.hasValue(key, value);
                }
            }
            return Unit.INSTANCE;
        }
    }

    public static final <K, V> Map<K, V> filterNotNullValues(Map<K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<K, ? extends V> entry : map.entrySet()) {
            K key = entry.getKey();
            V value = entry.getValue();
            Pair pair = value == null ? null : TuplesKt.to(key, value);
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        return MapsKt.toMap(arrayList);
    }

    public static final Bundle toBundle(Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Integer) {
                bundle.putInt(key, ((Number) value).intValue());
            } else if (value instanceof int[]) {
                bundle.putIntArray(key, (int[]) value);
            } else if (value instanceof Long) {
                bundle.putLong(key, ((Number) value).longValue());
            } else if (value instanceof long[]) {
                bundle.putLongArray(key, (long[]) value);
            } else if (value instanceof Double) {
                bundle.putDouble(key, ((Number) value).doubleValue());
            } else if (value instanceof double[]) {
                bundle.putDoubleArray(key, (double[]) value);
            } else if (value instanceof String) {
                bundle.putString(key, (String) value);
            } else if (value instanceof Object[]) {
                Object[] objArr = (Object[]) value;
                ArrayList arrayList2 = new ArrayList(objArr.length);
                int length = objArr.length;
                int i = 0;
                while (i < length) {
                    Object obj = objArr[i];
                    i++;
                    arrayList2.add(String.valueOf(obj));
                }
                Object[] array = arrayList2.toArray(new String[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                }
                bundle.putStringArray(key, (String[]) array);
            } else if (value instanceof Boolean) {
                bundle.putBoolean(key, ((Boolean) value).booleanValue());
            } else if (value instanceof boolean[]) {
                bundle.putBooleanArray(key, (boolean[]) value);
            }
            arrayList.add(Unit.INSTANCE);
        }
        return bundle;
    }

    public static final JSONObject toJsonOrNull(Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        if (!map.isEmpty()) {
            return JsonObjectBuilderKt.jsonObject(new a(map));
        }
        return null;
    }
}
