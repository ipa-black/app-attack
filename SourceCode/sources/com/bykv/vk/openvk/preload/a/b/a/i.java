package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.t;
import com.bykv.vk.openvk.preload.a.u;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* compiled from: ReflectiveTypeAdapterFactory.java */
/* loaded from: classes2.dex */
public final class i implements u {

    /* renamed from: a  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.c f8195a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.e f8196b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.d f8197c;

    /* renamed from: d  reason: collision with root package name */
    private final d f8198d;

    /* renamed from: e  reason: collision with root package name */
    private final com.bykv.vk.openvk.preload.a.b.b.b f8199e = com.bykv.vk.openvk.preload.a.b.b.b.a();

    public i(com.bykv.vk.openvk.preload.a.b.c cVar, com.bykv.vk.openvk.preload.a.e eVar, com.bykv.vk.openvk.preload.a.b.d dVar, d dVar2) {
        this.f8195a = cVar;
        this.f8196b = eVar;
        this.f8197c = dVar;
        this.f8198d = dVar2;
    }

    private boolean a(Field field, boolean z) {
        com.bykv.vk.openvk.preload.a.b.d dVar = this.f8197c;
        if (dVar.a(field.getType()) || dVar.a(z) || (dVar.f8290c & field.getModifiers()) != 0) {
            return false;
        }
        if ((dVar.f8289b == -1.0d || dVar.a((com.bykv.vk.openvk.preload.a.a.d) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.d.class), (com.bykv.vk.openvk.preload.a.a.e) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.e.class))) && !field.isSynthetic()) {
            if (dVar.f8292e) {
                com.bykv.vk.openvk.preload.a.a.a aVar = (com.bykv.vk.openvk.preload.a.a.a) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.a.class);
                if (aVar == null) {
                    return false;
                }
                if (z) {
                    if (!aVar.a()) {
                        return false;
                    }
                } else if (!aVar.b()) {
                    return false;
                }
            }
            if ((dVar.f8291d || !com.bykv.vk.openvk.preload.a.b.d.c(field.getType())) && !com.bykv.vk.openvk.preload.a.b.d.b(field.getType())) {
                List<com.bykv.vk.openvk.preload.a.b> list = z ? dVar.f8293f : dVar.f8294g;
                if (list.isEmpty()) {
                    return true;
                }
                new com.bykv.vk.openvk.preload.a.c(field);
                for (com.bykv.vk.openvk.preload.a.b bVar : list) {
                    if (bVar.a()) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    private List<String> a(Field field) {
        com.bykv.vk.openvk.preload.a.a.c cVar = (com.bykv.vk.openvk.preload.a.a.c) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.c.class);
        if (cVar == null) {
            return Collections.singletonList(this.f8196b.a(field));
        }
        String a2 = cVar.a();
        String[] b2 = cVar.b();
        if (b2.length == 0) {
            return Collections.singletonList(a2);
        }
        ArrayList arrayList = new ArrayList(b2.length + 1);
        arrayList.add(a2);
        for (String str : b2) {
            arrayList.add(str);
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    private Map<String, b> a(final com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<?> aVar, Class<?> cls) {
        com.bykv.vk.openvk.preload.a.c.a<?> aVar2;
        int i;
        boolean z;
        int i2;
        Field[] fieldArr;
        Class<?> cls2;
        Type type;
        i iVar = this;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type type2 = aVar.f8338c;
        Class<?> cls3 = cls;
        com.bykv.vk.openvk.preload.a.c.a<?> aVar3 = aVar;
        while (cls3 != Object.class) {
            Field[] declaredFields = cls3.getDeclaredFields();
            int length = declaredFields.length;
            boolean z2 = false;
            int i3 = 0;
            while (i3 < length) {
                final Field field = declaredFields[i3];
                boolean a2 = iVar.a(field, true);
                boolean a3 = iVar.a(field, z2);
                if (a2 || a3) {
                    iVar.f8199e.a(field);
                    Type a4 = com.bykv.vk.openvk.preload.a.b.b.a(aVar3.f8338c, cls3, field.getGenericType());
                    List<String> a5 = iVar.a(field);
                    int size = a5.size();
                    int i4 = z2;
                    aVar2 = aVar3;
                    b bVar = null;
                    while (i4 < size) {
                        Type type3 = type2;
                        String str = a5.get(i4);
                        boolean z3 = i4 != 0 ? z2 : a2;
                        final com.bykv.vk.openvk.preload.a.c.a<?> a6 = com.bykv.vk.openvk.preload.a.c.a.a(a4);
                        Class<? super Object> cls4 = a6.f8337b;
                        boolean z4 = (cls4 instanceof Class) && cls4.isPrimitive();
                        com.bykv.vk.openvk.preload.a.a.b bVar2 = (com.bykv.vk.openvk.preload.a.a.b) field.getAnnotation(com.bykv.vk.openvk.preload.a.a.b.class);
                        t<?> a7 = bVar2 != null ? d.a(iVar.f8195a, fVar, a6, bVar2) : null;
                        boolean z5 = a7 != null;
                        if (a7 == null) {
                            a7 = fVar.a((com.bykv.vk.openvk.preload.a.c.a) a6);
                        }
                        final t<?> tVar = a7;
                        int i5 = i4;
                        int i6 = size;
                        List<String> list = a5;
                        Field field2 = field;
                        int i7 = i3;
                        final boolean z6 = z5;
                        int i8 = length;
                        Field[] fieldArr2 = declaredFields;
                        Class<?> cls5 = cls3;
                        final boolean z7 = z4;
                        b bVar3 = (b) linkedHashMap.put(str, new b(str, z3, a3) { // from class: com.bykv.vk.openvk.preload.a.b.a.i.1
                            @Override // com.bykv.vk.openvk.preload.a.b.a.i.b
                            final void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException, IllegalAccessException {
                                (z6 ? tVar : new m(fVar, tVar, a6.f8338c)).a(cVar, field.get(obj));
                            }

                            @Override // com.bykv.vk.openvk.preload.a.b.a.i.b
                            final void a(com.bykv.vk.openvk.preload.a.d.a aVar4, Object obj) throws IOException, IllegalAccessException {
                                Object a8 = tVar.a(aVar4);
                                if (a8 == null && z7) {
                                    return;
                                }
                                field.set(obj, a8);
                            }

                            @Override // com.bykv.vk.openvk.preload.a.b.a.i.b
                            public final boolean a(Object obj) throws IOException, IllegalAccessException {
                                return this.i && field.get(obj) != obj;
                            }
                        });
                        if (bVar == null) {
                            bVar = bVar3;
                        }
                        iVar = this;
                        cls3 = cls5;
                        a2 = z3;
                        type2 = type3;
                        z2 = false;
                        length = i8;
                        size = i6;
                        a5 = list;
                        field = field2;
                        i3 = i7;
                        declaredFields = fieldArr2;
                        i4 = i5 + 1;
                    }
                    i = i3;
                    z = z2;
                    i2 = length;
                    fieldArr = declaredFields;
                    cls2 = cls3;
                    type = type2;
                    if (bVar != null) {
                        throw new IllegalArgumentException(type + " declares multiple JSON fields named " + bVar.f8209h);
                    }
                } else {
                    i = i3;
                    z = z2;
                    i2 = length;
                    fieldArr = declaredFields;
                    cls2 = cls3;
                    type = type2;
                    aVar2 = aVar3;
                }
                i3 = i + 1;
                iVar = this;
                aVar3 = aVar2;
                cls3 = cls2;
                type2 = type;
                z2 = z;
                length = i2;
                declaredFields = fieldArr;
            }
            Class<?> cls6 = cls3;
            aVar3 = com.bykv.vk.openvk.preload.a.c.a.a(com.bykv.vk.openvk.preload.a.b.b.a(aVar3.f8338c, cls6, cls6.getGenericSuperclass()));
            cls3 = aVar3.f8337b;
            iVar = this;
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReflectiveTypeAdapterFactory.java */
    /* loaded from: classes2.dex */
    public static abstract class b {

        /* renamed from: h  reason: collision with root package name */
        final String f8209h;
        final boolean i;
        final boolean j;

        abstract void a(com.bykv.vk.openvk.preload.a.d.a aVar, Object obj) throws IOException, IllegalAccessException;

        abstract void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException, IllegalAccessException;

        abstract boolean a(Object obj) throws IOException, IllegalAccessException;

        protected b(String str, boolean z, boolean z2) {
            this.f8209h = str;
            this.i = z;
            this.j = z2;
        }
    }

    /* compiled from: ReflectiveTypeAdapterFactory.java */
    /* loaded from: classes2.dex */
    public static final class a<T> extends t<T> {

        /* renamed from: a  reason: collision with root package name */
        private final com.bykv.vk.openvk.preload.a.b.i<T> f8207a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, b> f8208b;

        a(com.bykv.vk.openvk.preload.a.b.i<T> iVar, Map<String, b> map) {
            this.f8207a = iVar;
            this.f8208b = map;
        }

        @Override // com.bykv.vk.openvk.preload.a.t
        public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                aVar.k();
                return null;
            }
            T a2 = this.f8207a.a();
            try {
                aVar.c();
                while (aVar.e()) {
                    b bVar = this.f8208b.get(aVar.h());
                    if (bVar != null && bVar.j) {
                        bVar.a(aVar, a2);
                    }
                    aVar.o();
                }
                aVar.d();
                return a2;
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            } catch (IllegalStateException e3) {
                throw new r(e3);
            }
        }

        @Override // com.bykv.vk.openvk.preload.a.t
        public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t) throws IOException {
            if (t == null) {
                cVar.e();
                return;
            }
            cVar.c();
            try {
                for (b bVar : this.f8208b.values()) {
                    if (bVar.a(t)) {
                        cVar.a(bVar.f8209h);
                        bVar.a(cVar, t);
                    }
                }
                cVar.d();
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.a.u
    public final <T> t<T> a(com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        Class<? super T> cls = aVar.f8337b;
        if (Object.class.isAssignableFrom(cls)) {
            return new a(this.f8195a.a(aVar), a(fVar, aVar, cls));
        }
        return null;
    }
}
