package com.criteo.publisher.f0;

import android.content.Context;
import android.util.AtomicFile;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MetricDirectory.java */
/* loaded from: classes2.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private final Context f8816a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.n0.g f8817b;

    /* renamed from: c  reason: collision with root package name */
    private final q f8818c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Context context, com.criteo.publisher.n0.g gVar, q qVar) {
        this.f8816a = context;
        this.f8817b = gVar;
        this.f8818c = qVar;
    }

    /* compiled from: MetricDirectory.java */
    /* loaded from: classes2.dex */
    class a implements FilenameFilter {
        a(o oVar) {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.endsWith(".csm");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Collection<File> b() {
        File[] listFiles = a().listFiles(new a(this));
        if (listFiles == null) {
            return Collections.emptyList();
        }
        return Arrays.asList(listFiles);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public File a(String str) {
        return new File(a(), b(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0 a(File file) {
        return new d0(b(file), new AtomicFile(file), this.f8818c);
    }

    File a() {
        return this.f8816a.getDir(this.f8817b.e(), 0);
    }

    private String b(String str) {
        return str + ".csm";
    }

    private String b(File file) {
        String name = file.getName();
        return name.substring(0, name.length() - 4);
    }
}
