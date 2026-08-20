package com.bykv.vk.openvk.preload.b;

import com.bykv.vk.openvk.preload.b.i;
import com.bykv.vk.openvk.preload.b.l;
import java.util.List;
/* compiled from: RetryBranchInterceptor.java */
/* loaded from: classes2.dex */
public abstract class j<IN, OUT> extends l<IN, OUT> {

    /* renamed from: h  reason: collision with root package name */
    private String f8425h;

    protected abstract String a(IN in);

    protected abstract String a(IN in, Throwable th, String str);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bykv.vk.openvk.preload.b.d
    public final Object a(b<OUT> bVar, IN in) throws Throwable {
        new m(bVar);
        this.f8425h = a((j<IN, OUT>) in);
        l.a aVar = this.f8427g.get(this.f8425h);
        while (aVar != null) {
            List<h> list = aVar.f8428a;
            try {
                Object a2 = c.a(list, bVar.f8421a, this).a((b) in);
                return !a(list) ? a2 : bVar.a((b<OUT>) a2);
            } catch (i.a e2) {
                Throwable cause = e2.getCause();
                new m(bVar);
                this.f8425h = a(in, cause, this.f8425h);
                aVar = this.f8427g.get(this.f8425h);
            } catch (Throwable th) {
                new m(bVar);
                this.f8425h = a(in, th, this.f8425h);
                aVar = this.f8427g.get(this.f8425h);
            }
        }
        throw new IllegalArgumentException("can not found branch，branch name is：" + this.f8425h);
    }
}
