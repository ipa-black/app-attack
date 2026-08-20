package com.yandex.metrica.coreutils.collection;

import android.os.Bundle;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
/* compiled from: CollectionUtils.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010&\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\u0010\b\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00062\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0006H\u0007J&\u0010\b\u001a\n\u0012\u0004\u0012\u0002H\n\u0018\u00010\t\"\u0004\b\u0000\u0010\n2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u0002H\n\u0018\u00010\u0006H\u0007J\u001e\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0010H\u0007J.\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u0002H\n0\r\"\u0004\b\u0000\u0010\n2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u0002H\n0\rH\u0007J8\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0015\u0018\u00010\r\"\u0004\b\u0000\u0010\u0014\"\u0004\b\u0001\u0010\u00152\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0015\u0018\u00010\u0016H\u0007J'\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000e0\t2\u0012\u0010\u0018\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\u0019\"\u00020\u000eH\u0007¢\u0006\u0002\u0010\u001aJ'\u0010\u001b\u001a\u0004\u0018\u0001H\n\"\u0004\b\u0000\u0010\n2\u0010\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u0001H\n\u0018\u00010\tH\u0007¢\u0006\u0002\u0010\u001cJ1\u0010\u001d\u001a\u0004\u0018\u0001H\n\"\u0004\b\u0000\u0010\n2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u0002H\n0\r2\u0006\u0010\u001e\u001a\u00020\u000eH\u0007¢\u0006\u0002\u0010\u001fJ>\u0010 \u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00150!\u0018\u00010\t\"\u0004\b\u0000\u0010\u0014\"\u0004\b\u0001\u0010\u00152\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0015\u0018\u00010\rH\u0007J<\u0010\"\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00150\r\"\u0004\b\u0000\u0010\u0014\"\u0004\b\u0001\u0010\u00152\u001a\u0010#\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00150!\u0018\u00010\tH\u0007J=\u0010$\u001a\u0002H\u0015\"\u0004\b\u0000\u0010\u0014\"\u0004\b\u0001\u0010\u00152\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00150\r2\u0006\u0010\u001e\u001a\u0002H\u00142\u0006\u0010%\u001a\u0002H\u0015H\u0007¢\u0006\u0002\u0010&J\u0016\u0010'\u001a\b\u0012\u0004\u0012\u00020)0(2\u0006\u0010\u000b\u001a\u00020*H\u0007J8\u0010+\u001a\u0010\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0015\u0018\u00010\r\"\u0004\b\u0000\u0010\u0014\"\u0004\b\u0001\u0010\u00152\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u0015\u0018\u00010\rH\u0007J\u001c\u0010,\u001a\u00020\u00102\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0007JA\u0010-\u001a\u00020.\"\u0004\b\u0000\u0010\u0014\"\u0004\b\u0001\u0010\u00152\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00150\u00162\b\u0010\u001e\u001a\u0004\u0018\u0001H\u00142\b\u0010/\u001a\u0004\u0018\u0001H\u0015H\u0007¢\u0006\u0002\u00100J\u0016\u00101\u001a\b\u0012\u0004\u0012\u00020)0\t2\u0006\u00102\u001a\u00020*H\u0007J\"\u00103\u001a\b\u0012\u0004\u0012\u0002H\n0\t\"\u0004\b\u0000\u0010\n2\f\u00104\u001a\b\u0012\u0004\u0012\u0002H\n0\u0006H\u0007J4\u00105\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00150\r\"\u0004\b\u0000\u0010\u0014\"\u0004\b\u0001\u0010\u00152\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00150\rH\u0007J4\u00106\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00150\r\"\u0004\b\u0000\u0010\u0014\"\u0004\b\u0001\u0010\u00152\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u0002H\u00150\rH\u0007J-\u00107\u001a\b\u0012\u0004\u0012\u0002H\n0(\"\u0004\b\u0000\u0010\n2\u0012\u00108\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\n0\u0019\"\u0002H\nH\u0007¢\u0006\u0002\u00109¨\u0006:"}, d2 = {"Lcom/yandex/metrica/coreutils/collection/CollectionUtils;", "", "()V", "areCollectionsEqual", "", TtmlNode.LEFT, "", TtmlNode.RIGHT, "arrayListCopyOfNullableCollection", "", "T", "input", "bundleToMap", "", "", "", "Landroid/os/Bundle;", "convertMapKeysToLowerCase", "map", "copyOf", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "createSortedListWithoutRepetitions", "elements", "", "([Ljava/lang/String;)Ljava/util/List;", "getFirstOrNull", "(Ljava/util/List;)Ljava/lang/Object;", "getFromMapIgnoreCase", "key", "(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;", "getListFromMap", "", "getMapFromList", "list", "getOrDefault", "defValue", "(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "hashSetFromIntArray", "", "", "", "mapCopyOfNullableMap", "mapToBundle", "putOpt", "", "value", "(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V", "toIntList", "array", "unmodifiableListCopy", "original", "unmodifiableMapCopy", "unmodifiableSameOrderMapCopy", "unmodifiableSetOf", "values", "([Ljava/lang/Object;)Ljava/util/Set;", "core-utils_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class CollectionUtils {
    public static final CollectionUtils INSTANCE = new CollectionUtils();

    private CollectionUtils() {
    }

    @JvmStatic
    public static final boolean areCollectionsEqual(Collection<? extends Object> collection, Collection<? extends Object> collection2) {
        HashSet hashSet;
        if (collection == null && collection2 == null) {
            return true;
        }
        if (collection == null || collection2 == null || collection.size() != collection2.size()) {
            return false;
        }
        if (collection instanceof HashSet) {
            hashSet = (HashSet) collection;
            collection = collection2;
        } else if (collection2 instanceof HashSet) {
            hashSet = (HashSet) collection2;
        } else {
            HashSet hashSet2 = new HashSet(collection);
            collection = collection2;
            hashSet = hashSet2;
        }
        for (Object obj : collection) {
            if (!hashSet.contains(obj)) {
                return false;
            }
        }
        return true;
    }

    @JvmStatic
    public static final <K, V> void putOpt(Map<K, V> map, K k, V v) {
        Intrinsics.checkNotNullParameter(map, "map");
        if (k == null || v == null) {
            return;
        }
        map.put(k, v);
    }

    @JvmStatic
    public static final <T> T getFromMapIgnoreCase(Map<String, ? extends T> map, String key) {
        T t;
        Intrinsics.checkNotNullParameter(map, "map");
        Intrinsics.checkNotNullParameter(key, "key");
        Iterator<T> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                t = null;
                break;
            }
            t = it.next();
            Map.Entry entry = (Map.Entry) t;
            CharSequence charSequence = (CharSequence) entry.getKey();
            if (charSequence != null && charSequence.length() != 0 && StringsKt.equals((String) entry.getKey(), key, true)) {
                break;
            }
        }
        Map.Entry entry2 = (Map.Entry) t;
        if (entry2 != null) {
            return (T) entry2.getValue();
        }
        return null;
    }

    @JvmStatic
    public static final Set<Integer> hashSetFromIntArray(int[] input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return ArraysKt.toHashSet(input);
    }

    @JvmStatic
    public static final <K, V> V getOrDefault(Map<K, ? extends V> map, K k, V v) {
        Intrinsics.checkNotNullParameter(map, "map");
        V v2 = map.get(k);
        return v2 != null ? v2 : v;
    }

    @JvmStatic
    public static final <K, V> Map<K, V> copyOf(Map<K, V> map) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        return new HashMap(map);
    }

    @JvmStatic
    public static final <T> List<T> unmodifiableListCopy(Collection<? extends T> original) {
        Intrinsics.checkNotNullParameter(original, "original");
        List<T> unmodifiableList = Collections.unmodifiableList(new ArrayList(original));
        Intrinsics.checkNotNullExpressionValue(unmodifiableList, "Collections.unmodifiableList(ArrayList(original))");
        return unmodifiableList;
    }

    @JvmStatic
    public static final <K, V> Map<K, V> unmodifiableMapCopy(Map<K, ? extends V> original) {
        Intrinsics.checkNotNullParameter(original, "original");
        Map<K, V> unmodifiableMap = Collections.unmodifiableMap(new HashMap(original));
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "Collections.unmodifiableMap(HashMap(original))");
        return unmodifiableMap;
    }

    @JvmStatic
    public static final <K, V> Map<K, V> unmodifiableSameOrderMapCopy(Map<K, ? extends V> original) {
        Intrinsics.checkNotNullParameter(original, "original");
        Map<K, V> unmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(original));
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "Collections.unmodifiable…(LinkedHashMap(original))");
        return unmodifiableMap;
    }

    @JvmStatic
    public static final <T> Set<T> unmodifiableSetOf(T... values) {
        Intrinsics.checkNotNullParameter(values, "values");
        Set<T> unmodifiableSet = Collections.unmodifiableSet(ArraysKt.toHashSet(values));
        Intrinsics.checkNotNullExpressionValue(unmodifiableSet, "Collections.unmodifiableSet(values.toHashSet())");
        return unmodifiableSet;
    }

    @JvmStatic
    public static final List<Integer> toIntList(int[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return ArraysKt.toList(array);
    }

    @JvmStatic
    public static final List<String> createSortedListWithoutRepetitions(String... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return unmodifiableListCopy(ArraysKt.toSortedSet(elements));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmStatic
    public static final <K, V> Map<K, V> getMapFromList(List<? extends Map.Entry<? extends K, ? extends V>> list) {
        if (list != null) {
            List<? extends Map.Entry<? extends K, ? extends V>> list2 = list;
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list2, 10)), 16));
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
            return linkedHashMap;
        }
        return new LinkedHashMap();
    }

    @JvmStatic
    public static final <T> List<T> arrayListCopyOfNullableCollection(Collection<? extends T> collection) {
        if (collection != null) {
            return CollectionsKt.toList(collection);
        }
        return null;
    }

    @JvmStatic
    public static final <K, V> Map<K, V> mapCopyOfNullableMap(Map<K, ? extends V> map) {
        if (map != null) {
            return MapsKt.toMap(map);
        }
        return null;
    }

    @JvmStatic
    public static final <T> T getFirstOrNull(List<? extends T> list) {
        if (list != null) {
            return (T) CollectionsKt.firstOrNull((List<? extends Object>) list);
        }
        return null;
    }

    @JvmStatic
    public static final Bundle mapToBundle(Map<String, byte[]> input) {
        Intrinsics.checkNotNullParameter(input, "input");
        Bundle bundle = new Bundle(input.size());
        for (Map.Entry<String, byte[]> entry : input.entrySet()) {
            bundle.putByteArray(entry.getKey(), entry.getValue());
        }
        return bundle;
    }

    @JvmStatic
    public static final Map<String, byte[]> bundleToMap(Bundle bundle) {
        HashMap hashMap = new HashMap();
        if (bundle != null) {
            Set<String> keySet = bundle.keySet();
            Intrinsics.checkNotNullExpressionValue(keySet, "it.keySet()");
            for (String key : keySet) {
                byte[] value = bundle.getByteArray(key);
                if (value != null) {
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    Intrinsics.checkNotNullExpressionValue(value, "value");
                    hashMap.put(key, value);
                }
            }
        }
        return hashMap;
    }

    @JvmStatic
    public static final <T> Map<String, T> convertMapKeysToLowerCase(Map<String, ? extends T> map) {
        String str;
        Intrinsics.checkNotNullParameter(map, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map.size()));
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (entry.getKey() != null) {
                String str2 = (String) entry.getKey();
                Locale locale = Locale.getDefault();
                Intrinsics.checkNotNullExpressionValue(locale, "Locale.getDefault()");
                if (str2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
                str = str2.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(str, "(this as java.lang.String).toLowerCase(locale)");
            } else {
                str = (String) entry.getKey();
            }
            linkedHashMap.put(str, entry.getValue());
        }
        return linkedHashMap;
    }

    @JvmStatic
    public static final <K, V> List<Map.Entry<K, V>> getListFromMap(Map<K, ? extends V> map) {
        if (map != null) {
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<K, ? extends V> entry : map.entrySet()) {
                arrayList.add(new AbstractMap.SimpleEntry(entry));
            }
            return arrayList;
        }
        return null;
    }
}
