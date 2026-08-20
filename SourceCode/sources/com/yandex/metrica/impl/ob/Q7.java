package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.io.File;
import java.io.FileNotFoundException;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Reflection;
/* loaded from: classes5.dex */
public final class Q7 implements InterfaceC1531f8 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13751a;

    /* renamed from: b  reason: collision with root package name */
    private final String f13752b;

    /* renamed from: c  reason: collision with root package name */
    private final B0 f13753c;

    public Q7(Context context, String str, B0 b0) {
        this.f13751a = context;
        this.f13752b = str;
        this.f13753c = b0;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1531f8
    public void a(String str) {
        try {
            File a2 = this.f13753c.a(this.f13751a, this.f13752b);
            if (a2 != null) {
                FilesKt.writeText$default(a2, str, null, 2, null);
            }
        } catch (FileNotFoundException unused) {
            ((C1739nh) C1764oh.a()).reportEvent("vital_data_provider_write_file_not_found", MapsKt.mapOf(TuplesKt.to("fileName", this.f13752b)));
        } catch (Throwable th) {
            ((C1739nh) C1764oh.a()).reportEvent("vital_data_provider_write_exception", MapsKt.mapOf(TuplesKt.to("fileName", this.f13752b), TuplesKt.to("exception", Reflection.getOrCreateKotlinClass(th.getClass()).getSimpleName())));
            ((C1739nh) C1764oh.a()).reportError("Error during writing file with name " + this.f13752b, th);
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1531f8
    public String c() {
        try {
            File a2 = this.f13753c.a(this.f13751a, this.f13752b);
            if (a2 != null) {
                return FilesKt.readText$default(a2, null, 1, null);
            }
            return null;
        } catch (FileNotFoundException unused) {
            ((C1739nh) C1764oh.a()).reportEvent("vital_data_provider_read_file_not_found", MapsKt.mapOf(TuplesKt.to("fileName", this.f13752b)));
            return null;
        } catch (Throwable th) {
            ((C1739nh) C1764oh.a()).reportEvent("vital_data_provider_read_exception", MapsKt.mapOf(TuplesKt.to("fileName", this.f13752b), TuplesKt.to("exception", Reflection.getOrCreateKotlinClass(th.getClass()).getSimpleName())));
            ((C1739nh) C1764oh.a()).reportError("Error during reading file with name " + this.f13752b, th);
            return null;
        }
    }
}
