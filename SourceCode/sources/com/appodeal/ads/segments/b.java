package com.appodeal.ads.segments;
/* loaded from: classes2.dex */
public enum b {
    /* JADX INFO: Fake field, exist only in values array */
    LESS("<", new c() { // from class: com.appodeal.ads.segments.b$$ExternalSyntheticLambda0
        @Override // com.appodeal.ads.segments.c
        public final boolean a(i iVar, Object obj) {
            return d.c(iVar, obj);
        }
    }),
    /* JADX INFO: Fake field, exist only in values array */
    LESS_EQUALS("<=", new c() { // from class: com.appodeal.ads.segments.b$$ExternalSyntheticLambda1
        @Override // com.appodeal.ads.segments.c
        public final boolean a(i iVar, Object obj) {
            return d.d(iVar, obj);
        }
    }),
    /* JADX INFO: Fake field, exist only in values array */
    EQUALS("==", new c() { // from class: com.appodeal.ads.segments.b$$ExternalSyntheticLambda2
        @Override // com.appodeal.ads.segments.c
        public final boolean a(i iVar, Object obj) {
            return d.a(iVar, obj);
        }
    }),
    /* JADX INFO: Fake field, exist only in values array */
    NOT_EQUALS("!=", new c() { // from class: com.appodeal.ads.segments.b$$ExternalSyntheticLambda3
        @Override // com.appodeal.ads.segments.c
        public final boolean a(i iVar, Object obj) {
            return b.a(iVar, obj);
        }
    }),
    /* JADX INFO: Fake field, exist only in values array */
    MORE_EQUALS(">=", new c() { // from class: com.appodeal.ads.segments.b$$ExternalSyntheticLambda4
        @Override // com.appodeal.ads.segments.c
        public final boolean a(i iVar, Object obj) {
            return d.g(iVar, obj);
        }
    }),
    /* JADX INFO: Fake field, exist only in values array */
    MORE(">", new c() { // from class: com.appodeal.ads.segments.b$$ExternalSyntheticLambda5
        @Override // com.appodeal.ads.segments.c
        public final boolean a(i iVar, Object obj) {
            return d.f(iVar, obj);
        }
    }),
    /* JADX INFO: Fake field, exist only in values array */
    IN("IN", new c() { // from class: com.appodeal.ads.segments.b$$ExternalSyntheticLambda6
        @Override // com.appodeal.ads.segments.c
        public final boolean a(i iVar, Object obj) {
            return d.b(iVar, obj);
        }
    }),
    /* JADX INFO: Fake field, exist only in values array */
    Modulo("%=", new c() { // from class: com.appodeal.ads.segments.b$$ExternalSyntheticLambda7
        @Override // com.appodeal.ads.segments.c
        public final boolean a(i iVar, Object obj) {
            return d.e(iVar, obj);
        }
    });
    

    /* renamed from: a  reason: collision with root package name */
    public final String f7498a;

    /* renamed from: b  reason: collision with root package name */
    public final c f7499b;

    b(String str, c cVar) {
        this.f7498a = str;
        this.f7499b = cVar;
    }

    public static b a(String str) {
        b[] values;
        for (b bVar : values()) {
            if (bVar.f7498a.equals(str)) {
                return bVar;
            }
        }
        return null;
    }

    public static /* synthetic */ boolean a(i iVar, Object obj) {
        return !d.a(iVar, obj);
    }
}
