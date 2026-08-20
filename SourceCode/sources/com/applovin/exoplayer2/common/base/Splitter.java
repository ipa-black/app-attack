package com.applovin.exoplayer2.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class Splitter {
    private final int limit;
    private final boolean omitEmptyStrings;
    private final b strategy;
    private final CharMatcher trimmer;

    /* loaded from: classes.dex */
    private static abstract class a extends com.applovin.exoplayer2.common.base.b<String> {

        /* renamed from: b  reason: collision with root package name */
        final CharSequence f1948b;

        /* renamed from: c  reason: collision with root package name */
        final CharMatcher f1949c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f1950d;

        /* renamed from: e  reason: collision with root package name */
        int f1951e = 0;

        /* renamed from: f  reason: collision with root package name */
        int f1952f;

        protected a(Splitter splitter, CharSequence charSequence) {
            this.f1949c = splitter.trimmer;
            this.f1950d = splitter.omitEmptyStrings;
            this.f1952f = splitter.limit;
            this.f1948b = charSequence;
        }

        abstract int a(int i);

        abstract int b(int i);

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
            if (r0 >= r1) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x003d, code lost:
            if (r6.f1949c.matches(r6.f1948b.charAt(r0)) == false) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x003f, code lost:
            r0 = r0 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0042, code lost:
            if (r1 <= r0) goto L46;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0052, code lost:
            if (r6.f1949c.matches(r6.f1948b.charAt(r1 - 1)) == false) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0054, code lost:
            r1 = r1 - 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0059, code lost:
            if (r6.f1950d == false) goto L45;
         */
        @Override // com.applovin.exoplayer2.common.base.b
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String a() {
            /*
                r6 = this;
            L0:
                int r0 = r6.f1951e
            L2:
                int r1 = r6.f1951e
                r2 = -1
                if (r1 == r2) goto L8e
                int r1 = r6.a(r1)
                if (r1 != r2) goto L16
                java.lang.CharSequence r1 = r6.f1948b
                int r1 = r1.length()
                r6.f1951e = r2
                goto L1c
            L16:
                int r3 = r6.b(r1)
                r6.f1951e = r3
            L1c:
                int r3 = r6.f1951e
                if (r3 != r0) goto L2f
                int r3 = r3 + 1
                r6.f1951e = r3
                java.lang.CharSequence r1 = r6.f1948b
                int r1 = r1.length()
                if (r3 <= r1) goto L2
                r6.f1951e = r2
                goto L2
            L2f:
                if (r0 >= r1) goto L42
                com.applovin.exoplayer2.common.base.CharMatcher r3 = r6.f1949c
                java.lang.CharSequence r4 = r6.f1948b
                char r4 = r4.charAt(r0)
                boolean r3 = r3.matches(r4)
                if (r3 == 0) goto L42
                int r0 = r0 + 1
                goto L2f
            L42:
                if (r1 <= r0) goto L57
                com.applovin.exoplayer2.common.base.CharMatcher r3 = r6.f1949c
                java.lang.CharSequence r4 = r6.f1948b
                int r5 = r1 + (-1)
                char r4 = r4.charAt(r5)
                boolean r3 = r3.matches(r4)
                if (r3 == 0) goto L57
                int r1 = r1 + (-1)
                goto L42
            L57:
                boolean r3 = r6.f1950d
                if (r3 == 0) goto L5e
                if (r0 != r1) goto L5e
                goto L0
            L5e:
                int r3 = r6.f1952f
                r4 = 1
                if (r3 != r4) goto L80
                java.lang.CharSequence r1 = r6.f1948b
                int r1 = r1.length()
                r6.f1951e = r2
            L6b:
                if (r1 <= r0) goto L83
                com.applovin.exoplayer2.common.base.CharMatcher r2 = r6.f1949c
                java.lang.CharSequence r3 = r6.f1948b
                int r4 = r1 + (-1)
                char r3 = r3.charAt(r4)
                boolean r2 = r2.matches(r3)
                if (r2 == 0) goto L83
                int r1 = r1 + (-1)
                goto L6b
            L80:
                int r3 = r3 - r4
                r6.f1952f = r3
            L83:
                java.lang.CharSequence r2 = r6.f1948b
                java.lang.CharSequence r0 = r2.subSequence(r0, r1)
                java.lang.String r0 = r0.toString()
                return r0
            L8e:
                java.lang.Object r0 = r6.b()
                java.lang.String r0 = (java.lang.String) r0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.common.base.Splitter.a.a():java.lang.String");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface b {
        Iterator<String> b(Splitter splitter, CharSequence charSequence);
    }

    private Splitter(b bVar) {
        this(bVar, false, CharMatcher.none(), Integer.MAX_VALUE);
    }

    private Splitter(b bVar, boolean z, CharMatcher charMatcher, int i) {
        this.strategy = bVar;
        this.omitEmptyStrings = z;
        this.trimmer = charMatcher;
        this.limit = i;
    }

    public static Splitter fixedLength(final int i) {
        Preconditions.checkArgument(i > 0, "The length may not be less than 1");
        return new Splitter(new b() { // from class: com.applovin.exoplayer2.common.base.Splitter.3
            @Override // com.applovin.exoplayer2.common.base.Splitter.b
            /* renamed from: a */
            public a b(Splitter splitter, CharSequence charSequence) {
                return new a(splitter, charSequence) { // from class: com.applovin.exoplayer2.common.base.Splitter.3.1
                    @Override // com.applovin.exoplayer2.common.base.Splitter.a
                    public int a(int i2) {
                        int i3 = i2 + i;
                        if (i3 < this.f1948b.length()) {
                            return i3;
                        }
                        return -1;
                    }

                    @Override // com.applovin.exoplayer2.common.base.Splitter.a
                    public int b(int i2) {
                        return i2;
                    }
                };
            }
        });
    }

    public static Splitter on(char c2) {
        return on(CharMatcher.is(c2));
    }

    public static Splitter on(final CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(new b() { // from class: com.applovin.exoplayer2.common.base.Splitter.1
            @Override // com.applovin.exoplayer2.common.base.Splitter.b
            /* renamed from: a */
            public a b(Splitter splitter, CharSequence charSequence) {
                return new a(splitter, charSequence) { // from class: com.applovin.exoplayer2.common.base.Splitter.1.1
                    @Override // com.applovin.exoplayer2.common.base.Splitter.a
                    int a(int i) {
                        return CharMatcher.this.indexIn(this.f1948b, i);
                    }

                    @Override // com.applovin.exoplayer2.common.base.Splitter.a
                    int b(int i) {
                        return i + 1;
                    }
                };
            }
        });
    }

    public static Splitter on(final String str) {
        Preconditions.checkArgument(str.length() != 0, "The separator may not be the empty string.");
        return str.length() == 1 ? on(str.charAt(0)) : new Splitter(new b() { // from class: com.applovin.exoplayer2.common.base.Splitter.2
            @Override // com.applovin.exoplayer2.common.base.Splitter.b
            /* renamed from: a */
            public a b(Splitter splitter, CharSequence charSequence) {
                return new a(splitter, charSequence) { // from class: com.applovin.exoplayer2.common.base.Splitter.2.1
                    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
                        r6 = r6 + 1;
                     */
                    @Override // com.applovin.exoplayer2.common.base.Splitter.a
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public int a(int r6) {
                        /*
                            r5 = this;
                            com.applovin.exoplayer2.common.base.Splitter$2 r0 = com.applovin.exoplayer2.common.base.Splitter.AnonymousClass2.this
                            java.lang.String r0 = r1
                            int r0 = r0.length()
                            java.lang.CharSequence r1 = r5.f1948b
                            int r1 = r1.length()
                            int r1 = r1 - r0
                        Lf:
                            if (r6 > r1) goto L2d
                            r2 = 0
                        L12:
                            if (r2 >= r0) goto L2c
                            java.lang.CharSequence r3 = r5.f1948b
                            int r4 = r2 + r6
                            char r3 = r3.charAt(r4)
                            com.applovin.exoplayer2.common.base.Splitter$2 r4 = com.applovin.exoplayer2.common.base.Splitter.AnonymousClass2.this
                            java.lang.String r4 = r1
                            char r4 = r4.charAt(r2)
                            if (r3 == r4) goto L29
                            int r6 = r6 + 1
                            goto Lf
                        L29:
                            int r2 = r2 + 1
                            goto L12
                        L2c:
                            return r6
                        L2d:
                            r6 = -1
                            return r6
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.common.base.Splitter.AnonymousClass2.AnonymousClass1.a(int):int");
                    }

                    @Override // com.applovin.exoplayer2.common.base.Splitter.a
                    public int b(int i) {
                        return i + str.length();
                    }
                };
            }
        });
    }

    private Iterator<String> splittingIterator(CharSequence charSequence) {
        return this.strategy.b(this, charSequence);
    }

    public Splitter limit(int i) {
        Preconditions.checkArgument(i > 0, "must be greater than zero: %s", i);
        return new Splitter(this.strategy, this.omitEmptyStrings, this.trimmer, i);
    }

    public Splitter omitEmptyStrings() {
        return new Splitter(this.strategy, true, this.trimmer, this.limit);
    }

    public List<String> splitToList(CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        Iterator<String> splittingIterator = splittingIterator(charSequence);
        ArrayList arrayList = new ArrayList();
        while (splittingIterator.hasNext()) {
            arrayList.add(splittingIterator.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Splitter trimResults() {
        return trimResults(CharMatcher.whitespace());
    }

    public Splitter trimResults(CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(this.strategy, this.omitEmptyStrings, charMatcher, this.limit);
    }
}
