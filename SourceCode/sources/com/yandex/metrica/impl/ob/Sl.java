package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Sl extends Vl {

    /* renamed from: c  reason: collision with root package name */
    private static final Sl f13915c = new Sl("");

    public Sl(String str) {
        super(str);
    }

    public static Sl a() {
        return f13915c;
    }

    @Override // com.yandex.metrica.coreutils.logger.BaseLogger
    public String getTag() {
        return "AppMetricaInternal";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yandex.metrica.coreutils.logger.BaseLogger
    public boolean shouldLog() {
        super.shouldLog();
        return false;
    }

    private Sl() {
        this("");
    }
}
