package com.bykv.vk.openvk.preload.b;

import com.bykv.vk.openvk.preload.b.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: SubBranchInterceptor.java */
/* loaded from: classes2.dex */
public abstract class l<IN, OUT> extends d<IN, OUT> {

    /* renamed from: g  reason: collision with root package name */
    Map<String, a> f8427g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(List<h> list) {
        return !list.isEmpty() && list.get(list.size() - 1).f8415a == f.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bykv.vk.openvk.preload.b.d
    public final void a(Object... objArr) {
        Object obj;
        super.a(objArr);
        if (objArr == null || objArr.length != 1 || (obj = objArr[0]) == null) {
            throw new IllegalStateException("args error");
        }
        try {
            this.f8427g = (Map) obj;
        } catch (ClassCastException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    /* compiled from: SubBranchInterceptor.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private Map<String, a> f8429a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private com.bykv.vk.openvk.preload.b.b.a f8430b;

        public final a a(String str) {
            if (this.f8429a.containsKey(str)) {
                throw new IllegalArgumentException("duplicated branch name");
            }
            a aVar = new a();
            this.f8429a.put(str, aVar);
            return aVar;
        }

        public final h a(Class<? extends l> cls) {
            h.a a2 = new h.a().a(cls);
            a2.f8420c = new Object[]{this.f8429a};
            a2.f8419b = this.f8430b;
            return a2.a();
        }
    }

    /* compiled from: SubBranchInterceptor.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        List<h> f8428a = new ArrayList();

        public final a a(h hVar) {
            this.f8428a.add(hVar);
            return this;
        }

        public final a a(List<h> list) {
            this.f8428a.addAll(list);
            return this;
        }
    }
}
