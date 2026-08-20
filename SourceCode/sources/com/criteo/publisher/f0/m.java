package com.criteo.publisher.f0;

import com.criteo.publisher.f0.r;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.jvm.functions.Function0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FileMetricRepository.java */
/* loaded from: classes2.dex */
public class m extends r {

    /* renamed from: b  reason: collision with root package name */
    private final o f8812b;

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f8811a = com.criteo.publisher.logging.h.b(getClass());

    /* renamed from: c  reason: collision with root package name */
    private final ConcurrentMap<File, d0> f8813c = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(o oVar) {
        this.f8812b = oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.r
    public void a(String str, r.a aVar) {
        try {
            a(this.f8812b.a(str)).a(aVar);
        } catch (IOException e2) {
            this.f8811a.a("Error while updating metric", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.r
    public void a(String str, p pVar) {
        try {
            a(this.f8812b.a(str)).a(pVar);
        } catch (IOException e2) {
            this.f8811a.a("Error while moving metric", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.r
    public Collection<n> a() {
        Collection<File> b2 = this.f8812b.b();
        ArrayList arrayList = new ArrayList(b2.size());
        for (File file : b2) {
            try {
                arrayList.add(a(file).b());
            } catch (IOException e2) {
                this.f8811a.a("Error while reading metric", e2);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.r
    public int b() {
        int i = 0;
        for (File file : this.f8812b.b()) {
            i = (int) (i + file.length());
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f0.r
    public boolean a(String str) {
        return this.f8812b.b().contains(this.f8812b.a(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FileMetricRepository.java */
    /* loaded from: classes2.dex */
    public class a implements Function0<d0> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f8814a;

        a(File file) {
            this.f8814a = file;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public d0 invoke() {
            return m.this.f8812b.a(this.f8814a);
        }
    }

    private d0 a(File file) {
        return (d0) com.criteo.publisher.n0.m.a(this.f8813c, file, new a(file));
    }
}
