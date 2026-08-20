package com.unity3d.services.identifiers.installationid;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class c implements a {

    /* renamed from: a  reason: collision with root package name */
    public final Context f12283a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12284b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12285c;

    public c(Context context, String settingsFile, String key) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(settingsFile, "settingsFile");
        Intrinsics.checkNotNullParameter(key, "key");
        this.f12283a = context;
        this.f12284b = settingsFile;
        this.f12285c = key;
    }

    @Override // com.unity3d.services.identifiers.installationid.a
    public final String a() {
        String string = this.f12283a.getSharedPreferences(this.f12284b, 0).getString(this.f12285c, "");
        return string == null ? "" : string;
    }

    @Override // com.unity3d.services.identifiers.installationid.a
    public final void a(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        SharedPreferences.Editor edit = this.f12283a.getSharedPreferences(this.f12284b, 0).edit();
        edit.putString(this.f12285c, id);
        edit.apply();
    }
}
