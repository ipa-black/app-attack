package com.yandex.metrica.impl.ob;

import com.yandex.metrica.DeferredDeeplinkListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.o0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1747o0 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f15293a;

    /* renamed from: b  reason: collision with root package name */
    private DeferredDeeplinkListener f15294b;

    /* renamed from: c  reason: collision with root package name */
    private DeferredDeeplinkParametersListener f15295c;

    /* renamed from: d  reason: collision with root package name */
    private C1722n0 f15296d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.o0$a */
    /* loaded from: classes5.dex */
    public enum a {
        NOT_A_FIRST_LAUNCH,
        PARSE_ERROR,
        NO_REFERRER
    }

    public C1747o0(boolean z) {
        this.f15293a = z;
    }

    public void a(C1722n0 c1722n0) {
        this.f15296d = c1722n0;
        a();
    }

    private void a(a aVar) {
        DeferredDeeplinkListener.Error error;
        C1722n0 c1722n0 = this.f15296d;
        String str = c1722n0 == null ? null : c1722n0.f15231c;
        DeferredDeeplinkListener deferredDeeplinkListener = this.f15294b;
        if (deferredDeeplinkListener != null) {
            int ordinal = aVar.ordinal();
            if (ordinal == 0) {
                error = DeferredDeeplinkListener.Error.NOT_A_FIRST_LAUNCH;
            } else if (ordinal == 1) {
                error = DeferredDeeplinkListener.Error.PARSE_ERROR;
            } else if (ordinal != 2) {
                error = DeferredDeeplinkListener.Error.UNKNOWN;
            } else {
                error = DeferredDeeplinkListener.Error.NO_REFERRER;
            }
            deferredDeeplinkListener.onError(error, str == null ? "" : str);
            this.f15294b = null;
        }
        a(aVar, str);
    }

    public void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        this.f15295c = deferredDeeplinkParametersListener;
        if (this.f15293a) {
            a(a.NOT_A_FIRST_LAUNCH);
        } else {
            a();
        }
    }

    public void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        this.f15294b = deferredDeeplinkListener;
        if (this.f15293a) {
            a(a.NOT_A_FIRST_LAUNCH);
        } else {
            a();
        }
    }

    private void a() {
        C1722n0 c1722n0 = this.f15296d;
        if (c1722n0 != null) {
            String str = c1722n0.f15230b;
            if (str != null) {
                DeferredDeeplinkListener deferredDeeplinkListener = this.f15294b;
                if (deferredDeeplinkListener != null) {
                    deferredDeeplinkListener.onDeeplinkLoaded(str);
                    this.f15294b = null;
                }
                if (!A2.b(this.f15296d.f15229a)) {
                    Map<String, String> map = this.f15296d.f15229a;
                    DeferredDeeplinkParametersListener deferredDeeplinkParametersListener = this.f15295c;
                    if (deferredDeeplinkParametersListener != null) {
                        deferredDeeplinkParametersListener.onParametersLoaded(map);
                        this.f15295c = null;
                        return;
                    }
                    return;
                }
                a(a.PARSE_ERROR, this.f15296d.f15231c);
            } else if (c1722n0.f15231c != null) {
                a(a.PARSE_ERROR);
            } else {
                a(a.NO_REFERRER);
            }
        }
    }

    private void a(a aVar, String str) {
        DeferredDeeplinkParametersListener.Error error;
        DeferredDeeplinkParametersListener deferredDeeplinkParametersListener = this.f15295c;
        if (deferredDeeplinkParametersListener != null) {
            int ordinal = aVar.ordinal();
            if (ordinal == 0) {
                error = DeferredDeeplinkParametersListener.Error.NOT_A_FIRST_LAUNCH;
            } else if (ordinal == 1) {
                error = DeferredDeeplinkParametersListener.Error.PARSE_ERROR;
            } else if (ordinal != 2) {
                error = DeferredDeeplinkParametersListener.Error.UNKNOWN;
            } else {
                error = DeferredDeeplinkParametersListener.Error.NO_REFERRER;
            }
            if (str == null) {
                str = "";
            }
            deferredDeeplinkParametersListener.onError(error, str);
            this.f15295c = null;
        }
    }
}
