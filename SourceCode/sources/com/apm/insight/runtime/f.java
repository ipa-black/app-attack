package com.apm.insight.runtime;

import com.apm.insight.entity.Header;
/* loaded from: classes.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static final f f1109b = new f() { // from class: com.apm.insight.runtime.f.1

        /* renamed from: a  reason: collision with root package name */
        Header f1111a = null;

        @Override // com.apm.insight.runtime.f
        public Object b(String str) {
            if (this.f1111a == null) {
                this.f1111a = Header.b(com.apm.insight.i.g());
            }
            return this.f1111a.f().opt(str);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private f f1110a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f() {
        this(f1109b);
    }

    f(f fVar) {
        this.f1110a = fVar;
    }

    public Object a(String str) {
        f fVar = this.f1110a;
        if (fVar != null) {
            return fVar.a(str);
        }
        return null;
    }

    public Object b(String str) {
        f fVar = this.f1110a;
        if (fVar != null) {
            return fVar.b(str);
        }
        return null;
    }
}
