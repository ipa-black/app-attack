package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1840rl;
import java.util.regex.Pattern;
/* renamed from: com.yandex.metrica.impl.ob.ok  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1767ok implements Cl {

    /* renamed from: a  reason: collision with root package name */
    private final Pattern f15348a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1767ok(Pattern pattern) {
        this.f15348a = pattern;
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public boolean a(Object obj) {
        return !this.f15348a.matcher((String) obj).matches();
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public C1840rl.b a() {
        return C1840rl.b.REGEXP_NOT_MATCHED;
    }
}
