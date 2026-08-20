package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1840rl;
import java.util.regex.Pattern;
/* loaded from: classes5.dex */
public class Nk implements Cl {

    /* renamed from: a  reason: collision with root package name */
    private final Pattern f13556a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Nk(Pattern pattern) {
        this.f13556a = pattern;
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public boolean a(Object obj) {
        return this.f13556a.matcher((String) obj).matches();
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public C1840rl.b a() {
        return C1840rl.b.BAD_REGEXP_MATCHED;
    }
}
