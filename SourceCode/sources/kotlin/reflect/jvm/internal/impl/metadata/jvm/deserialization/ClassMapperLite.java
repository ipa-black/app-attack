package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import androidx.exifinterface.media.ExifInterface;
import com.appodeal.ads.modules.common.internal.LogConstants;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* compiled from: ClassMapperLite.kt */
/* loaded from: classes5.dex */
public final class ClassMapperLite {
    public static final ClassMapperLite INSTANCE = new ClassMapperLite();

    /* renamed from: kotlin  reason: collision with root package name */
    private static final String f16380kotlin = CollectionsKt.joinToString$default(CollectionsKt.listOf((Object[]) new Character[]{'k', 'o', 't', 'l', 'i', 'n'}), "", null, null, 0, null, null, 62, null);
    private static final Map<String, String> map;

    private ClassMapperLite() {
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List listOf = CollectionsKt.listOf((Object[]) new String[]{"Boolean", "Z", "Char", "C", "Byte", "B", "Short", ExifInterface.LATITUDE_SOUTH, "Int", "I", "Float", "F", "Long", "J", "Double", "D"});
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, listOf.size() - 1, 2);
        if (progressionLastElement >= 0) {
            int i = 0;
            while (true) {
                int i2 = i + 2;
                StringBuilder sb = new StringBuilder();
                String str = f16380kotlin;
                int i3 = i + 1;
                linkedHashMap.put(sb.append(str).append('/').append((String) listOf.get(i)).toString(), listOf.get(i3));
                linkedHashMap.put(str + '/' + ((String) listOf.get(i)) + "Array", Intrinsics.stringPlus("[", listOf.get(i3)));
                if (i == progressionLastElement) {
                    break;
                }
                i = i2;
            }
        }
        linkedHashMap.put(Intrinsics.stringPlus(f16380kotlin, "/Unit"), ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
        m1761map$lambda0$add(linkedHashMap, "Any", "java/lang/Object");
        m1761map$lambda0$add(linkedHashMap, "Nothing", "java/lang/Void");
        m1761map$lambda0$add(linkedHashMap, "Annotation", "java/lang/annotation/Annotation");
        for (String str2 : CollectionsKt.listOf((Object[]) new String[]{"String", "CharSequence", "Throwable", "Cloneable", "Number", "Comparable", "Enum"})) {
            m1761map$lambda0$add(linkedHashMap, str2, Intrinsics.stringPlus("java/lang/", str2));
        }
        for (String str3 : CollectionsKt.listOf((Object[]) new String[]{"Iterator", "Collection", "List", LogConstants.EVENT_SET, "Map", "ListIterator"})) {
            m1761map$lambda0$add(linkedHashMap, Intrinsics.stringPlus("collections/", str3), Intrinsics.stringPlus("java/util/", str3));
            m1761map$lambda0$add(linkedHashMap, Intrinsics.stringPlus("collections/Mutable", str3), Intrinsics.stringPlus("java/util/", str3));
        }
        m1761map$lambda0$add(linkedHashMap, "collections/Iterable", "java/lang/Iterable");
        m1761map$lambda0$add(linkedHashMap, "collections/MutableIterable", "java/lang/Iterable");
        m1761map$lambda0$add(linkedHashMap, "collections/Map.Entry", "java/util/Map$Entry");
        m1761map$lambda0$add(linkedHashMap, "collections/MutableMap.MutableEntry", "java/util/Map$Entry");
        for (int i4 = 0; i4 < 23; i4++) {
            String stringPlus = Intrinsics.stringPlus("Function", Integer.valueOf(i4));
            StringBuilder sb2 = new StringBuilder();
            String str4 = f16380kotlin;
            m1761map$lambda0$add(linkedHashMap, stringPlus, sb2.append(str4).append("/jvm/functions/Function").append(i4).toString());
            m1761map$lambda0$add(linkedHashMap, Intrinsics.stringPlus("reflect/KFunction", Integer.valueOf(i4)), Intrinsics.stringPlus(str4, "/reflect/KFunction"));
        }
        for (String str5 : CollectionsKt.listOf((Object[]) new String[]{"Char", "Byte", "Short", "Int", "Float", "Long", "Double", "String", "Enum"})) {
            m1761map$lambda0$add(linkedHashMap, Intrinsics.stringPlus(str5, ".Companion"), f16380kotlin + "/jvm/internal/" + str5 + "CompanionObject");
        }
        map = linkedHashMap;
    }

    /* renamed from: map$lambda-0$add  reason: not valid java name */
    private static final void m1761map$lambda0$add(Map<String, String> map2, String str, String str2) {
        map2.put(f16380kotlin + '/' + str, "L" + str2 + ';');
    }

    @JvmStatic
    public static final String mapClass(String classId) {
        Intrinsics.checkNotNullParameter(classId, "classId");
        String str = map.get(classId);
        return str == null ? "L" + StringsKt.replace$default(classId, '.', '$', false, 4, (Object) null) + ';' : str;
    }
}
