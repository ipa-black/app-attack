package com.bykv.vk.openvk.preload.b;

import com.bykv.vk.openvk.preload.b.i;
/* compiled from: RetryInterceptor.java */
/* loaded from: classes2.dex */
public abstract class k<IN, OUT> extends d<IN, OUT> {

    /* renamed from: g  reason: collision with root package name */
    protected IN f8426g;

    protected abstract boolean a(Throwable th);

    @Override // com.bykv.vk.openvk.preload.b.d
    public final Object a(b<OUT> bVar, IN in) throws Throwable {
        this.f8426g = in;
        try {
            return bVar.a((b<OUT>) a());
        } catch (i.a e2) {
            return a((b) bVar, e2.getCause());
        } catch (Throwable th) {
            return a((b) bVar, th);
        }
    }

    private Object a(b<OUT> bVar, Throwable th) throws Throwable {
        while (a(th)) {
            try {
                return bVar.a((b<OUT>) a());
            } catch (i.a e2) {
                th = e2.getCause();
            } catch (Throwable th2) {
                th = th2;
            }
        }
        throw th;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [IN, OUT] */
    protected OUT a() {
        return this.f8426g;
    }
}
